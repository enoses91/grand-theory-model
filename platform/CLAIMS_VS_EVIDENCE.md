# Claims-vs-Evidence Register

**Status:** living document · **Version:** 0.2 (Claude draft for Perplexity refinement) · **Date:** 2026-06-28 · **Owner:** Eric Enos
**Companions:** `UNIFIED_PLATFORM_ARCHITECTURE.md`, `DOMAIN_SCREENING_RUBRIC.md`, `RESEARCH_PROGRAM.md`
**Purpose:** the standing artifact named in the research program (Part I). Every load-bearing claim the system rests on → its supporting evidence, its disconfirming evidence/tension, a status, a confidence, and a **specific Perplexity task** to verify, deepen, or fill.

**Division of labor:** this draft populates what *this design process* could already determine from grounded sources. It deliberately does **not** assert citations it could not see. The `Perplexity Tasks` column is the handoff — each is a concrete retrieval/verification job, not a vague "research more."

**v0.2 change:** added E10/E11 (the method-revival "graveyard" thesis: compliance-failed methods as an enumerable class; the load-bearing-effort guard) and M7 (the class is unnamed/unassembled), pairing with research program Part VI. Upgraded E9 to ANALOGY (transferable change-impact/change-propagation literatures identified) and expanded E8 with the design-rationale precedent. Citation set extended (design rationale, change propagation, implementation science, irreversibility, strategy-process drift).

---

## Legend

**Status:** `SUPPORTED` (evidence found, this session) · `MIXED` (evidence cuts both ways) · `DISCONFIRMED` (evidence against) · `UNTESTED` (the system's bet; no direct evidence yet) · `OPEN` (decidable but undecided) · `DEFINITIONAL` (true by construction) · `ANALOGY` (supported by structural precedent, not direct evidence)

**Confidence** = Claude's confidence in the *current status assignment*, not in the claim's truth. `H/M/L`.

**Source-trust flags on evidence:** `[seen]` Claude read a snippet/source this session · `[mem]` asserted from training, must verify · `[cited]` seen only as a secondary citation, primary not read.

---

## Perplexity refinement protocol (how to use the handoff column)

For each row, Perplexity should: (1) verify the named works exist and are correctly attributed (replace `[mem]`/`[cited]` with primary sources + DOIs); (2) find the *strongest disconfirming* source, not only confirming ones (falsification over validation); (3) update Status + Confidence; (4) flag any claim where the evidence base has shifted since 2026-06. Return a redlined version with citations in a consistent format.

---

## 1. Cognitive foundations

| ID | Claim | Status | Supporting (determinable now) | Disconfirming / tension | Conf | Perplexity tasks |
|---|---|---|---|---|---|---|
| C1 | Humans cannot jointly process more than ~4 related variables/dimensions in parallel | SUPPORTED | Halford, Wilson & Phillips 1998 (BBS), relational-complexity theory; soft limit ≈ one quaternary relation `[seen]`; Halford/Cowan/Andrews 2007 `[seen]` | Exact number contested (Cowan ~4 vs Miller 7±2 for storage); "soft" limit | H | Pull Halford 1998 + 2005 + 2007 primaries; confirm the ~4 figure and the "statistical interaction accuracy falls at 4-way" result (Halford et al. 2005); get effect sizes |
| C2 | The dimensional limit is domain-general | SUPPORTED | Relational-complexity metric reported domain-general across content domains `[seen]` | — | M-H | Verify domain-generality claim across the cited content domains; find any domain where it fails |
| C3 | Beyond the limit, humans serialize/chunk — dropping the joint interaction (the omission mechanism the system targets) | SUPPORTED | Halford "segmentation/conceptual chunking" beyond capacity `[seen]` | Chunking may *preserve* not drop, if well-structured | M-H | Confirm that segmentation loses joint-interaction information specifically; this is load-bearing for the "omission" thesis |
| C4 | Externalizing the frame raises the effective dimensionality an analyst can work with | UNTESTED | Logical extension of C1–C3; Engelbart augmentation tradition `[seen]` | No direct empirical test located | M | Find any study where external representation raised joint-dimensional reasoning (cognitive offloading, distributed cognition lit — Hutchins, Kirsh) |
| C5 | Experts under *time* pressure pattern-match (RPD), not enumerate | SUPPORTED | Klein NDM/RPD; RPD reportedly accounted for the large majority of fireground decisions; 10–20 yrs expertise `[seen]` | This is the NDM tension — bounds the system to time-*permitting* regime (resolved via 3-axis pressure decomposition) | H | Confirm the 80–90% fireground figure and its source; find NDM work on the *time-permitting* expert regime (does deliberate enumeration return when time allows?) |
| C6 | Specialization depth trades off against breadth (burden of knowledge) | MIXED | Jones "burden of knowledge" (rising age-at-first-invention, team size) `[mem]` | Counter-evidence on generalists/polymath resurgence possible | M | Verify Benjamin Jones papers (2009 burden of knowledge); find counter-evidence; quantify the breadth/depth tradeoff |
| C7 | Ideological/methodological priors systematically (directionally) bias which dimensions an analyst drops | UNTESTED | Plausible from disciplinary-silo observation; not yet grounded | Risk of confirmation bias in the claim itself | L-M | Find empirical work on disciplinary framing effects / paradigm-bounded analysis (Kuhn-adjacent, but empirical); does omission cluster by training? |

---

## 2. Decision under uncertainty & core efficacy

| ID | Claim | Status | Supporting (determinable now) | Disconfirming / tension | Conf | Perplexity tasks |
|---|---|---|---|---|---|---|
| E1 | Structured analytic techniques reliably improve judgment | DISCONFIRMED | — | Mandel; Dhami: ACH showed **no advantage over control**, analysts skipped steps `[seen]` (the "ACH ghost") | H | Pull Mandel & Dhami primaries; find the *full* SAT efficacy literature (any positive RCTs?); this is the most important tension to map completely |
| E2 | **Structural execution** (engine runs the completeness check, not the analyst) escapes the compliance-decay that sank ACH | UNTESTED | Mechanism hypothesis; ACH failures partly attributed to step-skipping `[seen]` | No test exists; LLM-filled cells may reintroduce ACH's subjectivity | M | Find any work on automation-of-structured-technique-execution and whether it improves on human execution |
| E3 | Forcing dimensional completeness improves decision quality (single decision) | UNTESTED | Indirect (C1–C4) | E1 (ACH null), E5 (Vaccaro) both cut against | L-M | This is the III.1 experiment; no substitute for primary testing. Find nearest analogs (checklist efficacy — Gawande/Pronovost) |
| E4 | More completeness can *degrade* decisions in some regimes (less-is-more) | SUPPORTED | Gigerenzer ecological rationality / fast-and-frugal `[mem]` | — (this is a boundary, not a threat) | M-H | Verify Gigerenzer less-is-more results; identify the conditions (noise/uncertainty) where added info hurts → product applicability boundary |
| E5 | Human-AI combinations often fail to beat the best of human-or-AI alone | MIXED | Vaccaro, Almaatouq & Malone 2024 meta-analysis (title implies finding) `[cited]` | Must be stratified by AI-role × dimensionality × time × unit; likely dominated by recommendation-centric, atomic, low-dim tasks | M | **High priority:** get the Vaccaro 2024 primary; extract the moderator analysis; locate the cells where combination *does* help; map the target regime into them |
| E6 | Process-oriented/interrogative support differs from recommendation-centric, and recommendation fails hardest in high-uncertainty decisions | SUPPORTED | Zhang & Reicherts 2025 (CHI tools-for-thought); ExtendAI vs RecommendAI; overreliance rises in difficult decisions `[seen]` | — (supports the interrogative design) | M-H | Pull the CHI 2025 T4T workshop papers; get the overreliance-in-difficult-decisions result precisely; find the broader tools-for-thought corpus |
| E7 | Early AI support creates an anchor that inhibits independent reasoning (anchoring contamination) | SUPPORTED | Reicherts et al. 2025 (timing-of-support finding) `[seen]` | — (corroborates the founder-platform anchoring-contamination mechanism) | M | Verify the anchoring-timing result; connect to classic anchoring (Tversky & Kahneman) and to founder-platform IP item |
| E8 | Tracking coherence across a decision-*series* reduces drift (the differentiator) | UNTESTED | Atomic-decision literature structurally can't speak to it (the point). Nearest precedents: strategy-process drift (Mintzberg, deliberate-vs-emergent) and design rationale (IBIS) as capture-to-check-later — the latter with a documented *adoption-failure* record `[mem]` | Absence of direct literature = opportunity OR unstudied-because-intractable; design rationale's failure warns the capture burden is the hard part | L-M | Find cross-decision-consistency / commitment-drift work in longitudinal decision programs (Mintzberg 1978; strategic-drift lit); confirm design-rationale is the nearest checkable-coherence precedent and why it failed |
| E9 | Early drift detection avoids downstream rework (the most quantifiable value claim) | ANALOGY | Mature transferable literatures exist: software change-impact analysis (Bohner & Arnold 1996); engineering change propagation (Clarkson, Simons & Eckert 2004 — absorber/carrier/multiplier typology directly borrowable); Boehm cost-of-change curve `[mem]` | Cost-of-change-curve steepness is empirically contested → bounds (doesn't inflate) the rework-avoidance value | M | Pull Clarkson et al. 2004 + Bohner & Arnold 1996; borrow the change-propagation typology + metrics for S7; find the contested-steepness critiques of the cost-of-change curve |
| E10 | Compliance-failed-but-sound methods form a recurring pattern (the "graveyard"); ACH and design rationale are two instances, generalizable to a *class* | SUPPORTED (seeds) / ANALOGY (class) | Design-rationale adoption-failure / "capture problem" (Conklin & Begeman gIBIS; QOC) `[mem]`; ACH (E1) is the second seed `[seen]` | The *class* claim needs enumeration; some methods may have failed for reasons other than compliance | M (seeds) / L (class) | Pull design-rationale capture-problem studies; mine **implementation science / de-implementation** literature for the full population; apply the Part VI five-part predicate to enumerate |
| E11 | Removing the human-compliance burden *preserves* a method's efficacy (so structural execution revives it) — but **not always** | UNTESTED | Mechanism (E2/III.2); design-rationale evidence suggests compliance was the binding constraint there `[mem]` | **Load-bearing-effort exception:** for some methods the human *doing the work* IS the value (anchoring/over-reliance at the method level) → automation hollows it out | L-M | Per candidate corpse, find evidence on whether efficacy came from *process-of-doing* vs *artifact-produced*; this is the Part VI.2 kill-criterion guard — defines which corpses stay buried |

---

## 3. Architecture

| ID | Claim | Status | Supporting (determinable now) | Disconfirming / tension | Conf | Perplexity tasks |
|---|---|---|---|---|---|---|
| AR1 | A domain-independent engine over swappable domain packs is achievable | ANALOGY | Palantir Foundry, Anduril Lattice as structural precedents `[seen]`; OWL/Datalog reasoners over swappable ontologies `[mem]` | Unproven for *this* interrogative primitive; "platform" earned only at 2-packs-on-unchanged-engine | M | Find published architectures of engine/ontology separation; any precedent for *completeness*-engine portability across domains |
| AR2 | BFO is the right meta-ontology upper layer | OPEN | BFO is ISO/IEC 21838-2, permissively licensed, 25-yr track record `[seen]` | DOLCE alternative; BFO may be too heavy; kinds may not specialize cleanly | M | Confirm BFO license string; compare BFO vs DOLCE for this use; find critiques of BFO adoption cost |
| AR3 | Completeness-checking requires a closed/enumerable dimension space | DEFINITIONAL | True by construction (can't diff against an open set) | Whether *real domains* are enumerable is empirical (AV5) | H | n/a for the logic; Perplexity to find domains where dimension enumeration provably fails (gives the boundary) |
| AR4 | Completeness remains analyst-dependent even in the most structured methods | SUPPORTED | STPA practitioners concede completeness depends on participant expertise/imagination; no single hazard method is complete `[seen]` | — (motivates the externalization, also bounds the claim) | H | Pull Leveson STPA + the HAZOP/STPA/FRAM comparison papers; get the "no method is complete" consensus precisely |
| AR5 | Deterministic typed pipeline beats agent loop for auditability/reproducibility | UNTESTED | Reasoned (determinism → reproducibility) `[mem]` | Not empirically compared here (AV3) | M | Find evidence on determinism vs agentic orchestration for auditable analytical workflows |
| AR6 | Infra continuity risk is real (depend on interfaces, not engines) | SUPPORTED | RDFox→Samsung (2024); Kùzu→Apple acqui-hire, repo archived Oct 2025 `[seen]` | — | H | Monitor for further consolidation; verify current status of named alternatives (LanceDB, Chroma, Neo4j, Soufflé) |

---

## 4. Commercial & market

| ID | Claim | Status | Supporting (determinable now) | Disconfirming / tension | Conf | Perplexity tasks |
|---|---|---|---|---|---|---|
| M1 | No public commercial instance of the specific structured operation (enumerable-frame completeness + boundary-sensitivity + swappable packs) | SUPPORTED | Four-angle scan this session found none `[seen]` | Absence-of-evidence (can't see classified/stealth); novelty is mechanism-level only | M | **High priority, ongoing:** deep vertical scans (legal-tech, intel-analysis vendors, YC/stealth, defense-adjacent); set a standing alert |
| M2 | The *concept* ("AI surfaces blind spots") is crowded and non-novel | SUPPORTED | theblindspotai.com, FunBlocks, devil's-advocate tools, CHI tools-for-thought `[seen]` | — (positioning consequence: claim mechanism, not concept) | H | Catalog the concept-level competitors; confirm none do the *structured* operation |
| M3 | The *vision* is Engelbart's (1962), 60 years old — claim lineage, not novelty | SUPPORTED | Engelbart "Augmenting Human Intellect" 1962; Licklider 1960; Bush 1945 `[seen]` | — | H | Verify primary sources; trace the augmentation-not-automation lineage to present (Bret Victor, tools-for-thought) |
| M4 | Decision-maker-level capacity gap (not org size) drives willingness to pay | UNTESTED | Hypothesis from buyer-shape analysis | No customer-discovery data yet (CV3) | L | n/a literature; this is primary customer discovery, not retrieval. Perplexity: find analyst-staffing/access data by role to size the gap |
| M5 | Buyers will pay for *rigor* (completeness), not only speed/automation | OPEN | — | The DI-automation market (FICO/Aera/SAS) sells speed/automation; the "commercial ACH ghost" | L-M | Find evidence on willingness-to-pay for decision *quality/rigor* vs *speed*; any analog products that monetized rigor |
| M6 | Decision-*series* domains (long, expensive-to-reverse chains) are underserved | UNTESTED | Inference; atomic-tool landscape | — | L-M | Scan for tools targeting longitudinal decision programs (PE value-creation software, stage-gate tools, litigation strategy platforms) — assess coverage from unmet-need vantage |
| M7 | The compliance-failed methods form a single enumerable, newly-viable **class** (method-revival thesis), and no one has named/assembled it | UNTESTED | Revivals exist but fragmented/siloed — AI-assisted systematic review, formal-methods/spec generation, LLM-assisted FMEA/threat-modeling `[mem]`; no unifying frame found `[mem]` | Absence-of-evidence (could be unnamed because unviable, not merely unspotted); the Part VI.2 guard may shrink the class | L | Search for any prior "structured-methods-revived-by-AI" *general* framework; confirm the revivals are siloed; size the class via implementation science (Part VI.3) |

---

## 5. Load-bearing claims (resolve these first)

The venture's survival depends disproportionately on a few rows. In priority order: `[R]`

1. **E2 + E3 + E8 + E9** — does completeness-forcing work, does structural execution beat ACH's null, and does the *series* primitive (coherence + rework-avoidance) deliver measurable value? *If all fail, the thesis fails.* (E8/E9 can carry it even if E3 is weak.)
2. **E5 (Vaccaro stratification)** — the strongest external disconfirming evidence; must be subsetted, not accepted whole.
3. **AR3 / AV5 enumerability** — gates the strong completeness claim.
4. **M1 + M5** — novelty (mechanism-level) and willingness-to-pay-for-rigor: the two commercial kill-risks.
5. **E10 + E11 + M7 (the graveyard thesis)** — *not* on the critical kill-path, but the highest strategic upside: if E2 confirms the compliance-decay escape, E10/E11/M7 size an addressable *class* of revivable methods. E11 is the honest guard (the load-bearing-effort exception bounds the class). Resolve after the core efficacy cluster, before scaling the pack roadmap.

Everything else is supporting structure.

---

## 6. Citations to verify (Claude-determinable starting set)

Perplexity to confirm, correct, and complete with primary references + DOIs. Flags indicate Claude's source contact this session.

- Halford, Wilson & Phillips (1998), *Processing capacity defined by relational complexity*, Behavioral and Brain Sciences `[seen]`
- Halford, Baker, McCredden & Bain (2005), statistical-interaction complexity `[cited]`
- Halford, Cowan & Andrews (2007), *Separating cognitive capacity from knowledge* `[seen]`
- Cowan (2001), working-memory capacity ~4 `[mem]`
- Miller (1956), 7±2 — historical only `[mem]`
- Klein (1998), *Sources of Power*; Klein et al. (1993), *Decision Making in Action* — NDM/RPD `[seen]`
- Heuer (1999), *Psychology of Intelligence Analysis* — ACH `[seen]`
- Mandel; Dhami et al. — ACH empirical critiques `[seen]`
- Gigerenzer — ecological rationality / fast-and-frugal `[mem]`
- Tetlock, *Expert Political Judgment* / superforecasting — foxes vs hedgehogs `[mem]`
- Vaccaro, Almaatouq & Malone (2024), *When combinations of humans and AI are useful*, meta-analysis `[cited]` — **verify priority**
- Zhang & Reicherts (2025), CHI T4T workshop — process-oriented vs recommendation-centric; ExtendAI `[seen]`
- Reicherts et al. (2025), anchoring/timing-of-support `[seen]`
- Leveson — STPA/STAMP; Kletz — HAZOP; Hollnagel — FRAM `[seen]`
- Engelbart (1962), *Augmenting Human Intellect: A Conceptual Framework* `[seen]`; Licklider (1960), *Man-Computer Symbiosis* `[mem]`; Bush (1945), *As We May Think* `[mem]`
- Jones, B. — *burden of knowledge* `[mem]`
- Arp, Smith & Spear — *Building Ontologies with BFO* `[mem]`; BFO = ISO/IEC 21838-2 `[seen]`
- **Decision-dependency / drift (E8–E9):** Mintzberg (1978), *Patterns in Strategy Formation* — deliberate vs emergent (drift) `[mem]`; Staw (1976), escalation of commitment; Arkes & Blumer (1985), sunk-cost `[mem]`; Sydow, Schreyögg & Koch (2009), organizational path dependence `[mem]`; Steward (1981)/Eppinger, Design Structure Matrix `[mem]`
- **Change-impact / rework (E9):** Bohner & Arnold (1996), *Software Change Impact Analysis* `[mem]`; Clarkson, Simons & Eckert (2004), *Predicting Change Propagation in Complex Design* `[mem]`; Boehm, cost-of-change curve `[mem]`; Cooper / Lyneis & Ford (2007), system-dynamics rework cycle `[mem]`
- **Irreversibility / reversal cost (rubric A7):** Dixit & Pindyck (1994), *Investment under Uncertainty*; Arrow–Fisher–Henry quasi-option value `[mem]`
- **Graveyard thesis (E10–E11, M7):** Conklin & Begeman, gIBIS / design-rationale capture problem `[mem]`; MacLean et al., QOC `[mem]`; implementation-science & de-implementation literature (Proctor et al.; Niven et al.) `[mem]`; AI-assisted systematic review / living reviews `[mem]`

---

## 7. Reflexive note

This register is itself the system's method applied to the system: enumerate the claims (dimensions), force the disconfirming evidence into frame (not just the confirming), mark uncertainty explicitly rather than fill it, and track which claims later claims depend on (E3 depends on C1–C4; M4 depends on M-claims; E11 is the honest guard on E10/M7). Maintaining it *is* a hand-run instance of the coherence-across-a-series discipline the product is meant to automate. `[I]`
