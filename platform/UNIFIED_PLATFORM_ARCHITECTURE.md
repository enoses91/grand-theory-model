# Unified Analysis Platform — Phased Architecture

**Status:** design draft · **Date:** 2026-06-28 · **Owner:** Eric Enos
**Scope:** one domain-independent completeness-and-provenance engine, two production domain packs (Grand Theory, Founder Platform), one stub pack (Mathematical Physics).
**Claim discipline:** statements are tagged `[F]` fact, `[I]` inference, `[A]` assumption, `[R]` recommendation. Conflicts are surfaced, not silently reconciled.

---

## 0. Purpose and the one-sentence thesis

The platform externalizes the **dimensional-integration and completeness-checking** function that previously required a large multi-specialty team, so a solo analyst (or very small team) can frame, hold, and audit a cross-domain problem in its full dimensionality. `[I]`

It does **not** replace domain expertise. It replaces a team's *integration and coverage* function — forcing the full applicable dimension set into frame, measuring what a given analysis omitted, and stress-testing whether conclusions survive reframing — while flagging where depth is missing rather than supplying it. `[I]`

The strongest defensible formulation: the system restores the ability to **articulate** wicked, cross-domain problems in full dimensionality, which the deepening of every specialty has been quietly removing. `[I]`

**Unit of analysis: the decision-*series*, not the decision.** The system does not primarily augment a single isolated choice; it augments a **long, interdependent series of decisions** in which early commitments constrain later options. Almost the entire decision-support literature and market (ACH, NDM, decision-intelligence platforms, the human-AI-combination studies) evaluates the *atomic* decision and therefore cannot see the dominant failure mode of a series: **drift** — a later decision silently contradicting an assumption made earlier, a dimension in-frame early dropped later, a boundary chosen for one decision inconsistent with another. The capacity gap is most acute *across the series*, because no human holds the full dependency graph of a multi-month decision program in working memory — Halford's limit applied across time, not only across dimensions. The "team you don't have" provides, above all, **continuity of frame**: remembering why decision #2 went the way it did when making decision #9. This is the primitive the system uniquely occupies, and it is the reason the governance spine (canonical/derived, provenance edges, propose-vs-canonical gate, refinement-signal loop) is right-sized: those are **decision-series-coherence** mechanisms, not single-analysis features. `[I]`

### 0.1 Market position — structural analogy, different primitive

The platform shape is analogous to **Palantir Foundry** and **Anduril Lattice**: a horizontal substrate that collapses the build cost of vertical applications, so the owner ships domain solutions faster than competitors who must rebuild the whole stack each time. The engine is the durable asset; the packs are the expanding surface; value accrues to the substrate across many deployments. `[I]`

**The analogy holds on structure, breaks on primitive.** `[I]`
- *Foundry / Lattice* are **integrative** substrates: fuse heterogeneous data/sensors into a coherent operational picture and act on it. They tell you *what is*.
- *This engine* is **interrogative**: examine a single analysis for what it omitted — completeness, not integration. It tells you *what is missing from someone's account of what is*.
- Consequence: this is **not** a Foundry competitor; it could sit *on top of* a Foundry-class integration layer (that gives the integrated picture; this checks the analysis built on it). `[I]`

**Cautions (do not import Foundry's assumptions wholesale):** `[R]`
1. "Platform" is earned only when **two packs run on an unchanged engine** (Phase 3 falsification test). Until then it is a product with platform *structure*, not proven platform *value*. State it as aspiration, never assertion.
2. Foundry/Lattice are heavy, capital-intensive, enterprise/government-sales businesses. The wedge here is the **under-resourced decision-maker** (see rubric capacity-gap), the inverse of whale-hunting GTM. The lighter primitive should not inherit the heavy motion by analogy.
3. Per-pack competition is **fragmented single-vertical point solutions**, not platforms — which is exactly the platform wedge (others built the whole stack; you ship the vertical as a pack on a reusable engine).

---

## 1. Architectural invariants (the non-negotiables)

These are the load-bearing rules. Violating any of them collapses a core property of the system. `[R]`

1. **Files are canonical; the graph is a derived projection.** Git-versioned YAML/Markdown is the source of truth and the audit/governance surface. The graph and vector indices are rebuildable caches generated from files. Build direction is always files → indices, never the reverse. `[R]`
2. **Engine is domain-independent; packs are domain-specific.** The operations (scope, extract, diff, boundary-test, provenance) never mention a domain. All domain content lives in swappable packs. If a second pack ever forces an engine change, the seam was wrong. `[R]`
3. **Ingestion proposes; only gated MGA-T sessions write canonical.** Corpus and analysis flow in freely and may *propose* model changes (issues, attached evidence), but a human-authorized theory-change session is the only path that mutates the canonical model. This is what keeps a large noisy corpus from eroding a small high-integrity model. `[R]`
4. **Similarity ≠ applicability ≠ evidence.** Vector proximity proposes candidates; the applicability engine determines what is in-frame; the MGA process determines evidential status. These are three distinct edge classes and must never collapse. `[R]`
5. **Retrieval order is a correctness property.** Frame is set from the model and its grounded bases *first*; corpus is consulted *second*, as comparison only, and is structurally barred from defining the frame. Reversing this inherits the literature's collective blind spots. `[R]`
6. **The model declares its own basis in every analysis.** The frame is a position, not a view from nowhere. Every run opens by stating the model's own commitments as inspectable — never as self-evidently neutral. `[R]`
7. **Completeness claims are bounded and reproducible.** Output is "the frame I can defend, and where I am uncertain it is complete," never a bare "you missed X." No frame is provably exhaustive (the safety-engineering lesson). `[R]`
8. **Depend on interfaces, not engines.** Every third-party graph/vector/reasoner sits behind a thin adapter. Prefer durable, well-documented, acquisition-proof tools over brilliant venture-backed ones. (Empirical basis in §4.4.) `[R]`
9. **Coherence is tracked across the decision-series, not just within a decision.** Every conclusion carries provenance to the prior commitments it depends on, so contradiction, dropped-dimension, and boundary-inconsistency *across* decisions are queryable. The unit of integrity is the series, not the node; drift over time is a first-class failure mode the system exists to catch. `[R]`
10. **Detection is paired with dependency-impact analysis.** Catching that decision *k* is now incoherent is only half the job; the system must also compute *what reversing or modifying k costs* — the transitive closure of dependent decisions, each classified unaffected / needs-review / needs-re-derivation, with the ripple (blast radius) estimated *before* the change is committed. This is a **traversal over the provenance graph already maintained for invariant #9** — a new operation, not new infrastructure. The value of coherence is proportional to *reversal cost*, not just reversal frequency: the system earns its keep by moving the detection point earlier in the chain, where remediation is cheap, instead of later, where the ripple is catastrophic. The benefit reframes from "quality" to **avoided rework**. `[R]`

---

## 2. The four-layer model

```
┌─────────────────────────────────────────────────────────────┐
│  LAYER 1 — ENGINE (operations)            domain-independent  │  ← custom build
│  scope · extract · coverage-diff · boundary-test ·           │
│  uncertainty-surface · refinement-signal · provenance gate   │
├─────────────────────────────────────────────────────────────┤
│  LAYER 2 — META-ONTOLOGY (universal kinds + edge grammar)     │  ← BFO-anchored + custom
│  the contract that makes a pack a valid pack                  │
├─────────────────────────────────────────────────────────────┤
│  LAYER 3 — DOMAIN PACK (one domain's content)                │  ← per-domain
│  dimensions · scales · constraints · patterns · chains ·      │
│  applicability conditions · extraction grammar · basis decl   │
├─────────────────────────────────────────────────────────────┤
│  LAYER 4 — CORPUS + INDICES (data + derived projections)     │  ← buy/borrow behind adapters
│  documents · provenance · graph · vector · engine state       │
└─────────────────────────────────────────────────────────────┘
```

The design risk concentrates in Layers 1 and 2 (the differentiated 30%). Layers 3-content and 4-infra are the commodity 70%. `[I]`

---

## 3. Base platform — Layer 1: the Engine

The engine is a set of **deterministic, typed, inspectable pipeline stages**. It is not an autonomous agent. Each stage has a Pydantic-typed input and output; the LLM does reasoning *inside* stages, but the sequence, the retrieval, and the validation are code. `[R]`

### 3.1 The MGA pipeline (canonical operation sequence)

| Stage | Operation | Input → Output | Custom? |
|---|---|---|---|
| S0 | **Basis declaration** | scenario → stated model commitments | custom |
| S1 | **Frame scoping** (applicability engine) | scenario + model → applicable dimension set + confidence | custom (hardest) |
| S2 | **Author-frame extraction** | artifact → dimensions/scales/tradeoffs the author actually engaged | custom (LLM-driven) |
| S3 | **Coverage diff** | applicable − considered → residual (the gap) | custom (trivial once S1/S2 typed) |
| S4 | **Boundary-sensitivity pass** | claim + frame → does it survive adjacent scales/windows? | custom (no loose-domain prior art) |
| S5 | **Uncertainty surface** | frame → in-frame-but-unobservable dimensions, declared | custom |
| S6 | **Refinement-signal emit** | run → gaps in the model itself → MGA-T proposals | custom |
| S7 | **Dependency-impact analysis** | proposed reversal/modification of decision *k* → transitive closure of dependents, classified + ripple-cost estimate | custom (graph traversal) |
| — | **Provenance gate** | every conclusion → typed edges to objects/EVRs it rests on | custom |

S1 and S4 are the differentiators. S1 (computing the applicable frame) is the hardest and the part that must NOT degrade into an unbounded LLM call — it is rules + graph traversal + *bounded* LLM judgment, in that priority order. S4 (boundary p-hacking detection) is the capability with the least prior art and the sharpest value. `[I]`

### 3.2 Engine build stack

| Concern | Choice | Rationale | Tag |
|---|---|---|---|
| Language | **Python** | every adjacent component is Python-first and best-documented; engine is glue | `[R]` |
| Typed stage I/O | **Pydantic** | validated hand-offs, free serialization to files/graph; *is* the pack contract in code | `[R]` |
| Orchestration | **Prefect** or explicit state machine (`transitions`) | deterministic, resumable, observable; NOT agent frameworks | `[R]` |
| LLM calls | **Anthropic SDK direct** | the context-assembler is the token-economics core; do not bury it in a framework | `[R]` |
| Context assembler | **custom** (graph-expand → rank → budget → pack) | the differentiated retrieval logic; owned, not abstracted | `[R]` |
| Engine state | **SQLite / DuckDB** | run records, signals, in-progress EVRs; tabular, durable, zero continuity risk | `[R]` |

**Conflict surfaced:** the prior Founder-Platform (V2) analysis leaned toward LangChain/LlamaIndex as the spine. This document reverses that for the *core MGA loop*, on invariant #8 and the determinism requirement. LlamaIndex is retained only for commodity ingestion plumbing (§4.3), not orchestration. `[F]` (prior position) / `[R]` (current).

---

## 4. Base platform — Layers 2 and 4: meta-ontology and infra

### 4.1 Layer 2 — meta-ontology

**Adopt BFO (Basic Formal Ontology) as the upper layer rather than inventing universal kinds.** `[R]`
BFO is openly/permissively licensed and an ISO standard (ISO/IEC 21838-2). It supplies the domain-independent categories (continuant/occurrent, quality, role, disposition, function, boundary) that both Grand Theory and a physics pack would specialize. `[F]` (status) / `[R]` (adoption).

- **Open decision (gates everything below it):** adopt-or-reject BFO. This is a *study* task — read BFO's top distinctions against the Grand Theory model AND a thin physics slice simultaneously; if your kinds specialize BFO's cleanly, the domain-independence bet has external validation. If not, you have learned your kinds are genuinely novel before betting the platform on them. **Do this before drafting the schema.** `[R]`
- Manipulated in-process via **owlready2** (Python, well-documented). `[R]`
- The **pack contract** (what every pack must supply) is custom and is the concrete expression of the meta-ontology: dimension set, scale/boundary structure, constraint set, pattern/chain inventory, extraction grammar, basis declaration, retrieval config. `[R]`

### 4.2 Layer 4 — graph, vector, rules

| Component | Pick (best-documented, continuity-safe) | Notes | Tag |
|---|---|---|---|
| Graph (start) | **NetworkX** rebuilt in-memory from files | superb docs, zero server, fine at hundreds–thousands of nodes | `[R]` |
| Graph (scale) | **Neo4j Community** | best docs in category; promote when traversal volume justifies a server | `[R]` |
| Vector | **Chroma** (gentle) or **LanceDB** (scales) | both embeddable, swappable behind assembler interface | `[R]` |
| Rules / entailment | **Soufflé** (Datalog, open) | applicability firing, consistency; fast, documented | `[R]` |
| Counterexample search | **Alloy** as *pattern reference* (MIT) | the boundary-sensitivity operation's reference design; likely not embedded directly | `[R]` |
| Access control (multi-user phase) | **Cerbos** or **Oso** | buy not build; maps to analyst-proposes / maintainer-promotes gate | `[R]` |
| Document + metadata store | files + **DuckDB** | boring on purpose | `[R]` |

### 4.3 Layer 4 — ingestion pipeline (one contract, many adapters)

The ingestion pipeline is **one canonical intake contract** (normalize → semantic chunk → provenance-stamp → embed → propose model-frame links) with thin per-source adapters. Its commissioning run is the ChatGPT export recovery; the same machinery is the forward-feed path. `[I]`

- Adapters: (a) Perplexity research feed — push, lowest-trust, requires **source-tier provenance** + **novelty/dedup**, lands as *signal/lead* never *evidence*; (b) scheduled paper/essay ingestion — batch, **per-document state machine**, idempotent (hash-provenanced); (c) interactive Q&A — see §4.5.
- Chunking/embedding plumbing may use **LlamaIndex** (good docs for this narrow job). `[R]`

### 4.4 Continuity risk — the empirical basis for invariant #8

`[F]` Two best-in-class components in this exact space were acquired and pulled from the open market inside 18 months: **RDFox** → Samsung (July 2024), now license-key gated; **Kùzu** (embedded graph) → Apple acqui-hire (Oct 2025), GitHub repo archived, MIT code still usable, forks (LadybugDB, bighorn) emerging.
`[I]` The infrastructure layer is consolidating toward on-device-AI acquirers. Any single-vendor core dependency is a continuity risk on a 2–3 year horizon. Hence: interfaces over engines, durable over brilliant.

### 4.5 Multi-user (deferred, but seams reserved now)

`[I]` *Interactive* adds a session/context service over the assembler. *Multi-user* is the larger jump: concurrent mutation of shared state forces identity-on-every-annotation, write-conflict handling, and the canonical-write gate hardening from discipline into **enforced role separation** (analyst proposes / maintainer promotes). It also forces **deterministic, versioned, server-side frame computation** so two analysts get the same completeness verdict — which is the same conclusion the capacity argument already reached.
`[R]` Reserve three seams now even while building single-user: identity on every annotation/signal, source-trust tier on every ingested item, adapter boundary at intake. Cheap to include, expensive to retrofit.

---

## 4.6 What a "pack" is — the generalized contract

A **pack is the minimum domain-specific bundle that lets the invariant engine run on a new domain** — the analog of a Foundry vertical (ontology + pipelines + apps on an unchanged core). A domain *qualifies* as a pack when it can supply all eight components against the engine's interface **without forcing an engine change** (the Phase-3 falsification test). `[R]`

| # | Pack component | Role | Foundry-class analog |
|---|---|---|---|
| 1 | **Dimension ontology** | enumerable applicable dimensions, specializing the meta-ontology (BFO) kinds | domain ontology |
| 2 | **Scale/boundary axes** | the axes the S4 boundary-sensitivity pass runs along (time/level; coupling/energy/length) | — (engine-specific) |
| 3 | **Constraint/feasibility set** | the domain's bounds | rules/constraints |
| 4 | **Pattern/chain inventory** | recurring structures the engine matches against | — |
| 5 | **Extraction grammar** | parse a domain artifact for its *actual* frame; most domain-specific, may be code not data | connectors/parsers |
| 6 | **Applicability rules** | machine-checkable "this dimension is in-frame when…" predicates | — |
| 7 | **Basis declaration** | the pack's own stated commitments (every pack is a position) | — |
| 8 | **Corpus + retrieval config** | domain documents + embedding/retrieval tuning | data layer |

**Generalization for commercialization** (see `DOMAIN_SCREENING_RUBRIC.md` v2): a pack's *job-to-be-done* is typically already served in its vertical by **non-platform point solutions** — that fragmentation is the platform wedge, not a disqualifier. The pack-as-generic-artifact does not exist on the market (the engine it plugs into doesn't exist commercially); the pack's per-vertical job does. Each pack also carries a **buyer-shape** (solo / intrapreneur / OpEx / PE-channel) and **commercial-shape** (empowerment / red-team) that drive its motion — *the engine is constant; the buyer structure varies by pack.* `[I]`

---

## 5. Domain Pack — Grand Theory

`[F]` Existing, governed, coherent at repo tag v1.0.0. A scoped coordination ontology over history, economics, politics, psychology, and (partially) philosophy.

**Pack contents (specialize the meta-ontology kinds):**
- **Dimensions:** COR metrics/states (CI, θ, φ, X, κ, h, E, Γ_G, χ); 8 FIELDS; 6 HEXACO AXES (the manifold substrate — high-dimensional projection replacing the 1-D left/right axis).
- **Scales/boundaries:** scale operators (σ), scale-transition operators — *the S4 boundary-sensitivity substrate.*
- **Constraints:** BOUNDS (feasibility limits).
- **Patterns/chains:** DPI (dynamic patterns), CCFI (causal chains).
- **Operators:** OCF (control surfaces, techniques, measurement, intervention).
- **Basins:** IBR (ideological basins) — *pack-local, no cross-domain analog.*
- **Evidence:** EVR (Evidence Records) — coverage-matrix-shaped.
- **Extraction grammar:** parse loosely-formalized essays/scenarios for engaged dimensions, scales, tradeoffs.

**Open pack tasks (already in repo issue queue):**
- COR.XE dangling reference → MGA-T resolution (#3).
- AXIS/HEXACO foundations rebuild with citations + effect sizes (#4) — *also the home of invariant #6's basis declaration.*
- Formalism-ambition decision: descriptive pseudocode vs. operationalize 2–3 metrics (#5).
- Re-validate 6 pre-transfer promotions vs. EVR; flip `STRICT_PROMOTION` (#6).

`[A]` The dimension space is enumerable enough for completeness-checking. (Boundary condition that would invalidate the strong claim: if applicable dimensions prove too scenario-specific to enumerate, completeness degrades to heuristic prompting.)

---

## 6. Domain Pack — Founder Platform

`[F]` Developed earlier as a decision-governance system; seven capability layers: coverage, discipline, judgment, readiness/fundability, process-health (IPHC), accountability/AI-provenance, founder experience. Separate IP track from the PG/Bahou security patent.

**Buyer/commercial shape:** `[I]` buyer = user (solo) collapsing to champion + sponsor (intrapreneur) at enterprise scale; commercial shape = empowerment. Coverage profile = **C0 (none / self-assembly)** — primary-source signal: owner searched the market as a buyer and built because the assembled set didn't exist or didn't deliver. Highest novelty corner of the screen.

**Mapping to the shared engine — the key reuse insight:** `[I]`

| Founder-platform layer | Maps to | Reuse class |
|---|---|---|
| **Coverage** | Engine S1–S3 (completeness) | **shared engine** — same operation, different dimensions |
| **Accountability / AI-provenance** | Engine provenance gate + EVR provenance | **shared engine** (OQ-V2-051 = "which conclusions rest on LLM-filled cells") |
| **Discipline** (governance/lifecycle) | Invariants #1, #3; validators | **shared** (this session's work) |
| **Judgment** | Engine S4 boundary-sensitivity + grounded bases | **shared engine** |
| **Readiness/fundability** | pack dimensions | **pack-local** (do NOT import to core) |
| **Process-health / IPHC** | pack dimensions/patterns | **pack-local** |
| **Founder experience** | pack UX/surface | **pack-local** |

**The trap to avoid:** `[R]` Founder-platform and Grand Theory share an *engine*, never a *pack*. Readiness/IPHC/experience are one domain's content — importing them into the core because the systems share infrastructure is the same error as importing IBR into physics. Reuse the universal layer; quarantine the domain layer.

**The strategic payoff:** `[I]` Built as a pack on the shared engine, the Founder Platform becomes the **second pack that proves the platform thesis** — the cheap, near-domain validation of domain-independence. It is also a live ICP test case (Sarah Bellenger / ManageYou; potential the.garage population-scale test).

`[A]` Founder-strategy analysis is loosely-formalized enough to sit at the engine's strong end (like Grand Theory, unlike physics).

---

## 7. Domain Pack — Mathematical Physics (STUB)

`[I]` Included as the **domain-independence falsification test**, not a near-term build. Physics is the hardest second domain precisely because it self-completes through formal validity, so it stresses the extraction (S2) and applicability (S1) layers maximally. It is the definitive test of the platform bet — and the worst place to *discover* the abstractions leak. Validate the architecture on the Founder Platform first; point it at physics to *prove* generality. `[R]`

**Where the engine bites (narrow, real):**
- **Assumption / domain-of-validity auditing** (S4): the omissions in math-physics live in unstated approximations and regime boundaries, not the algebra. "Does this result survive at the adjacent coupling/energy/length scale?" — strongest fit, and it does NOT require penetrating the formalism, only framing around it.
- **Cross-subfield blindness** (S1–S3): the same phenomenon treated independently by condensed-matter / high-energy / quantum-info communities; prior-driven omission at the level of subfield. `[I]` (depends on encoding cross-framework correspondences — hard expert work).
- **Interpretation/foundations:** where physics shades into interpretation, priors return; closer to the engine's home turf.

**Where the engine does NOT bite:**
- Core formal derivation is internally completeness-checked by mathematical validity itself; the prior-and-capacity omission mechanisms barely operate there.

**Stub pack contract (to be filled only at Phase 5):**
- Dimensions: energy regimes, symmetry classes, approximation domains *(placeholder)*.
- Scales/boundaries: coupling, energy, length — *the S4 axes for this domain.*
- Constraints: validity limits of effective theories *(placeholder)*.
- Patterns: recurring derivation pathologies / regime-misapplication *(placeholder)*.
- Seed from existing physics/math ontologies where they exist (thinner than bio). `[A]`

`[I]` The gradient that emerges across the three packs: engine power is **inversely proportional to the target domain's degree of self-completing formalization.** Founder Platform and Grand Theory sit at the loose, high-value end; physics at the formal end where only the narrow assumption-audit application survives. That gradient is itself a finding worth preserving.

---

## 8. Phasing

Sequencing obeys one rule: **prove the core capability on one real scenario before adding any scale, source, or user.** The acquisition-wave and premature-infrastructure risks both push the same direction. `[R]`

### Phase 0 — Foundations (pure design; mostly current session)
- BFO adopt/reject decision against Grand Theory + a thin physics slice (§4.1). **Gates the schema.**
- Draft the **engine/pack interface as Pydantic models** — the contract both Grand Theory and Founder Platform implement.
- Repair/coherence baseline complete (done: repo v1.0.0, validators, CI, EVR scaffold, issue queue).
- Define EVR / coverage-matrix schema as the canonical analysis output shape.
- **Exit criterion:** a written pack contract + meta-ontology top layer that both existing domains can be expressed against on paper.

### Phase 1 — Single-domain, single-user engine MVP (Grand Theory)
- Build engine stages S0–S6 + provenance gate (Python/Pydantic/explicit-state-machine/SDK).
- NetworkX graph rebuilt from files; no server, no vector yet.
- Run ONE complete MGA-A/B end-to-end on one real scenario (seeded from export-recovered EVRs) and publish it.
- **Exit criterion:** the completeness operation (S1→S3) and boundary pass (S4) produce a defensible coverage residual on a real artifact, with bounded uncertainty (invariant #7).

### Phase 2 — Ingestion pipeline + corpus indices (commissioned by the export)
- Build the one-contract ingestion pipeline; commission it on the ChatGPT export recovery (partition index → EVR extraction → applicability-judgment mining).
- Stand up vector index (Chroma/LanceDB) + the custom context-assembler; retrieval now staged (model-first, corpus-second per invariant #5).
- Promote graph to Neo4j Community if traversal volume justifies.
- **Exit criterion:** a session loads a ~5–10k digest + retrieved subgraph instead of the whole corpus; token cost per analysis drops ~5–10× vs. file-loading. `[I]`

### Phase 3 — Second pack proves the platform thesis (Founder Platform)
- Implement the Founder Platform as a pack on the unchanged engine (coverage, provenance, judgment reused; readiness/IPHC/experience as pack-local content).
- **Falsification check:** did the engine code change? If yes, the seam was wrong (invariant #2). If no, domain-independence is externally validated.
- Refinement-signal loop (S6 → signal store → MGA-T) activated.
- **Exit criterion:** two packs run on one frozen engine.

### Phase 4 — Multi-source, multi-user (scale)
- Activate Perplexity feed + scheduled ingestion adapters (trust-tier, novelty/dedup, state machine).
- Session service for interactive Q&A; identity + Cerbos/Oso authorization; canonical-write gate becomes enforced role separation.
- Server-side deterministic frame computation for cross-analyst consistency.
- **Exit criterion:** two analysts get the same completeness verdict on the same scenario.

### Phase 5 — Mathematical Physics stub → domain-independence proof
- Fill the physics stub pack to the narrow assumption-audit / cross-subfield scope.
- Point the frozen engine at it; measure where S1/S2 hold and where they leak.
- **Exit criterion (definitive):** engine unchanged across the most distant domain, OR a documented, bounded account of exactly which abstractions are loose-domain-specific.

```
P0 design → P1 prove core (GT) → P2 corpus/token economics
                                      → P3 second pack (Founder) = platform proof
                                            → P4 scale (multi-source/user)
                                                  → P5 physics = generality proof
```

---

## 9. Risk register (red-team residuals)

| # | Risk | Confidence | Boundary condition that would change the call |
|---|---|---|---|
| R1 | **Premature infrastructure** — platform built ahead of payload (same pattern PG flagged) | High | High post-export analysis frequency moves infra earlier |
| R2 | **Retrieval recall risk** — assembler silently omits a relevant item; omission is invisible; worse than load-all | Med-high | High-stakes runs need a broadened/recall-checked pass or load-full fallback (impossible at full corpus scale) |
| R3 | **Domain-independence is a strong self-claim** the system itself would interrogate | High | Falsify early via distant second domain (P3/P5), never by single-domain confidence |
| R4 | **Dimension space may not be cleanly enumerable** for some scenario classes | Med | If unenumerable, completeness degrades to heuristic prompting; drop the strong claim, keep the tool |
| R5 | **Engine self-completeness illusion** — confidently asserting a false-complete frame manufactures authoritative omissions | High | Frame must self-report confidence + coverage; output bounded per invariant #7 |
| R6 | **Infra acquisition / abandonment** (RDFox, Kùzu precedent) | High | Interfaces over engines; durable over brilliant (invariant #8) |
| R7 | **Pack/core contamination** — domain content leaking into the engine | High | Quarantine pack-local layers; founder readiness/IPHC must stay pack-side |
| R8 | **Corpus defines the frame** if retrieval order inverts → inherits literature blind spots | High | Enforce staged retrieval as a correctness property (invariant #5) |
| R9 | **Impact-analysis under-scoping** — telling the user a reversal is safe when it silently breaks a downstream decision (false confidence; *worse* than no analysis) | High | Bias the blast-radius traversal toward recall; flag uncertain dependencies as needs-review, never auto-clear |
| R10 | **Change-paralysis from over-scoping** — chronic over-flagging of affected decisions makes every revision look costly → users distrust warnings or avoid revising; the adaptability tool becomes a rigidity tool | Med-high | Tune blast-radius precision; distinguish load-bearing from incidental dependencies; this precision is an efficacy gate, not a nicety (research III.6) |

---

## 10. Decision log (architectural commitments made in this document)

1. Four-layer separation: engine / meta-ontology / pack / corpus. `[R]`
2. Engine is a deterministic typed pipeline, NOT an agent loop. `[R]`
3. Build stack: Python + Pydantic + Prefect/state-machine + Anthropic SDK + custom assembler + SQLite/DuckDB. `[R]`
4. Adopt BFO as meta-ontology upper layer, **pending the Phase-0 adopt/reject study.** `[R]` (open)
5. Reverse the prior LangChain-spine position for the core loop; retain LlamaIndex for ingestion plumbing only. `[R]` (conflict with V2 surfaced)
6. Interfaces over engines; durable over brilliant — driven by the RDFox/Kùzu acquisition evidence. `[R]`
7. One engine, two packs (+ one stub); Founder Platform is the platform-thesis proof, Physics the generality proof. `[R]`
8. Prove core on one real scenario before any scale/source/user. `[R]`
9. Reserve identity, source-trust, and adapter seams now even while single-user. `[R]`
10. Market position: horizontal substrate + vertical packs, structurally analogous to Foundry/Lattice but performing an **interrogative** (completeness) primitive, not an **integrative** one; "platform" asserted only after two packs run on an unchanged engine. `[R]`
11. A pack is the 8-component minimum bundle (§4.6) that runs on the engine without changing it; buyer-shape and commercial-shape are pack attributes, not engine attributes. `[R]`
12. Unit of analysis is the decision-*series*, not the decision; cross-decision coherence (invariant #9) is the primitive the atomic-decision landscape leaves open. `[R]`
13. Coherence detection is paired with dependency-impact analysis (invariant #10, S7); value ∝ reversal cost; benefit reframes to avoided rework; both run as traversals over the existing provenance graph. `[R]`

---

## Appendix A — Open decisions blocking progress

| Decision | Blocks | Type |
|---|---|---|
| BFO adopt/reject | schema top layer, Phase 0 exit | study |
| Formalism ambition (GT pack) | S1/S4 semantics for GT | MGA-T |
| Dimension-space enumerability | strength of the completeness claim | empirical (test on export corpus) |
| Graph engine promotion trigger | Phase 2 infra | threshold (defer to data) |

## Appendix B — What is explicitly NOT being built (and why)

- **Simulation** — deferred by directive; typed directional graph preserves the option without paying for it.
- **Operationalized/estimated formalism** — out of scope until an explicit MGA-T decision; formalism stays logical pseudocode.
- **Full OWL/RDF reasoning, formal argumentation calculus, BPMN engines, federated KGs** — assessed overkill at this scale in the prior V2 analysis; that assessment holds. `[F]`
- **Multi-user before single-user core proof** — sequencing discipline (R1).
