# CLAUDE.md — Operating Contract for the Grand Theory Model Repository

This repository is the **sole canonical store** of the Grand Theory coordination
model. Any agent session (Cowork, Claude Code, chat-connector) operating on this
repo follows this contract. The OneDrive `GrandTheory-Cowork` workspace is a
session surface only; nothing canonical lives there.

## Orientation order

1. `README.md` — model overview and **Epistemic Status** (binding constraints).
2. `COR.yaml` — the index of record. Every canonical object, its path, status,
   and `empirical_linkage`. Navigate from here, not from directory listings.
3. `MGA/MGA.RULES.yaml` — the four analytical processes (A diagnosis,
   B critique, C intervention design, T theory evolution) and their gates.
4. Inventories: `DPI/dpi.yaml`, `CCFI/ccfi.yaml`, `IBR/ibr.yaml`.
5. Evidence layer: `EVR/` (Evidence Records). `OCF/` is **operators**, never
   evidence.

## Hard constraints

- **Descriptive, not predictive.** The formalism is logical pseudocode. Do not
  operationalize, estimate, fit, or "complete" the mathematics. A change of
  formalism ambition is an MGA-T decision for the maintainer, not a session
  initiative.
- **No new primitives.** Do not add metrics, states, bounds, fields, axes,
  objects, or operators in the course of analysis. Gaps are routed to MGA-T as
  proposals (open a GitHub issue labeled `mga-t`).
- **Canonical files are read-only in analysis sessions.** MGA-A/B/C runs read
  canonical objects and write only to `EVR/`, working analyses, or issues.
  Canonical edits happen only in explicit theory-change sessions with MGA-T
  authorization from the maintainer.
- **Subcomponents stay inside parents.** κ_load, θ_adapt, φ_sac, etc. are not
  standalone objects and are never registered or referenced independently.
- **Evidence discipline.** Claims at confidence "high" require EVR support.
  Promotion to `promoted` status requires ≥3 independent EVRs (MGA-T gate).
  Entries marked `evidence_basis: pre-transfer` are grandfathered pending
  re-validation; do not extend them with new conclusions until re-validated.
- **HEXACO/IBR caution.** Basin personality profiles are population-level
  tendencies with contested effect sizes, pending the AXIS foundations rebuild.
  Never apply them to individuals; never treat them as structural fact.

## Mechanical rules

- Before any commit: `python tools/validate_model.py --root .` and
  `python tools/cor_lint.py --root . --cor COR.yaml --check-paths` must both
  pass. CI enforces this, but do not rely on CI to catch what you can catch
  locally.
- All changes go through branches and PRs. PR descriptions are decision
  records: state what changed, why, and which MGA process authorized it.
- Registry first: a new file is added to `COR.yaml` (or the relevant inventory)
  in the same commit that creates it. The validator enforces both directions.
- YAML: spaces only (no tabs), 2-space indent, entries inside their lists.
- Do not edit `*.WORKING.md` generated views by hand except to flag unresolved
  references; regeneration tooling will eventually own them.

## Context budget

Do not bulk-load the corpus. Load `COR.yaml` + the specific objects the task
requires. For broad tasks, prefer grep/targeted reads over directory sweeps.
When pack generation exists (`packs/`), load the digest pack instead of raw
objects.

## Session outputs

- Worked analyses → `EVR/` (as Evidence Records) or a working-analysis file,
  never inline-only.
- Open questions, anomalies, refinement signals → GitHub issues
  (labels: `mga-t`, `evidence`, `integrity`).
- Never leave conclusions solely in conversation history. That is how the
  pre-transfer evidence was lost.
