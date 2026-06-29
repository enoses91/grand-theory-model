# Research Program — Validating the Platform Architecture, Commercial Thesis, and Cognitive Foundations

**Status:** design draft · **Version:** 1.4 · **Date:** 2026-06-28 · **Owner:** Eric Enos
**Companions:** `UNIFIED_PLATFORM_ARCHITECTURE.md`, `DOMAIN_SCREENING_RUBRIC.md`
**Purpose:** a structured program to validate (or falsify) the provisional decisions made across the architecture and commercial design, and to ground the system's logic in the relevant literature — including basic cognitive research on high-stakes decision-making under uncertainty not already covered in the Founder Platform work.
**Stance:** falsification over validation. Each item names a **kill criterion**, not only a success criterion. High-stakes conclusions carry confidence + boundary conditions.
**Claim discipline:** `[F]` fact · `[I]` inference · `[A]` assumption · `[R]` recommendation.

---

## 0. Two tensions the literature already surfaces (read first)

The program is not neutral discovery; three findings actively threaten the core thesis and must be confronted, not buried. `[R]`

1. **The NDM/expertise tension — *resolved by decomposing "pressure"*.** Naturalistic Decision Making (Klein) finds that experts under *time* pressure largely *do not* enumerate — they pattern-match via the Recognition-Primed Decision model (the large majority of fireground decisions; 10–20 years of experience required). `[F]` This reads as a challenge to "force completeness" only if "pressure" is left as one undifferentiated thing. It is not. **"Pressure" decomposes into three independent axes:** `[I]`
   - **Temporal** (time-to-decide) — the axis NDM/RPD actually studied. The system *cedes* this regime to expert pattern-match and does not compete in seconds-to-minutes decisions.
   - **Stakes** (consequence magnitude) — raises the *value of completeness*, not the speed requirement; routinely coexists with abundant time.
   - **Dimensional** (joint-variable load; Halford's ~4-variable ceiling) — orthogonal to both; a decision can be low-time-pressure, high-stakes, and *still* exceed the human joint-processing limit, forcing serialization (chunking, dropping the joint interaction) no matter how much time is available.

   NDM's result is a finding about the **temporal** axis. The system targets the **stakes × dimensional** quadrant **with temporal slack** — the regime RPD never addressed. The two partition the decision space rather than competing. **Core mechanism (the stronger claim):** even within a *fixed* time budget, an LLM-driven system raises *achievable completeness per unit time*. The human's completeness-per-unit-time is bounded by the serial-chunking constraint — the binding limit is cognitive throughput, not the clock. The competitor is not "perfect completeness with infinite time"; it is "what *this* decision-maker could actually hold in the time they have," a low and beatable bar. The system also augments the phase RPD itself says *expands when time allows* — the expert's mental-simulation/checking phase — widening the dimensions considered before commitment. So the thesis reconciles with NDM rather than fighting it. `[I]` **Residual risk (unchanged):** more dimensions surfaced improves the decision only if the *added* dimensions are high-signal and correctly weighted; surfacing noise can degrade via overload/false precision. The opportunity argument strengthens; the fidelity burden (III.1/III.3) does not lift.

2. **The structured-technique efficacy tension (the "ACH ghost").** The most direct prior art — Heuer's Analysis of Competing Hypotheses — has, under controlled test (Mandel; Dhami), shown *no advantage over a no-technique control*, with trained analysts skipping steps. `[F]` Structured analytic rigor has a genuinely mixed record of being adopted *and* of improving judgment. The empty market white-space may be a moat or a graveyard. This is the single most important thing the program must resolve. `[R]` **The "graveyard" is literal and enumerable — see Part VI.** ACH is one instance of a *class* of normatively-sound methods that failed on sustained human compliance (design rationale is a second). If the shared fatal flaw is compliance cost, and the system removes that flaw structurally (III.2), the entire class — not just the single method — becomes addressable. That reframing turns the most threatening tension into the largest opportunity, and is developed as its own work-stream in Part VI. `[I]`

3. **The human-AI-combination tension (Vaccaro et al.).** A 2024 meta-analysis (Vaccaro, Almaatouq & Malone, "When combinations of humans and AI are useful") reportedly found that human-AI combinations frequently *fail to outperform the best of human-or-AI alone*. `[A]` (Seen cited, not yet read — verify.) Taken at face value this threatens the augmentation thesis. **But it must be *stratified*, not accepted whole**, because the result is only damaging if the pooled studies share the conditions the system targets — and they likely do not. The disconfirming conditions to factor out: `[I]`
   - *Role of AI:* if the corpus is dominated by **recommendation-centric** support (AI says "do X"), the null is a finding about recommendation, not about **process-oriented/interrogative** completeness-augmentation — the opposite category (the CHI tools-for-thought literature shows these behave oppositely).
   - *Dimensionality:* if pooled tasks are low-dimensional, the human was never over the Halford limit → nothing to externalize → null *confirms* the system's lower boundary rather than refuting the thesis.
   - *Time budget:* tight-timed tasks sit in the ceded RPD regime; untimed-simple tasks gave the human enough capacity alone. The valuable middle band (high-dimensional × stakes × temporal slack) may be unrepresented.
   - *Unit:* the studies evaluate **atomic** decisions, not **interdependent series** (see below) — they design out the failure mode the system targets.

   **Action:** treat Vaccaro as a *boundary-condition map* — re-analyze (or extract from) the combination-usefulness evidence by **AI-role × dimensionality × time-budget × unit**, and locate the target regime in the cells where combination *does* help. This is itself a completeness-and-boundary operation applied to the literature. `[R]`

**Reframe spanning all three tensions — the unit of analysis is the decision-*series*.** NDM, ACH, and Vaccaro all study the **atomic** decision. The system's primitive is **cross-decision coherence over a long interdependent series** — catching drift, contradiction, dropped-dimension, and boundary-inconsistency *between* decisions, which atomic-decision studies structurally cannot measure. This partially **insulates** the thesis: even if single-decision augmentation gave zero lift (worst case), maintaining coherence across a long dependency chain delivers value the atomic literature never tests. The efficacy program therefore needs a coherence-across-series measure distinct from the single-decision experiment (III.5). `[I]`

Everything below is organized so these tensions get tested early and cheaply.

---

## Part I — Foundational literature review (what underpins the logic)

Goal: map the scientific basis of each system component, identify the strongest supporting work *and* the strongest disconfirming work, and mark where the system makes a claim the literature does not yet support. Deliverable: an annotated bibliography keyed to architecture components + a "claims-vs-evidence" table.

### I.1 Cognitive capacity & dimensionality — *the scientific backbone*
The core premise ("humans can't hold high-dimensional problems; externalize the frame") rests here.
- **Halford, Wilson & Phillips (1998, BBS); Halford et al. (2005, 2007); Cowan (2001).** Relational-complexity theory: parallel processing is soft-limited to ~**one quaternary relation (≈4 related variables)**; the limit is **domain-general**; beyond it humans use *segmentation/conceptual chunking* (serial processing of sub-components). Halford et al. ground the limit in **the maximal size of a tensor a human can mentally represent**, and show accuracy at understanding statistical interactions is high for 2–3-way and **falls sharply at 4-way**. `[F]`
- *Why it matters:* this is the empirical foundation for the entire externalization thesis, and the tensor framing connects directly to the manifold/HEXACO design choice. The system's value = letting the analyst work the *joint* high-dimensional interaction the brain can only handle by *serializing* (i.e., dropping it).
- **Miller (1956) 7±2** — cite as historical, but defer to Cowan/Halford for the load-bearing limit (storage ≠ relational processing).
- *Research question:* does externalizing the frame measurably raise the dimensionality at which decision quality holds? (Part III.1.)

### I.2 Decision-making under uncertainty — *the contested ground*
- **Klein — NDM, RPD, macrocognition (1989–2010).** Descriptive, not normative; "wallows in wicked problems with ill-defined goals, uncertainty, high stakes" — almost a verbatim description of the system's target. But RPD is the *tension* in §0.1. `[F]`
- **Kahneman & Tversky — heuristics and biases; Kahneman (2011).** The complementary/opposing tradition: systematic deviations from normative reasoning. The system is, in part, a debiasing instrument — but see Part III on whether debiasing tools transfer.
- **Stanovich — dysrationalia, the rationality/intelligence distinction.** Relevant to whether high-g decision-makers still need the tool (they do — see g-malleability work already covered).
- **Gigerenzer — ecological rationality / fast-and-frugal.** The strongest counter-case: under uncertainty, *less* information can be better. A genuine challenge to "completeness." Must be engaged, not ignored. `[R]`
- *Research question:* under what conditions does forcing completeness help vs. hurt (Gigerenzer's regime)? (Part III.)

### I.3 Structured analytic techniques & their efficacy record — *the direct prior art*
- **Heuer (1999), Psychology of Intelligence Analysis; Heuer & Pherson, Structured Analytic Techniques.** The ACH lineage; functionally the closest precedent. `[F]`
- **Mandel; Dhami et al. — empirical critiques.** ACH ≈ control; step-skipping. The disconfirming evidence the program must answer. `[F]`
- *Research question:* does the system's *structural execution* (engine runs the check, not the analyst) escape the compliance-decay failure mode that sank ACH? (Part III.2 — this is the mechanism that, if it works, distinguishes the system from the ACH null result. Generalized to a class in Part VI.)

### I.4 Completeness methods in other fields — *transfer evidence*
- **Safety engineering: HAZOP (Kletz), STPA/STAMP (Leveson), FRAM (Hollnagel).** Mature forced-completeness methods; key lesson already established: **completeness remains analyst-dependent even in the most structured methods**, and no single method is complete. `[F]`
- **Argument mapping / IBIS / Toulmin; argumentation frameworks (Dung, ASPIC+).** Structure-an-argument-to-expose-gaps; closest to the author-frame-extraction operation. (Also a Part VI corpse: design rationale.)
- **Morphological analysis (Zwicky); MCDA; Integral Theory (Wilber).** Enumerate-the-possibility-space precedents.
- *Research question:* which mechanisms transfer to loosely-formalized domains, and which are domain-bound? (Part II.)

### I.5 Knowledge representation & ontology
- **BFO (Arp, Smith, Spear); DOLCE (Gangemi et al.); OBO Foundry.** Upper-ontology basis for the meta-ontology; the adopt/reject study (Part II.1).
- **GraphRAG / retrieval literature (2024–).** The token-economics and recall-risk evidence base.
- *Research question:* do the system's kinds specialize BFO cleanly across ≥2 domains? (Part II.1.)

### I.6 Expertise, siloing & the burden of knowledge
- **Jones — "burden of knowledge" (rising age-at-first-invention, team size); specialization-depth/breadth tradeoff.** Empirical grounding for the wicked-problem/cross-domain market thesis.
- **Tetlock — *Expert Political Judgment*, superforecasting.** Evidence on *which* cognitive styles forecast well under uncertainty (foxes > hedgehogs) — directly relevant to whether breadth-forcing improves outcomes. `[F]`
- *Research question:* does the platform reproduce, for a solo analyst, the breadth advantage Tetlock attributes to "foxes"? (Part III.)

### I.7 Explicitly excluded (already covered in Founder Platform work)
Boehm Spiral Model; Lean Startup; Agile/waterfall method debates; Goldratt Theory of Constraints; the investability/IPHC frameworks. **Do not re-research.** `[F]` (per owner) Note only where they *interface* the engine (e.g., TOC sequencing in MGA-C).

---

## Part II — Architecture validation (do the provisional technical decisions hold?)

Each provisional decision → question, method, data, kill criterion. Maps to architecture decision-log items and phases.

| ID | Provisional decision | Validation question | Method / data | Kill criterion |
|---|---|---|---|---|
| AV1 | **Adopt BFO as meta-ontology upper layer** (arch §4.1) | Do the engine's kinds specialize BFO cleanly across Grand Theory AND a physics slice? | Pure-design study: map both domains' kinds to BFO top categories | If kinds don't fit BFO → kinds are novel or domain-bound; pick DOLCE or build minimal upper layer |
| AV2 | **Engine/pack domain-independence** (invariant #2) | Can a 2nd pack run on an *unchanged* engine? | Phase-3 build: Founder Platform pack on frozen engine; diff engine code | Any engine change forced → seam is wrong; the platform claim fails |
| AV3 | **Deterministic typed pipeline, not agent loop** (arch §3) | Does determinism preserve reproducibility without losing analytical quality vs. an agentic variant? | A/B: same scenarios through deterministic pipeline vs. agent loop; measure reproducibility + quality | If agent variant is both more reproducible AND higher quality → reconsider (unlikely; boundary check) |
| AV4 | **Retrieval order as correctness** (invariant #5) | Does model-first / corpus-second avoid inheriting literature blind spots vs. corpus-first? | Ablation: run frames with corpus-first vs. model-first; compare omission residuals | If order doesn't change residuals → demote from invariant to preference |
| AV5 | **Dimension spaces are enumerable** (the hard gate, G1) | For which domain classes is the applicable dimension set actually closeable? | Use the export corpus (dozens–hundreds of prior analyses) as a labeled dataset; test enumerability empirically | If dimension sets prove irreducibly open for target domains → completeness degrades to heuristic prompting; strong claim drops |
| AV6 | **Boundary-sensitivity (S4) is a real, distinct capability** | Does the S4 pass detect scope/boundary p-hacking that the coverage diff (S1–S3) misses? | Construct scenarios with boundary-dependent conclusions; measure S4 detection rate | If S4 adds nothing beyond S1–S3 → fold it in, drop the separate operation |
| AV7 | **Token economics: retrieve-slice beats load-all** (arch Phase 2) | Does the assembler cut tokens ~5–10× without unacceptable recall loss? | Instrument Phase-1/2; measure tokens/analysis + recall vs. load-full baseline | If recall loss is high and invisible → retrieval-grounding fails the fidelity bar (RR2/R2) |
| AV8 | **Infra continuity: interfaces over engines** (invariant #8) | Do the adapter seams actually permit swapping a graph/vector engine without engine changes? | Swap test: NetworkX → Neo4j; Chroma → LanceDB behind the interface | If a swap forces engine changes → adapter boundary is in the wrong place |

---

## Part III — Core-capability efficacy (the central bet)

**The question the whole venture rests on: does forced dimensional completeness produce measurably better analysis than the alternatives, for the target decision-maker?** This is where the §0 tensions get resolved. Highest priority. `[R]`

### III.1 The primary efficacy experiment — *completeness per unit time, across time budgets*
The efficacy question is not binary ("does completeness help?") but a **rate-and-curve** question: *how much completeness-per-unit-time does the system add, and over what time-budget band is that gain valuable?* (Per §0.1: the gain → 0 at the low end where RPD/pattern-match wins, and → 0 at the high end where the unaided human had enough time anyway. The valuable regime is the bounded middle — its width is empirical.) `[R]`
- **Design:** real artifacts/decisions in a target domain, evaluated three ways at *multiple imposed time budgets* — (a) unstructured expert/LLM critique, (b) the structured engine (S0–S6), (c) a multi-specialist panel ground-truth frame (the "team the system replaces"). Vary the time budget from tight (minutes) to ample (hours/days).
- **Measures:** coverage-residual recall vs. panel ground truth **as a function of time budget**; false-positive rate (spurious "omissions"); decision-quality delta where outcomes are knowable; analyst-confidence calibration. Primary output is the **completeness-vs-time curve** for each arm and the **gap between system and unaided human at each time budget**.
- **Success:** the engine's completeness-per-unit-time exceeds the unaided human's across a usefully wide middle band, approaching panel-level coverage at a fraction of cost, beating unstructured critique on recall *and* false-positive rate.
- **Kill criterion:** the system's curve tracks the unstructured/unaided curve at all time budgets (no rate advantage anywhere) → the structure adds cost without benefit; the core thesis fails. A null result at *tight* budgets but a positive result at *ample* budgets is the *expected, thesis-confirming* shape (RPD regime ceded, target regime won), not a failure. Confidence in thesis currently **medium**; this experiment moves it. Boundary: a positive result only for *non-experts* would narrow, not kill, the ICP.

### III.2 The compliance-decay escape test (why this ≠ ACH)
- **Hypothesis:** ACH failed partly because *humans* execute the steps and skip them; the engine executes the completeness check *structurally*, so it can't be skipped. `[I]`
- **Test:** measure execution fidelity of the engine vs. human-run ACH on matched tasks. If the engine's structural execution removes the step-skipping variance, that is the mechanism of advantage — and the defensible IP story.
- **Kill criterion:** if structural execution doesn't improve over human execution (e.g., the LLM-filled cells reintroduce the same subjectivity ACH had in its matrix), the "structured beats unstructured" claim weakens to "depends on cell quality."
- **Generalization:** this same mechanism is what makes Part VI possible. If structural execution defeats compliance-decay here, it plausibly defeats it for the *whole class* of compliance-failed methods — III.2 is the single-method proof, Part VI is the class-level consequence.

### III.3 The empowerment-fidelity risk (RR3)
- **Question:** can a non-expert buyer *judge* the engine's output, or does a wrong frame become more dangerous because they trust it?
- **Test:** non-expert users + engine vs. non-expert users alone vs. expert baseline; measure not just performance but *error when the engine is wrong* (do users catch it?).
- **Kill criterion:** if non-experts can't detect engine errors and over-trust, the empowerment GTM is unsafe without heavy uncertainty-surfacing — raising the fidelity bar (arch invariant #7) from design goal to release gate.

### III.4 The Gigerenzer regime boundary
- **Question:** are there decision regimes where forcing completeness *degrades* outcomes (less-is-more)?
- **Test:** vary uncertainty/noise; find the crossover where added dimensions hurt.
- **Output:** a stated applicability boundary for the product ("not for these regimes"), which is itself a credibility asset.

### III.5 Cross-decision coherence — *the differentiator, and the efficacy hedge*
The single-decision experiment (III.1) tests the contested atomic claim. III.5 tests the claim the atomic literature *cannot* — and on which the system's differentiation actually rests. `[R]`
- **Question:** over a long interdependent series, does the system reduce **drift** (later decisions contradicting earlier commitments, dimensions dropped over time, boundaries chosen inconsistently across decisions) relative to an unaided analyst / small team?
- **Design:** multi-decision programs (e.g., a simulated founder journey, PE value-creation plan, or care-pathway buildout) run with vs. without the system; seed known dependency structures and later-stage perturbations.
- **Measures (need definition — this is a research task in itself):** contradiction rate across the dependency graph; dimension-persistence (does a dimension in-frame at decision *k* stay considered at decision *k+n* when still relevant?); boundary-consistency across decisions; rework caused by late-discovered incoherence. `[A]` Coherence metrics are *not* off-the-shelf; defining them defensibly is part of the deliverable.
- **Success:** measurable drift reduction across the series even where III.1 single-decision lift is modest or null.
- **Strategic note:** III.5 is the **efficacy hedge** — if III.1 reproduces the ACH/Vaccaro null on atomic decisions, a positive III.5 still supports the venture, because the value accrues at the seams between decisions, which no atomic tool addresses. Conversely, if III.5 *also* nulls, the differentiation claim fails and the system is just another atomic decision aid. **Priority: co-equal with III.1.**
- **Kill criterion:** no measurable coherence advantage across series → the decision-series primitive (arch invariant #9; rubric A7) is not real value; fall back to the atomic-decision thesis and its crowded field.

### III.6 Rework-avoidance & impact-analysis precision — *possibly the easiest efficacy claim, and a hard fidelity gate*
Pairs with III.5: where III.5 measures coherence (detection), III.6 measures the *value of detection* (avoided remediation cost) and the *safety of impact analysis* (blast-radius precision). Maps to arch invariant #10 / stage S7 and risks R9–R10. `[R]`
- **Rework-avoidance (the value claim — and the most *quantifiable* of all efficacy measures):** does early detection move the discovery point of a flawed decision *earlier* in the dependency chain, reducing downstream re-derivation? **Measure:** detection-point earliness (position in chain where drift is caught, with vs. without system); count of avoided re-derivations; estimated effort saved. This may be the easiest efficacy result to defend — it's denominated in *effort/rework*, not the harder-to-ground "decision quality" — which inverts the usual difficulty ordering and makes it a strong early demonstration. `[I]`
- **Impact-precision (the fidelity gate):** when the system estimates the blast radius of a proposed reversal, how accurate is it? Two asymmetric error modes (R9/R10): **under-scoping** (says safe, actually breaks downstream — false confidence, *worse than nothing*) and **over-scoping** (flags unaffected decisions — inflates apparent cost, induces change-paralysis). **Measure:** precision/recall of the dependency closure against ground-truth-affected decisions; specifically the under-scope (false-negative) rate, biased to near-zero. `[A]`
- **Success:** measurable rework reduction AND blast-radius recall high enough that under-scoping is rare, *without* over-scoping so chronic it induces paralysis.
- **Kill criterion:** if impact precision can't be tuned to avoid *both* false-confidence (under-scope) and change-paralysis (over-scope), dependency-impact analysis (S7) ships as advisory-only, not as a trusted cost estimate — and the "avoided ripple" value claim weakens to "drift detection only."
- **Strategic note:** rework-avoidance may be the **lead commercial proof** — it's legible ("we caught this before it cost you N weeks of rework"), quantifiable, and maps directly onto the "hidden cost made visible" wedge. Consider leading customer demonstrations with it.

---

## Part IV — Commercial validation (the market & business bets)

| ID | Provisional claim (rubric / arch) | Validation question | Method | Kill criterion |
|---|---|---|---|---|
| CV1 | **Core is novel at the mechanism level** (market scan) | Does a deeper, non-public-inclusive scan confirm no assembled competitor? | Targeted vertical scans (legal-tech, intel-analysis vendors, stealth/YC, defense-adjacent); expert interviews | A funded competitor doing structured completeness over swappable domains → reposition |
| CV2 | **Predicate A/B screen discriminates** (rubric §3–4) | Do real domains score where the rubric predicts, from the *unmet-need* vantage? | Score 5–8 real candidates with practitioners, not feature grids (RR5) | If scores don't separate build-candidates from commons → rubric is descriptive, not discriminating |
| CV3 | **Capacity-gap is the value driver, at decision-maker level** (rubric §6) | Is willingness-to-pay actually correlated with the *accessible*-capacity gap, independent of org size? | Customer discovery across buyer-shapes; measure WTP vs. measured accessible supply | If WTP tracks org size or raw stakes, not the gap → re-base the thesis |
| CV4 | **Buyer-shapes have the predicted motions** (rubric §7a) | Do solo / intrapreneur / OpEx / PE-channel behave as modeled (esp. PE one-to-many)? | Discovery interviews per shape; test the PE operating-partner channel hypothesis directly | If PE-channel doesn't convert to portfolio reach → drop it as the lead motion |
| CV5 | **Coverage assessed from buyer unmet-need, not vendor claims** (rubric §5) | In a "covered" domain, do practitioners report the existing solutions actually fail the job? | Practitioner interviews in a C2–C3 domain (founder platform is the C0 proof) | If "covered" domains genuinely satisfy buyers → coverage *is* near-disqualifying after all |
| CV6 | **Foundry/Lattice positioning (substrate, interrogative primitive)** (arch §0.1) | Does the platform-vs-product framing survive investor/customer scrutiny? | Test the narrative with 3–5 sophisticated investors/operators; watch for the "platform too early" objection | If the substrate story reads as over-engineering pre-revenue → lead with one pack, hold the platform narrative |
| CV7 | **Willingness to pay for rigor** (the commercial ACH-ghost) | Will buyers pay for completeness, or do they prefer fast/confident answers? | Pricing/concept tests; observe revealed preference, not stated | If buyers won't pay for rigor (only for speed/automation) → the DI-automation incumbents own the market; reposition |

---

## Part V — Sequencing, methods, and the riskiest bets

### V.1 Priority order (by risk-to-kill-the-thesis, not by ease)
1. **III.1 + III.2 + III.5 + III.6** — does completeness-forcing work on a single decision (III.1), does structural execution escape the ACH null (III.2), does the system reduce drift across a decision-*series* (III.5, the differentiator and efficacy hedge), AND does it avoid measurable rework via early detection + safe impact analysis (III.6, the most *quantifiable* claim and likely lead commercial proof)? *If all fail, nothing else matters; III.5/III.6 can carry the venture even if III.1 is weak.* Run on the export corpus + one real domain, single-user, Phase 1.
2. **AV5** — are target dimension spaces enumerable? (Same export-corpus dataset; cheap; gates the strong claim.)
3. **AV2** — engine/pack independence (Phase 3; the platform claim).
4. **CV1 + CV5 + CV7** — novelty, real coverage, and willingness-to-pay-for-rigor (the commercial kill-risks).
5. **Part VI graveyard screen** — once III.2 confirms the compliance-decay escape, run the screen to size the addressable class (research-and-positioning value; not on the critical kill-path but high strategic upside).
6. Everything else.

### V.2 Methods palette
- **The export corpus as primary dataset.** The dozens–hundreds of prior ChatGPT analyses are a labeled set of *applicability judgments* (which dimensions an author used vs. which the model added) — the single highest-value research asset, serving AV5, III.1, and the EVR seeding simultaneously. Mine it first.
- **Expert elicitation panels** for the III.1 ground-truth frames (the "team the system replaces").
- **Prototype A/B** for AV3/AV4/III.
- **Customer discovery by buyer-shape** for Part IV (Sarah Bellenger / ManageYou as a live C0 empowerment case; a PE operating partner for the channel test; the.garage population for intrapreneur/founder).
- **Implementation-science literature mining** for Part VI — search the *adoption-failure* literatures, not the method literatures (see VI.3).
- **Literature review** for Part I — annotated bibliography + claims-vs-evidence table as the standing artifact.

### V.3 The kill-criteria summary (what would end or pivot the venture)
- **Thesis-ending:** III.1 reproduces the ACH null result on *all* populations (experts and non-experts) → completeness-forcing doesn't help.
- **Strong-claim-ending (pivot to narrow tool):** AV5 shows target dimension spaces are irreducibly open → completeness degrades to heuristic prompting.
- **Platform-claim-ending (pivot to single product):** AV2 forces engine changes for the 2nd pack.
- **Commercial-ending (pivot positioning):** CV7 shows buyers pay only for speed/automation, not rigor → the DI-automation incumbents own it.
- Each has a *pivot*, not just a death — mostly toward a narrower, still-valuable single-domain tool.

### V.4 Reflexive note
This research program is itself a high-stakes, high-dimensional decision under uncertainty made by a small team without a world-class research staff — i.e., the exact ICP. The program is therefore a *hand-run instance of the system's own method*: enumerate the dimensions (architecture, efficacy, cognition, commercial), force the omitted ones into frame (the §0 tensions, the Gigerenzer regime, the ACH ghost), test boundaries, and surface uncertainty rather than fill it. If the system were built, validating it would be one of its own first analyses. `[I]`

---

## Part VI — The method-revival thesis (the "graveyard screen")

**The generalization.** The ACH ghost (§0.2) and design rationale are not two isolated disappointments; they are two instances of a *single recurring pattern*: a method that research shows *works*, that died in practice because it depended on **sustained, complete, multi-step human compliance in complex or long-horizon domains**. If the fatal flaw is compliance cost, and an LLM-driven system performs the capture-and-checking *structurally* (III.2), then **the entire class of compliance-failed methods becomes newly viable in a human+system hybrid.** The thesis: *the system does not merely help with decisions; it potentially resurrects a class of abandoned-but-sound rigorous methods by removing their shared point of failure.* `[I]` This is a larger and more defensible claim than the single-product framing, and it comes with its own falsifiable boundary (VI.2).

### VI.1 The screening predicate (what counts as a revivable "corpse")
A method is a candidate iff it matches **all five**: `[R]`
1. **Normatively sound** — research/theory says it improves the cognitive output when executed.
2. **Compliance-dependent** — efficacy requires sustained, complete, multi-step human execution.
3. **Complex / long-horizon domain** — applied where the burden compounds over time or scope.
4. **Documented adoption/fidelity gap** — the field literature records abandonment, step-skipping, partial application, or "de-implementation."
5. **Failure attributed to burden** — the stated cause is effort/discipline/upkeep, *not* the method being wrong.

This is the §3 domain-rubric move applied to *methods* rather than *domains*: a five-part predicate that turns a vague intuition ("lots of good methods don't get used") into an enumerable screen.

### VI.2 The second predicate (the kill criterion — not every corpse revives)
**The load-bearing-effort guard.** `[R]` For some methods the laborious human execution *is itself the mechanism of value* — the struggle generates the understanding, and automating it hollows the method out (the anchoring/over-reliance failure mode from the claims register, at the method level). A candidate only revives if removing the human-compliance burden **preserves** the efficacy. So each candidate gets a second test:
- *Does the value come from the human having *done the work*, or from the work *having been done*?* If the former, structural execution destroys it; if the latter, structural execution rescues it.
- **Kill criterion for the whole thesis:** if, across candidates, the compliance burden turns out to be load-bearing more often than not, the method-revival thesis collapses to "a few methods revive" — still useful, but not a class-level opportunity.

This guard is what keeps the thesis honest: it predicts *which* corpses stay buried, not just that some rise.

### VI.3 The discovery method (how to enumerate the full population)
The corpses are found by their **failure signature**, so the productive search is in the *adoption/implementation* literatures, not the method literatures. `[R]`
1. **Operationalize VI.1** as a checklist screen.
2. **Search implementation science** — medicine's discipline for "why don't proven things get used" — which may already hold partial catalogs of compliance-failed methods (and the *de-implementation* literature).
3. **Query method-name × {adoption, compliance, fidelity, abandonment, sustainability, de-implementation}** rather than method-name alone.
4. **Mine review articles that lament low uptake** of a rigorous method — each lament is a pointer to a corpse.
5. **Score each candidate** on VI.1, then on the VI.2 load-bearing-effort guard.
6. **Rank survivors** by (class size × per-method value × hybrid-feasibility) for the platform's pack roadmap.

### VI.4 Candidate corpses (illustrative — all `[A]`, pending the VI.3 grounded pass)
A non-exhaustive starting list to be confirmed/expanded by the implementation-science search. Each needs both predicates applied. `[A]`
- **ACH / structured analytic techniques** (Heuer/Pherson) — the seed case; already in §0.2.
- **Design rationale** (IBIS, gIBIS, QOC, ADRs) — explicit, well-documented adoption failure; the second seed.
- **Formal specification / formal methods** (Z, VDM, manual-era TLA+) — proven, under-adopted on maintenance burden.
- **FMEA / FMECA** — often *mandated* precisely because voluntary complete application decays (the mandate is the tell).
- **Decision analysis / decision conferencing** (Howard-style) — high value, niche adoption; elicitation burden is the named barrier.
- **Systematic review / evidence-synthesis protocols** (PRISMA, Cochrane) — completeness-dependent, brutally labor-intensive; *already* being revived via living reviews + AI-assisted screening (a visible revival-in-progress).
- **Structured differential diagnosis / clinical guideline adherence** — vast "why protocols aren't completed" literature; commercially live.
- **Morphological analysis (Zwicky); TRIZ; structured/dialectical inquiry & devil's-advocate methods** — enumerate-the-space methods with low sustained uptake.
- **Cognitive task analysis** — powerful, expensive, under-used.

`[I]` Rough count: ~10 beyond the two seeds from knowledge alone; the true population is likely larger once domain-specific protocols (engineering, medicine, law, finance, intelligence) are included via the VI.3 search.

### VI.5 Where the revival research already lives (fragmented — the white space)
`[I]` Active revival is happening, but **one method at a time, in domain silos, without the unifying thesis**:
- AI-assisted **systematic review** (living reviews, screening automation) — the most mature single instance.
- AI-assisted **formal methods / spec generation**.
- LLM-assisted **threat modeling / FMEA / hazard analysis** in safety engineering.
- The **tools-for-thought / cognitive-augmentation** stream (CHI 2025) reviving structured reasoning aids generally.

What is **not** found (from knowledge; verify in VI.3): anyone who has *named the general pattern*, built the *screening predicate*, and treated compliance-failed methods as a *single enumerable, newly-viable class*. The pieces exist, fragmented; the **assembly and the general claim are the white space** — structurally the same finding as the platform's own market position.

### VI.6 Novelty location (claim narrowly)
`[R]` Not novel: that good methods go unused (implementation science owns this); that AI can assist any single one of these methods (revivals in progress). **Novel (to verify):** the *general thesis* that compliance-failure is a shared, now-removable fatal flaw, plus the *screen* that enumerates which methods it applies to and the *guard* that predicts which it does not. The contribution is the unifying frame and the predicate, not any single revival.

### VI.7 Deliverables
1. The two-predicate **graveyard screen** (VI.1 + VI.2) as a reusable instrument.
2. A **scored catalog** of compliance-failed methods from the implementation-science search (VI.3).
3. A **ranked revival roadmap** — which corpses, in which order, map to platform packs.
4. A stated **boundary** (the load-bearing-effort exception): which methods the thesis predicts will *not* revive, and why.

---

## Appendix — Standing artifacts this program produces
1. Annotated bibliography keyed to architecture components (Part I).
2. Claims-vs-evidence table (every system claim → supporting + disconfirming literature → status).
3. Labeled applicability-judgment dataset mined from the export corpus (feeds AV5, III.1, EVR).
4. Efficacy experiment results (III.1–III.4) — the go/no-go on the core thesis.
5. Validated (or revised) domain-screening rubric with real, practitioner-sourced scores.
6. A stated applicability boundary for the product (where it helps, where it doesn't).
7. The **graveyard screen + scored catalog of compliance-failed methods** (Part VI) — the two-predicate instrument, the implementation-science-sourced candidate catalog, and the ranked revival roadmap.
