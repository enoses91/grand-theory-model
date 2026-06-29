# platform/ — Engine, Packs, and Program (design drafts)

**What this is.** Design documentation for the *analysis platform* built on top of the Grand Theory model — the domain-independent completeness-and-provenance **engine**, its swappable domain **packs**, the domain-screening **rubric**, the **research program** that validates the design, and the **claims-vs-evidence** register.

**What this is NOT.** This folder is *not* model content. The model's object directories (`AXIS/`, `BOUNDS/`, `COR/`, `DPI/`, `FIELDS/`, `IBR/`, `MGA/`, `OCF/`, `RLM/`, …) remain the canonical Grand Theory model. These documents describe a *system that uses* the model as one of its domain packs. They are deliberately lowercase-foldered to distinguish them from the ALL-CAPS model directories, and they are **excluded from model validation** (their embedded YAML is illustrative, not model state).

**IP-boundary note (dated intent).** The reusable **engine** is intended to be held as a **separate asset** from the Grand Theory model, which is the originating *commons/predicate* (non-commercial by nature). Commercial value lives only in `engine × domain-pack-with-an-accountable-buyer`, never in the engine or the commons alone. These drafts are co-located here for convenience during design; the intent (recorded here as of 2026-06-28) is that the engine/platform may later be **extracted into its own repository** to preserve that separation, and that the defensible IP is the *specific mechanisms* (applicability-scoping, boundary-sensitivity, coverage-diff-with-provenance, engine/pack independence, dependency-impact analysis), not the concept. Counsel review (A.J. Bahou) pending; this is a third IP track distinct from the PG security provisional (Family A) and the founder-platform mechanisms.

## Contents

| File | Purpose |
|---|---|
| `UNIFIED_PLATFORM_ARCHITECTURE.md` | The four-layer architecture (engine / meta-ontology / pack / corpus), invariants, build stack, the three packs (Grand Theory, Founder Platform, Mathematical-Physics stub), phasing, risk register, decision log. |
| `DOMAIN_SCREENING_RUBRIC.md` | The two-predicate screen (fit × commercial) for deciding which domains become packs; capacity-gap, buyer-shape, coverage-spectrum, time-budget, and decision-series-interdependence criteria. Machine-checkable YAML schema. |
| `RESEARCH_PROGRAM.md` | The program to validate/falsify the provisional decisions; literature grounding; the three tensions (NDM, ACH-ghost, human-AI-combination); efficacy experiments incl. cross-decision coherence and rework-avoidance; kill criteria. |
| `CLAIMS_VS_EVIDENCE.md` | Standing register mapping every load-bearing claim → supporting + disconfirming evidence → status/confidence → specific Perplexity verification tasks. Living document. |

## Status
All four are **design drafts**, not specifications-of-record. Claim discipline throughout: `[F]` fact · `[I]` inference · `[A]` assumption · `[R]` recommendation. Cross-referenced to each other; intended to evolve together.
