#!/usr/bin/env python3
"""
Grand Theory COR lint (Phase 1 + 1.5)

Phase 1 (strict, mechanical):
1) Parse COR.yaml (Canonical Object Registry) and build the authoritative set of object_ids
   (NOTE: registry may include non-COR ids like BOUNDS.*).
2) Walk the repo and find references of the form: COR.<TOKEN>
   (TOKEN is UPPERCASE / digits / underscore / dots).
3) Fail if any referenced COR.<TOKEN> is not present in COR.yaml.
4) (Optional) Fail if any COR.yaml entry path points to a non-existent file on disk.

Phase 1.5 (hygiene gate):
5) Fail if any legacy identifiers of the form:
      O.1.(METRIC|STATE|FIELD).<TOKEN>
   appear anywhere under ./COR/

What this intentionally does NOT do (yet):
- No type checking (metric vs state vs field) unless you add type fields to COR.yaml.
- No auto-fixes.
- No alias guessing.

Usage:
  python tools/cor_lint.py --root . --cor COR.yaml --check-paths

Exit codes:
  0 = clean
  1 = lint errors
  2 = configuration/runtime failure (e.g., missing dependency, unreadable registry)
"""

from __future__ import annotations

import argparse
import re
import sys
from pathlib import Path

try:
    import yaml  # pip install pyyaml
except ImportError:
    print("ERROR: Missing dependency: pyyaml. Install with: python -m pip install pyyaml", file=sys.stderr)
    sys.exit(2)

# Matches canonical COR references like:
#   COR.PHI
#   COR.STATE.G
#   COR.OPERATOR.MEASUREMENT
#
# Restrict token chars to uppercase / digits / underscore / dot
# so "COR.yaml" won't match.
COR_REF_RE = re.compile(r"\bCOR\.[A-Z0-9_]+(?:\.[A-Z0-9_]+)*\b")

# Legacy namespace to permanently ban inside COR/ only
LEGACY_RE = re.compile(r"\bO\.1\.(?:METRIC|STATE|FIELD)\.[A-Z0-9_]+(?:\.[A-Z0-9_]+)*\b")

DEFAULT_INCLUDE_EXTS = {".md", ".yaml", ".yml"}


def _read_text(path: Path) -> str:
    return path.read_text(encoding="utf-8", errors="replace")


def load_registry(reg_path: Path) -> tuple[set[str], list[dict]]:
    """
    Loads the canonical registry file (COR.yaml) which may contain:
      - COR.* objects
      - non-COR objects (e.g., BOUNDS.*) that are still canonical

    Returns:
      - registry_ids: set[str] of all object_id values in the registry
      - normalized_entries: list[dict] entries with keys {object_id, path}
    """
    if not reg_path.exists():
        raise FileNotFoundError(f"Registry not found: {reg_path}")

    data = yaml.safe_load(_read_text(reg_path))
    if data is None:
        raise ValueError(f"Registry is empty: {reg_path}")

    # Accept:
    #  A) top-level list: [{object_id: ..., path: ...}, ...]
    #  B) mapping with list under one of common keys: {objects:[...]} etc.
    if isinstance(data, list):
        entries = data
    elif isinstance(data, dict):
        for key in ("objects", "registry", "entries"):
            if key in data and isinstance(data[key], list):
                entries = data[key]
                break
        else:
            raise ValueError(
                "Unrecognized registry structure. Expected:\n"
                "  - a top-level list of entries, OR\n"
                "  - a dict containing one of ['objects','registry','entries'] as a list.\n"
                f"Got keys: {list(data.keys())}"
            )
    else:
        raise ValueError(f"Unrecognized registry structure type: {type(data)}")

    registry_ids: set[str] = set()
    normalized_entries: list[dict] = []

    for i, e in enumerate(entries):
        if not isinstance(e, dict):
            raise ValueError(f"Invalid registry entry at index {i}: expected dict, got {type(e)}")

        oid = e.get("object_id") or e.get("id") or e.get("object")
        path = e.get("path") or e.get("file") or e.get("filepath")

        if not oid:
            raise ValueError(f"Missing object_id in registry entry at index {i}: {e}")
        if not isinstance(oid, str):
            raise ValueError(f"object_id must be a string at index {i}: {e}")

        oid = oid.strip()
        registry_ids.add(oid)
        normalized_entries.append({"object_id": oid, "path": path})

    return registry_ids, normalized_entries


def iter_repo_files(root: Path, exclude_files: set[Path], include_exts: set[str]) -> list[Path]:
    files: list[Path] = []
    for p in root.rglob("*"):
        if not p.is_file():
            continue
        if p in exclude_files:
            continue
        if p.suffix.lower() not in include_exts:
            continue
        files.append(p)
    return files


def _is_under(path: Path, parent: Path) -> bool:
    try:
        return path.resolve().is_relative_to(parent.resolve())
    except Exception:
        try:
            path.resolve().relative_to(parent.resolve())
            return True
        except Exception:
            return False


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--root", default=".", help="Repo root directory")
    ap.add_argument("--cor", default="COR.yaml", help="Path to COR registry yaml (relative to root or absolute)")
    ap.add_argument(
        "--include-exts",
        default=",".join(sorted(DEFAULT_INCLUDE_EXTS)),
        help="Comma-separated extensions to scan (default: .md,.yaml,.yml)",
    )
    ap.add_argument("--check-paths", action="store_true", help="Also verify that registry entry paths exist on disk")
    ap.add_argument(
        "--disable-legacy-check",
        action="store_true",
        help="Disable Phase 1.5 legacy O.1.* check under ./COR (not recommended)",
    )
    args = ap.parse_args()

    root = Path(args.root).resolve()
    reg_path = (root / args.cor).resolve() if not Path(args.cor).is_absolute() else Path(args.cor).resolve()

    include_exts = {e.strip().lower() for e in args.include_exts.split(",") if e.strip()}
    if not include_exts:
        print("ERROR: --include-exts resolved to empty set", file=sys.stderr)
        return 2

    # Load registry (COR.yaml)
    try:
        registry_ids, reg_entries = load_registry(reg_path)
    except Exception as ex:
        print(f"ERROR: Failed to load COR registry: {ex}", file=sys.stderr)
        return 2

    # Exclude registry file itself from scan
    exclude_files = {reg_path}

    # Scan repo
    files = iter_repo_files(root, exclude_files=exclude_files, include_exts=include_exts)

    found_refs: dict[str, list[str]] = {}   # COR.* ref -> [relative file paths]
    legacy_hits: dict[str, list[str]] = {}  # O.1.* legacy -> [relative file paths]
    read_errors: list[str] = []

    cor_dir = root / "COR"

    for f in files:
        try:
            text = _read_text(f)
        except Exception as ex:
            read_errors.append(f"{f}::{ex}")
            continue

        # Phase 1: collect COR.* references
        for r in set(COR_REF_RE.findall(text)):
            found_refs.setdefault(r, []).append(str(f.relative_to(root)))

        # Phase 1.5: forbid legacy O.1.* identifiers inside COR/
        if not args.disable_legacy_check and cor_dir.exists() and _is_under(f, cor_dir):
            for lh in set(LEGACY_RE.findall(text)):
                legacy_hits.setdefault(lh, []).append(str(f.relative_to(root)))

    # Validate: every referenced COR.* must be declared in registry_ids
    unknown = {r for r in found_refs.keys() if r not in registry_ids}

    # Optional: validate registry paths exist
    missing_paths: list[str] = []
    if args.check_paths:
        for e in reg_entries:
            rel = e.get("path")
            if not rel:
                continue
            p = (root / rel).resolve()
            if not p.exists():
                missing_paths.append(f"{e['object_id']} -> {rel}")

    # Report
    errors = 0

    if read_errors:
        errors += 1
        print("ERROR: File read errors encountered:", file=sys.stderr)
        for r in sorted(read_errors):
            print(f"  {r}", file=sys.stderr)

    if unknown:
        errors += 1
        print("ERROR: Unknown COR object references (not present in COR.yaml):", file=sys.stderr)
        for r in sorted(unknown):
            print(f"  {r}", file=sys.stderr)
            for where in sorted(found_refs.get(r, [])):
                print(f"    - {where}", file=sys.stderr)

    if legacy_hits:
        errors += 1
        print("ERROR: Legacy O.1.* identifiers found inside COR/ (must be removed):", file=sys.stderr)
        for lh in sorted(legacy_hits):
            print(f"  {lh}", file=sys.stderr)
            for where in sorted(legacy_hits.get(lh, [])):
                print(f"    - {where}", file=sys.stderr)

    if missing_paths:
        errors += 1
        print("ERROR: COR.yaml entries with missing file paths:", file=sys.stderr)
        for mp in sorted(missing_paths):
            print(f"  {mp}", file=sys.stderr)

    if errors == 0:
        print(
            "OK: COR lint clean. "
            f"Registry objects: {len(registry_ids)} | Scanned files: {len(files)} | COR refs found: {len(found_refs)}"
        )
        return 0

    print(f"FAIL: COR lint found {errors} error class(es).", file=sys.stderr)
    return 1


if __name__ == "__main__":
    raise SystemExit(main())
