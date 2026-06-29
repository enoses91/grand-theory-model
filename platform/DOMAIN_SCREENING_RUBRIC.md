# Domain Screening Rubric — Which Domains Should Become Packs

**Status:** design draft · **Version:** 2.3 · **Date:** 2026-06-28 · **Owner:** Eric Enos
**Companion to:** `UNIFIED_PLATFORM_ARCHITECTURE.md`
**Purpose:** a repeatable, machine-checkable screen for deciding which domains the completeness engine should be extended to — and which of those can be commercialized.
**Claim discipline:** `[F]` fact · `[I]` inference · `[A]` assumption · `[R]` recommendation.

**v2.3 change:** A7 now carries a reversal-cost multiplier (value ∝ interdependence × reversal_cost); long chains with expensive/irreversible reversals are the bullseye.
**v2.2 change:** added A7 (decision-series interdependence) to Predicate A — the differentiation criterion; the system's unique primitive is cross-decision coherence over long dependency chains, not single-decision quality.
**v2.1 change:** added A6 (decision time-budget) to Predicate A, near-gating — resolves the NDM/RPD scoping (engine serves the time-permitting regime, cedes time-critical to expert pattern-match). 
**v2 changes:** G3 gate ("not already served cheaply") replaced by a scored **coverage spectrum × platform-delivery advantage** pair; capacity gap re-based to the **decision-maker's accessible** supply, not org total; Predicate B now models a **buyer–user pair** with a **sale-path-length** term; new **buyer-shape** classifier (solo / intrapreneur / OpEx / PE-channel). Org size is treated as orthogonal to fit.

---

## 0. Framing principle (read first)

The engine (the "Grand Theory" predicate) is a **commons, non-commercial by nature.** It evolved before, and underneath, the PG product buildout — it is the generative model, not a deliverable. `[F]` (per owner)

**Commercial value never lives in the engine. It lives in `engine × domain-with-an-accountable-buyer`.** `[R]`
A domain clears two independent, uncorrelated predicates:

- **Predicate A — Fit:** does forced dimensional completeness add value here at all?
- **Predicate B — Commercial:** does a buyer–user pair exist who will pay for it?

The originating domain (Grand Theory itself) proves they're independent: maximal fit, near-zero commercial, because no accountable owner bears a visible cost of an incompletely-framed essay. `[I]`

**The synthesizing lens — capacity gap, computed at the *decision-maker* level:**
`value ∝ (decision_stakes × dimensionality) ÷ analytical_capacity_accessible_to_this_decision_maker_for_this_decision`.
Org size is **orthogonal** to fit. A starved intrapreneur inside a Fortune 100, a Six Sigma lead with broad mandate but narrow analytical breadth, or a PE-portfolio executive whose value-creation thesis demands decisions while stripping the team to make them — each can have a *larger* effective gap than a funded startup founder who at least controls their own (small) resources. The gap is local to the decision-maker, even when the org is a whale. `[I]`

**The high-leverage user is not necessarily the buyer.** In the solo case they collapse into one person; in the enterprise case they split (user = champion/intrapreneur/black-belt; buyer = sponsor/procurement/VP/PE operating partner). Predicate B therefore scores a *pair*, not a single owner. `[R]`

---

## 1. How to use the rubric

1. **Apply the gates** (§2) — now only two hard gates (enumerability, formalization). Coverage is no longer a gate.
2. **Score Predicate A** (§3) and **Predicate B** (§4): each criterion 0–3, weighted, normalized to 0–100.
3. **Score the coverage × platform-advantage pair** (§5) — the former G3 gate, now a scored interaction.
4. **Compute the decision-maker capacity gap** (§6) as the value-magnitude lens.
5. **Classify the buyer shape** (§7a) and **commercial shape** (§7b) → motion, check size, cycle length, GTM difficulty.
6. **Read the priority** (§8).

**Selection rule:** `[R]` Fit is abundant; an accountable buyer–user pair with a real, accessible capacity gap is scarce. **Lead with Predicate B as the binding constraint; filter by Predicate A.**

---

## 2. Gates (binary; must pass)

| ID | Gate | Fail → | Why it's a gate |
|---|---|---|---|
| **G1** | **Enumerable dimension space** | DISQUALIFY | Completeness is uncomputable against an open set. Hard boundary. `[R]` |
| **G2** | **Loose formalization** — expert judgment, not self-completing through formal validity | **NARROW-SCOPE flag** (not disqualify) | Formally self-completing domains (core math/physics) leave only the narrow assumption/domain-of-validity audit. `[I]` |

> *Former G3 ("not already served cheaply") is removed as a gate* — existing coverage does not disqualify a domain if platform-delivery advantage is high (§5). The Foundry/Lattice wedge is precisely entering covered verticals by delivering the same value faster on a reusable engine. `[R]`

---

## 3. Predicate A — Fit (does the engine add value?)

0 (absent) · 1 (weak) · 2 (moderate) · 3 (strong).

| ID | Criterion | Weight | Test |
|---|---|---|---|
| A1 | **Cross-dimensionality** | 3 | Spans more dimensions than one lens/head (~3D/~4-attribute ceiling) can hold jointly? |
| A2 | **Siloed, predictable omissions** | 3 | Identifiable lenses systematically drop the same dimension families → non-trivial, partly pre-loadable residual? |
| A3 | **Stakes on the omissions** | 2 | Do dropped dimensions actually change outcomes (vs. pedantry)? |
| A4 | **Recurring analysis structure** | 2 | Same *kind* of analysis runs repeatedly → frame-building amortizes? |
| A5 | **Scope-manipulability** (amplifier) | 1 | P-hackable by boundary/scale selection → S4 boundary-sensitivity pass has bite? |
| A6 | **Adequate decision time-budget** | 3 | Does the *characteristic* decision in this domain get hours-to-weeks, not seconds-to-minutes? Time-critical decisions belong to expert pattern-match (RPD), not the engine — *regardless* of dimensionality. (See arch §0.1 / research §0.1: "pressure" = temporal × stakes × dimensional; the engine serves stakes×dimensional **with temporal slack**.) `[I]` |
| A7 | **Decision-series interdependence × reversal cost** | 3 | Is the characteristic unit a *long, interdependent series* of decisions (early commitments constrain later ones)? Score the interdependence 0–3, then **multiply by a reversal-cost factor** (see below). Longer chains *with expensive reversals* → highest value, because the system's payoff is the *avoided ripple*, which grows with both chain length and per-reversal cost. `[I]` |

`FitRaw = Σ(score × weight)` · max 39 (A7 contributes its multiplied value, capped at 3 × weight 3 = 9) · `FitNorm = FitRaw ÷ 39 × 100`.

**A7 reversal-cost multiplier.** Score interdependence `i` (0–3), then apply factor `r`:
| r | Reversal cost of a typical decision in the series | Effect |
|---|---|---|
| 0.5 | Cheap/recoverable (reversible with little downstream rework) | halves the interdependence score |
| 1.0 | Moderate (reversal ripples but is tractable) | neutral |
| 1.3 | Expensive / irreversible (regulatory filings, capital allocation, clinical protocol, public commitments) | amplifies, capped at 3 |
`A7_score = min(3, round(i × r))`. The bullseye is **long chains × expensive reversals** — where early detection prevents a catastrophic, hard-to-unwind ripple. `value ∝ interdependence × reversal_cost`. `[I]`

> **A6 is near-gating.** A score of 0 (characteristically time-critical: trading, triage, tactical command) makes the domain poor fit *even at maximal dimensionality* — the engine cedes that regime to RPD. Treat A6=0 as a strong down-weight, not just one low criterion. The bullseye is **high dimensionality (A1) × adequate time (A6) × real stakes (A3) × interdependent series (A7)**.
>
> **A7 is the differentiation criterion.** A domain whose characteristic unit is a *single* decision pits the system against a crowded atomic-decision field (and the ambiguous human-AI-combination evidence). A domain of *long interdependent series* (founder journey, PE value-creation plan, clinical care-pathway, litigation strategy, stage-gated program) is where the system occupies a primitive the landscape has largely not — and where the capacity gap compounds over time. The **reversal-cost multiplier** sharpens it further: long chains where reversals are *expensive or irreversible* (regulatory, capital, clinical, public-commitment) are the bullseye, because the system's payoff is the avoided ripple. Weight A7 heavily when choosing among otherwise-similar candidates.

---

## 4. Predicate B — Commercial (will a buyer–user pair pay?)

| ID | Criterion | Weight | Test |
|---|---|---|---|
| B1 | **Accountable cost-bearer exists** | 4 | Does someone bear a *visible, attributable* cost of an incomplete frame? (User, buyer, or the org via them.) |
| B2 | **No accessible alternative** | 3 | Is the path to the missing dimensions a team/consultant/hire the decision-maker can't access *for this decision* (even if it exists elsewhere in the org)? |
| B3 | **High-context, low-reach decision-maker** | 3 | Expert in the *problem* space, not the *solution* space — stranded across the cross-domain gap? |
| B4 | **Willingness/ability to pay** | 2 | Recurrence × ownership, OR single irreversible high-stakes decision; AND a budget the user can reach or a sponsor who'll fund. |
| B5 | **Legible output** | 2 | "Here's what your analysis missed and whether it survives a wider boundary" — directly actionable and visible to *both* user and buyer? |
| B6 | **Short buyer→user path** | 2 | How few stakeholders between "user feels the gap" and "someone pays"? Solo = 1 step (max). Multi-stakeholder enterprise = longer (lower). *Bigger check ≠ better if the path is long.* |

`CommRaw = Σ(score × weight)` · max 48 · `CommNorm = CommRaw ÷ 48 × 100`.

---

## 5. Coverage spectrum × platform-delivery advantage (former G3, now scored)

Existing coverage is a **gradient assessed from the buyer's *unmet-need* vantage, not the vendor's *claimed-coverage* vantage.** "Reasonably complete on a feature grid" and "didn't provide what I needed" can both be true — and the founder-platform case proves it (built because the assembled market didn't deliver). A feature-checklist scan sees *presence*; only the practitioner vantage sees *adequacy*. `[I]`

**Coverage level (C), 0–3:**
| C | Level | Meaning |
|---|---|---|
| 0 | None / self-assembly-only | no one sells it; buyers hand-assemble or go without (founder-platform case). Highest novelty, highest market-education cost. |
| 1 | Fragmented | pieces across point tools, none integrated; buyer stitches. **Sweet spot** — demand proven, integration gap is the wedge. |
| 2 | Partial | one or two players cover much of it, with real gaps. |
| 3 | Reasonably complete | competent integrated solution exists. |

**Platform-delivery advantage (P), 0–3:** does building-it-as-a-pack-on-the-engine materially beat how incumbents built it (cost, speed, cross-domain reuse, completeness/provenance the incumbent lacks)?

**Interaction read (not a simple sum):**
- **Attractive:** low C (0–1) × high P (2–3) → open or fragmented market + real delivery edge.
- **Trap:** high C (3) × low P (0–1) → served market, no edge → *this* is the only true disqualifier (the old G3, now correctly conditional).
- **Viable even when covered:** high C × high P → the Foundry wedge (others built the whole stack; you ship it as a pack).

`CoverageFlag = "disqualify" if C==3 and P<=1 else "score"`. Otherwise carry `(C, P)` into the priority read as a multiplier band (§8).

---

## 6. Decision-maker capacity gap (value magnitude)

```
demand  = decision_stakes (0–3) × dimensionality (0–3)              # 0–9
supply  = analytical_capacity_ACCESSIBLE_to_this_decision_maker     # 0–3
          # 0 = none reachable for this decision; 3 = world-class team on call
gap     = demand − (supply × 3)                                     # −9 … +9; positive = underserved
```

- **Re-based to accessibility, not org total.** A whale's intrapreneur with `supply=0` (can't get the central team's time) has the same gap as a solo founder with `supply=0` — org size doesn't enter. `[I]`
- **Large positive gap** → core ICP regardless of org size.
- **Gap ≤ 0** → the decision-maker already has reachable analytical supply → low value-add. (Watch RR2: inside large orgs, *perceived* internal capacity often exceeds *accessible* capacity — measure what they can actually commission for *this* decision today.)

---

## 7a. Buyer-shape classifier (motion / check / cycle)

Same engine, same primitive, same predicate — different buyer structure and sales motion. `[R]`

| Shape | High-leverage user | Buyer | Gap source | Motion | Check | Cycle |
|---|---|---|---|---|---|---|
| **Solo / small co.** | = buyer | self | owns few resources | self-serve / PLG | small | short |
| **Intrapreneur / champion** | innovation lead, new-line owner | program sponsor / VP | starved-amid-plenty; rationed access | land-and-expand in the whale | mid | mid |
| **Process / OpEx** | Six Sigma / CI lead | function budget | broad mandate, narrow analytical breadth | function-led, repeatable | mid | mid |
| **PE value-creation** | portfolio-co executive | PE operating partner | thesis demands decisions, strips capacity | **portfolio channel, one-to-many** | large | mid-long |

`[I]` The **PE value-creation** shape may be the highest-leverage commercial entry: one sophisticated, cost-justification-fluent buyer → portfolio-wide reach, against a buyer whose entire mandate is the value-creation-under-constraint contradiction the engine resolves. It converts a single sale into a channel.

## 7b. Commercial shape (GTM difficulty)

| Shape | Buyer disposition | Value gap | Sale | Note |
|---|---|---|---|---|
| **Empowerment** | non-expert, no accessible alternative | larger | easier — grateful buyer | richer vein; but raises the fidelity bar (RR3) |
| **Red-team / augmentation** | expert team checking its own work | smaller | harder — defensive buyer | intelligence, due diligence, safety review |

---

## 8. Priority and interpretation

```
Priority_base = (FitNorm ÷ 100) × (CommNorm ÷ 100)          # 0–1, both required
Priority      = Priority_base × coverage_band(C, P)         # see §5
                # coverage_band: attractive →1.0 · viable-covered →0.85 · trap →disqualify
```

| Priority | Band | Action |
|---|---|---|
| ≥ 0.55 | **Build candidate** | rank by capacity gap; choose entry by buyer-shape and cycle/check fit |
| 0.30–0.54 | **Watch / narrow** | one predicate soft; viable as narrow-scope or with a sharper buyer–user pair |
| < 0.30 | **Engine-only / research** | high-fit-low-commercial (commons) OR gate/coverage disqualified |

---

## 9. Worked examples (does the rubric discriminate?)

Illustrative `[A]` — to show the screen separates cases, not as final assessments.

| Domain | Gates | Fit | Comm | C×P | Gap | BuyerShape | CommShape | Priority | Read |
|---|---|---|---|---|---|---|---|---|---|
| **Grand Theory** (predicate) | pass | ~95 | ~15 | — | +6 | — | — | **0.14** | Engine-only / commons. Max fit, no accountable cost-bearer. |
| **Founder Platform** | pass | ~85 | ~80 | C0×P3 | +6 | solo / intrapreneur | empowerment | **0.68** | Build candidate. Owner-built because market didn't deliver → C0, max novelty. |
| **PE value-creation analysis** | pass | ~80 | ~80 | C1×P3 | +9 | PE-channel | red-team→empower | **0.64** | Build candidate. One buyer → portfolio reach; demand structural. |
| **Clinical care-pathway** (non-systems clinical leaders) | pass | ~80 | ~75 | C1×P2 | +high | intrapreneur / OpEx | empowerment | **0.58** | Build candidate. PG-adjacent; fragmented coverage. |
| **Corporate innovation / stage-gate** | pass | ~75 | ~70 | C2×P2 | +mid | intrapreneur | empowerment | **0.50** | Watch→build. Partial coverage (stage-gate tools exist); platform edge on completeness. |
| **Litigation case-theory** | pass | ~75 | ~70 | C1×P2 | +mid | OpEx (legal) | red-team | **0.51** | Watch→build. Expert defensive buyer → harder sale. |
| **Policy / regulatory impact** | pass | ~85 | ~20 | — | low | — | — | **0.17** | Engine-only / research. Diffuse cost-bearer, like Grand Theory. |
| **Mathematical Physics** | **G2 narrow** | ~30 | ~30 | — | low | OpEx | red-team | **narrow** | Narrow-scope: assumption/domain-of-validity audit. Generality *test*, not product. |

**What the spread shows** `[I]`: predicates separate (commons vs. commercial); the buyer-shape column now distinguishes *how* you'd sell (PE-channel vs. solo PLG) for two domains with near-identical priority; C×P keeps a partially-covered domain (innovation/stage-gate) alive on platform advantage rather than gating it out.

---

## 10. Machine-checkable schema

```yaml
# domain_screen.yaml — one record per candidate domain (v2)
domain_screen:
  meta:
    version: "2.3"
    fit_weights:  {A1: 3, A2: 3, A3: 2, A4: 2, A5: 1, A6: 3, A7: 3}   # max 39; A7_score = min(3, round(interdependence × reversal_factor))
    a7_reversal_factor: {cheap: 0.5, moderate: 1.0, expensive_irreversible: 1.3}
    comm_weights: {B1: 4, B2: 3, B3: 3, B4: 2, B5: 2, B6: 2}     # max 48
    score_enum:   [0, 1, 2, 3]
    gate_enum:    [pass, fail, narrow]
    coverage_levels: {0: none_self_assembly, 1: fragmented, 2: partial, 3: reasonably_complete}
    buyer_shapes: [solo, intrapreneur, opex, pe_channel]
    comm_shapes:  [empowerment, red_team]
    coverage_band: {attractive: 1.0, viable_covered: 0.85, trap: disqualify}
    bands: {build_candidate: ">=0.55", watch_narrow: "0.30..0.54", engine_research: "<0.30"}
  required_fields:
    [id, name, gates, fit, commercial, coverage, capacity, buyer_shape, comm_shape, priority, band, rationale]
  entries:
    - id: DSC-0001
      name: "Founder Platform"
      gates:      {G1: pass, G2: pass}
      fit:        {A1: 3, A2: 3, A3: 3, A4: 2, A5: 2, A6: 3, A7: 3}   # A7: i=3 × r=1.0 → 3. FitNorm ~87 (founder journey = long series, moderate reversal cost)
      commercial: {B1: 3, B2: 3, B3: 3, B4: 3, B5: 3, B6: 3}    # CommNorm ~80
      coverage:   {C: 0, P: 3, band: attractive}                # owner-built; market didn't deliver
      capacity:   {stakes: 3, dimensionality: 3, supply: 1, gap: 6}
      buyer_shape: solo            # collapses to intrapreneur at enterprise scale
      comm_shape:  empowerment
      priority:   0.68
      band:       build_candidate
      rationale:  "Primary-source novelty: owner searched as buyer, built because assembly didn't exist/deliver. Buyer=user (solo) or champion+sponsor (enterprise)."
    - id: DSC-0002
      name: "PE value-creation analysis"
      gates:      {G1: pass, G2: pass}
      fit:        {A1: 3, A2: 3, A3: 3, A4: 2, A5: 2, A6: 2, A7: 3}   # A7: i=3 × r=1.3 → cap 3. FitNorm ~79 (PE: long series, expensive/irreversible reversals — capital, public commitments)
      commercial: {B1: 3, B2: 3, B3: 2, B4: 3, B5: 3, B6: 2}    # CommNorm ~80
      coverage:   {C: 1, P: 3, band: attractive}
      capacity:   {stakes: 3, dimensionality: 3, supply: 0, gap: 9}  # thesis strips supply
      buyer_shape: pe_channel
      comm_shape:  red_team
      priority:   0.64
      band:       build_candidate
      rationale:  "One operating-partner buyer to portfolio-wide reach. Max capacity gap: thesis demands decisions while removing analytical supply."
```

---

## 11. Red-team residuals

| # | Risk | Confidence | Boundary condition |
|---|---|---|---|
| RR1 | **Over-generalization** — "everyone makes hard decisions" dilutes focus | High | Both predicates AND positive capacity gap AND non-trap coverage; lead with B |
| RR2 | **Capacity gap measured optimistically** — esp. *inside large orgs*, perceived internal capacity > accessible capacity | High | Measure what the decision-maker can actually commission for *this* decision today |
| RR3 | **Empowerment buyer can't judge the output** → a wrong frame is *more* dangerous (they trust it) | High | Output bounded + uncertainty-declared (arch invariant #7); empowerment raises the fidelity bar |
| RR4 | **Scores illustrative, not measured** | High | §9 numbers are `[A]`; run real candidates through §10 from the unmet-need vantage |
| RR5 | **Coverage assessed from vendor claims, not buyer need** | High | Assess C from the practitioner's unmet-need vantage; feature grids see presence, not adequacy |
| RR6 | **Long buyer→user path kills enterprise deals** even at high stakes | Med-high | Score B6; bigger check with longer path is not strictly better than smaller check with short path |

---

## 12. Reflexive note

"Which domains benefit from the platform" is itself a cross-dimensional, loosely-formalized analysis over an enumerable domain-space with high stakes — a problem this engine is built to run. This rubric is a hand-executed coverage matrix over domain-space; once the engine exists, **domain selection becomes one of its own first analyses.** `[I]`

Deepest value thesis, in one line: **the platform brings team-scale, multi-dimensional decision quality to high-stakes decision-makers who lack an *accessible* world-class team — wherever they sit, from solo founder to starved intrapreneur to PE-squeezed executive — concentrating value where the *decision-maker-level* capacity gap is largest, independent of org size.** `[R]`
