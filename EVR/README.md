# EVR — Evidence Records

The evidence layer of the Grand Theory model: fully worked case files that
ground inventory entries (DPI patterns, CCFI chains) and support promotion
decisions under MGA-T.

**EVR is the layer formerly referred to ambiguously as "OCF" in process
rules.** `OCF/` contains operators and control-surface definitions; it is not
evidence. (Resolved 2026-06-12; see MGA.RULES changelog v0.3.2.)

## Rules

- One file per case: `EVR/EVR-NNNN.md` (4-digit, sequential), registered in
  `evr.yaml` in the same commit.
- A case is an application of MGA-A or MGA-B to a real, sourced situation —
  not a hypothetical, not an illustration.
- Sources must be independent of the model (primary documents, datasets,
  reporting, literature). Conversational derivation is not a source.
- Promotion support: an inventory entry's `observed_in` list cites EVR ids.
  ≥3 independent EVRs are required for `promoted` status (MGA-T gate;
  enforced by validator V9 once `STRICT_PROMOTION` is flipped).
- Pre-transfer recovery: cases reconstructed from the ChatGPT-era export are
  marked `provenance: recovered (pre-transfer)` with the conversation date,
  and count toward promotion only after their sources are re-verified.

## Template

See `EVR/evr_template.md`.
