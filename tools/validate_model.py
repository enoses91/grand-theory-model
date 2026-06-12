#!/usr/bin/env python3
"""
Grand Theory model validator — mechanical coherence gate.

Complements tools/cor_lint.py (COR.* reference resolution, legacy-ID hygiene).
This validator enforces:

  V1  YAML validity        — all inventory YAML files parse; no tab characters.
  V2  Registry -> disk     — every COR.yaml object path exists on disk.
  V3  Disk -> registry     — every canonical-layer .md file is registered
                             (README/WORKING/generated views excluded).
  V4  Uniqueness           — no duplicate object_ids or duplicate paths in COR.yaml.
  V5  Required fields      — every registry object has object_id, path, kind,
                             status, empirical_linkage.
  V6  Enums                — status in {canonical, working, provisional, deprecated};
                             empirical_linkage in {linked, linkable, structural};
                             inventory entry status in {working, candidate, promoted, retired};
                             confidence in {low, medium, high}.
  V7  Inventory schemas    — DPI/CCFI/IBR entries carry their declared required_fields;
                             entry ids unique and well-formed (DP-/CCF-/IBR- + 4 digits).
  V8  Acronym hygiene      — the token "OCF" must not be used in an evidence sense
                             (heuristic: "OCF" within 40 chars of "evidence"/"case file").
  V9  Promotion provenance — any inventory entry with status "promoted" must carry
                             either >=3 EVR references or an explicit
                             "evidence_basis: pre-transfer" marker. (WARN until the
                             EVR layer exists; flip STRICT_PROMOTION to True then.)

Exit codes: 0 clean, 1 errors found, 2 runtime/config failure.
Usage: python tools/validate_model.py [--root .]
"""

import argparse
import os
import re
import sys

try:
    import yaml
except ImportError:
    print("FATAL: pyyaml required (pip install pyyaml)")
    sys.exit(2)

STRICT_PROMOTION = False  # flip to True once the EVR layer is populated

CANONICAL_DIRS = ["AXIS", "BOUNDS", "COR", "FIELDS", "MEASUREMENT", "OBJECT", "OCF", "RLM"]
EXCLUDE_BASENAMES = {"README.md"}
EXCLUDE_PATTERNS = [re.compile(r".*\.WORKING\.md$")]

YAML_FILES = ["COR.yaml", "MGA/MGA.RULES.yaml", "CCFI/ccfi.yaml", "DPI/dpi.yaml", "IBR/ibr.yaml"]

REG_STATUS = {"canonical", "working", "provisional", "deprecated"}
LINKAGE = {"linked", "linkable", "structural"}
INV_STATUS = {"working", "candidate", "promoted", "retired"}
CONFIDENCE = {"low", "medium", "high"}

errors, warnings = [], []


def err(msg):
    errors.append(msg)


def warn(msg):
    warnings.append(msg)


def load_yaml(path):
    with open(path, encoding="utf-8") as f:
        return yaml.safe_load(f)


def v1_yaml_validity(root):
    docs = {}
    for rel in YAML_FILES:
        p = os.path.join(root, rel)
        if not os.path.exists(p):
            err(f"V1: missing YAML file: {rel}")
            continue
        raw = open(p, encoding="utf-8").read()
        for i, line in enumerate(raw.split("\n"), 1):
            if "\t" in line:
                err(f"V1: tab character in {rel}:{i}")
        try:
            docs[rel] = load_yaml(p)
        except yaml.YAMLError as e:
            err(f"V1: YAML parse failure in {rel}: {str(e).splitlines()[0]}")
    return docs


def v2_v5_registry(root, cor):
    objs = cor.get("objects", [])
    ids, paths = {}, {}
    for o in objs:
        oid = o.get("object_id", "<missing>")
        for field in ("object_id", "path", "kind", "status", "empirical_linkage"):
            if field not in o or o[field] in (None, ""):
                err(f"V5: {oid}: missing required field '{field}'")
        p = o.get("path", "")
        if p and not os.path.exists(os.path.join(root, p)):
            err(f"V2: {oid}: path does not exist on disk: {p}")
        if oid in ids:
            err(f"V4: duplicate object_id: {oid}")
        ids[oid] = True
        if p in paths:
            err(f"V4: duplicate path in registry: {p} ({paths[p]} and {oid})")
        paths[p] = oid
        if o.get("status") not in REG_STATUS:
            err(f"V6: {oid}: invalid status '{o.get('status')}'")
        if o.get("empirical_linkage") not in LINKAGE:
            err(f"V6: {oid}: invalid empirical_linkage '{o.get('empirical_linkage')}'")
    return set(paths.keys())


def v3_disk_to_registry(root, reg_paths):
    for d in CANONICAL_DIRS:
        full = os.path.join(root, d)
        if not os.path.isdir(full):
            continue
        for fn in sorted(os.listdir(full)):
            if not fn.endswith(".md") or fn in EXCLUDE_BASENAMES:
                continue
            if any(pat.match(fn) for pat in EXCLUDE_PATTERNS):
                continue
            rel = f"{d}/{fn}"
            if rel not in reg_paths:
                err(f"V3: unregistered canonical file: {rel}")


def v7_inventories(docs):
    specs = [
        ("DPI/dpi.yaml", "dpi", r"^DP-\d{4}$"),
        ("CCFI/ccfi.yaml", "ccfi", r"^CCF-\d{4}$"),
        ("IBR/ibr.yaml", "ideological_basin_register", r"^IBR-\d{4}$"),
    ]
    for rel, key, id_pat in specs:
        doc = docs.get(rel)
        if not doc:
            continue
        body = doc.get(key, {})
        meta = body.get("meta", {})
        required = (meta.get("required_fields")
                    or body.get("entry_schema", {}).get("required_fields")
                    or [])
        entries = body.get("entries", [])
        if not entries:
            warn(f"V7: {rel}: no entries found under '{key}.entries'")
        seen = set()
        for e in entries:
            eid = e.get("id", "<missing>")
            if not re.match(id_pat, str(eid)):
                err(f"V7: {rel}: malformed entry id '{eid}'")
            if eid in seen:
                err(f"V7: {rel}: duplicate entry id '{eid}'")
            seen.add(eid)
            for fld in required:
                if fld == "id":
                    continue
                if fld not in e:
                    err(f"V7: {rel}: {eid}: missing required field '{fld}'")
            if "status" in e and e["status"] not in INV_STATUS:
                err(f"V6: {rel}: {eid}: invalid status '{e['status']}'")
            if "confidence" in e and e["confidence"] not in CONFIDENCE:
                err(f"V6: {rel}: {eid}: invalid confidence '{e['confidence']}'")


def v8_acronym_hygiene(root):
    pat = re.compile(r"OCF.{0,40}?(evidence|case file)|"
                     r"(evidence|case file).{0,40}?OCF", re.IGNORECASE)
    for rel in YAML_FILES + ["README.md"]:
        p = os.path.join(root, rel)
        if not os.path.exists(p):
            continue
        for i, line in enumerate(open(p, encoding="utf-8"), 1):
            if ("formerly ambiguously" in line or "Operators & Control" in line
                    or "Acronym disambiguation" in line):
                continue
            if pat.search(line):
                err(f"V8: evidence-sense use of 'OCF' in {rel}:{i}: {line.strip()[:90]}")


def v9_promotion_provenance(docs):
    for rel, key in [("DPI/dpi.yaml", "dpi"), ("CCFI/ccfi.yaml", "ccfi")]:
        doc = docs.get(rel)
        if not doc:
            continue
        for e in doc.get(key, {}).get("entries", []):
            if e.get("status") != "promoted":
                continue
            evr_refs = [x for x in (e.get("observed_in") or []) if "EVR" in str(x)]
            pre_transfer = str(e.get("evidence_basis", "")).startswith("pre-transfer")
            if len(evr_refs) >= 3 or pre_transfer:
                continue
            msg = (f"V9: {rel}: {e.get('id')}: status 'promoted' without >=3 EVR refs "
                   f"or evidence_basis: pre-transfer marker")
            (err if STRICT_PROMOTION else warn)(msg)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--root", default=".")
    args = ap.parse_args()
    root = args.root

    docs = v1_yaml_validity(root)
    cor = docs.get("COR.yaml")
    if cor:
        reg_paths = v2_v5_registry(root, cor)
        v3_disk_to_registry(root, reg_paths)
    v7_inventories(docs)
    v8_acronym_hygiene(root)
    v9_promotion_provenance(docs)

    for w in warnings:
        print(f"WARN  {w}")
    for e in errors:
        print(f"ERROR {e}")
    print(f"\nvalidate_model: {len(errors)} error(s), {len(warnings)} warning(s)")
    sys.exit(1 if errors else 0)


if __name__ == "__main__":
    main()
