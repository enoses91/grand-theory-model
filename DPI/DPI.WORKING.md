# Dynamic Pattern Inventory (DPI) — WORKING VIEW (Generated)

_Generated from `dpi.yaml` on 2026-01-28._

## Metadata

- Version: `0.1-working`
- Created: `2026-01-27`
- Scope: Grand Theory / Manifold model
- Status enum: working, candidate, promoted, retired
- Confidence scale: low, medium, high

## Summary

- Total entries: **9**
- By status: **candidate**=6, **promoted**=3
- By confidence: **high**=2, **low**=2, **medium**=5

## Index

| ID | Label | Status | Confidence |
|---|---|---|---|
| `DP-0001` | Salience-Driven Basin Hardening | `promoted` | `high` |
| `DP-0002` | Promise Gap–Driven Legitimacy Decay | `candidate` | `medium` |
| `DP-0003` | Compliance Saturation | `candidate` | `medium` |
| `DP-0004` | Institutional Risk Aversion Ratchet | `promoted` | `high` |
| `DP-0005` | Exit Over Voice Cascade | `candidate` | `medium` |
| `DP-0006` | Technocratic Moralization Substitution | `promoted` | `medium` |
| `DP-0007` | Intent Laundering / Credit–Blame Asymmetry | `candidate` | `high` |
| `DP-0008` | Demographic Shock–Induced Identity Activation | `candidate` | `low` |
| `DP-0009` | Vendor Degradation Spiral Under COR.THETA Extraction | `candidate` | `low` |

## Entries

### PROMOTED

#### DP-0001 — Salience-Driven Basin Hardening

**aliases:**

- Affective polarization spiral
- Selective exposure / echo-chamber reinforcement
- Purity spiral / ideological purification
- Radicalization via information topology

**observed_in:**

- Cross-ideology online ecosystems
- High-tempo media environments under `COR.KAPPA` load
- Fragmentation episodes under topology divergence

**Plain language**

Under high cognitive compression (`COR.KAPPA`), the Information field selectively amplifies identity-salient content. That raises identity hardening (`COR.H`), narrows admissible discourse, and stabilizes a basin-specific salience-weighting profile W_b. The result is predictable polarization, purity spirals, and fragmented Overton windows without requiring “mass irrationality” or centralized intent.

**Formalism**

_Objects:_ Mesoscopic Clusters, Ideological Basins (W_b), Information Field (I, `FIELDS.INFORMATION`), Cognitive Compression (κ, `COR.KAPPA`), Identity Hardening (h, `COR.H`)`

_Dynamics:_

- I-amplified salience → `COR.KAPPA`↑ (compression) → `COR.H`↑ (hardening)
- `COR.H` hysteresis makes reversal asymmetric (slow repair, fast harden)
- Basin anchoring stabilizes W_b and creates selective exposure loops

**Activation conditions**

- `COR.KAPPA` elevated (time poverty / overload)
- High I-field gain (platform amplification, attention density)
- Boundary hardness `COR.H` not near neutral (already partially hardened)
- Weak procedural legitimacy throughput (COR.PHI-procedural down or contested)

**Boundary / failure conditions**

- Low I-field gain (low amplification)
- Strong `COR.PHI`-procedural + credible enforcement reduces purity incentives
- High exit (X) relieving pressure can reduce `COR.H` growth (but does not instantly repair)

**Common analyst errors**

- Treating basins as belief sets rather than salience-weighting regimes
- Confusing narrative intent with endogenous I-field selection dynamics
- Assuming `COR.KAPPA` relief implies `COR.H` repair

**Status:** `promoted`  
**Confidence:** `high`


#### DP-0004 — Institutional Risk Aversion Ratchet

**aliases:**

- Accountability asymmetry → proceduralization
- Over-proceduralization under declining throughput
- “Nobody gets fired for saying no” equilibrium

**Plain language**

As COR.THETA declines and accountability becomes asymmetric, organizations shift toward defensive process, veto points, and delay. This increases policy stiffness and backlog, further reducing throughput, creating a self-reinforcing risk-avoidance basin.

**Formalism**

_Objects:_ `θ (execution capacity)`, `Governance Field (Gv)`, κ (`COR.KAPPA`), `φ-procedural`

_Dynamics:_

- COR.THETA↓ → backlog↑ → perceived risk↑ → procedural gates↑ → COR.THETA_eff↓
- Asymmetric penalties reward delay/denial more than action
- Recovery is slow because removing gates raises perceived exposure

**Activation conditions**

- COR.THETA declining or overloaded
- High scrutiny / audit pressure without matched capacity
- Low slack in staffing/skills (`COR.CI` not translating into throughput)

**Boundary / failure conditions**

- Clear authority + protected decision bandwidth
- Rebalanced accountability (shared risk, credible support for execution)

**Common analyst errors**

- Interpreting as “bad culture” rather than equilibrium response to incentives
- Treating process as cause rather than adaptation to capacity + risk surface

**Status:** `promoted`  
**Confidence:** `high`


#### DP-0006 — Technocratic Moralization Substitution

**aliases:**

- Procedural correctness as legitimacy theater
- Language policing as legitimacy repair substitute
- Process moralization

**Plain language**

When pluralism is weak and legitimacy is contested, institutions substitute procedural correctness and moralized compliance for real legitimacy repair and throughput. This increases `COR.KAPPA`, narrows Overton width, and displaces execution-focused reforms.

**Formalism**

_Objects:_ `COR.CI`, φ-procedural, φ-moral imbalance (J_φ), `COR.KAPPA`, `COR.H`

_Dynamics:_

- `COR.CI` used for procedural/moral enforcement rather than throughput
- `COR.KAPPA`↑ from rule-complexity + discourse policing
- `COR.H`↑ as identity-loaded enforcement increases boundary hardness

**Activation conditions**

- High `COR.CI` in elite sub-systems
- Weak pluralism and contested legitimacy
- Incentives reward signaling over execution

**Boundary / failure conditions**

- Restored procedural legitimacy via credible performance (COR.THETA↑, promise gap↓)
- Reduced enforcement salience / narrowed policing scope

**Common analyst errors**

- Treating as ideology-specific (it is symmetric across basins)
- Confusing compliance theater with real legitimacy gains

**Status:** `promoted`  
**Confidence:** `medium`


### CANDIDATE

#### DP-0002 — Promise Gap–Driven Legitimacy Decay

**Plain language**

When stated commitments exceed execution capacity, promise accumulation creates repeated visible failure. This widens the promise gap, decays `COR.PHI` (especially φ-procedural), increases cynicism, and raises enforcement burden—further reducing θ_eff.

**Formalism**

_Objects:_ φ (`COR.PHI`), θ (`COR.THETA`), Governance Field (Gv, `FIELDS.GOVERNANCE`), Information Field (I, `FIELDS.INFORMATION`)

_Dynamics:_

- Promises↑ + `COR.THETA` constrained → delivery shortfall↑ → COR.PHI↓
- COR.PHI↓ → compliance↓ → enforcement burden↑ → θ_eff↓

**Activation conditions**

- High promise load relative to throughput
- Salient failures in I-field (visible service collapse)
- Low slack under binding bounds

**Boundary / failure conditions**

- Promise downscaling / scope reduction
- Throughput repair (`COR.THETA`↑) before promise expansion

**Common analyst errors**

- Treating legitimacy decay as purely narrative
- Blaming “trust” without measuring delivery gap

**Status:** `candidate`  
**Confidence:** `medium`


#### DP-0003 — Compliance Saturation

**Plain language**

As compliance demands rise (rules, forms, approvals), actors hit time and attention limits. Beyond a threshold, marginal compliance effort yields diminishing returns, innovation collapses, and informal workarounds increase.

**Formalism**

_Objects:_ κ (`COR.KAPPA`), θ (`COR.THETA`), E_τ, Governance Field (Gv, `FIELDS.GOVERNANCE`)

_Dynamics:_

- Compliance load↑ → E_τ↓ → `COR.KAPPA`↑ → θ_eff↓
- Workarounds increase variance and legitimacy stress

**Activation conditions**

- Growing administrative demands without throughput scaling
- High monitoring/audit intensity
- Low surplus time buffers

**Boundary / failure conditions**

- Administrative simplification
- Delegation and gate reduction matched to risk

**Common analyst errors**

- Treating as “laziness” or “bad incentives” only
- Ignoring time poverty as binding bound

**Status:** `candidate`  
**Confidence:** `medium`


#### DP-0005 — Exit Over Voice Cascade

**Plain language**

When reform is expensive and legitimacy is contested, high-capacity actors choose exit (geographic, professional, ideological) over voice. This selectively removes competence and tax base, reducing throughput and increasing polarization.

**Formalism**

_Objects:_ X (`COR.X`), θ (`COR.THETA`), E (`COR.E`), CI (`COR.CI`), κ (`COR.KAPPA`), h (`COR.H`)

_Dynamics:_

- Exit option value↑ → voice↓ → reform capacity↓
- Selective exit increases remaining load and accelerates decline

**Activation conditions**

- Low responsiveness / high stiffness
- High mobility option value for key groups
- Rising costs of participation and reform

**Boundary / failure conditions**

- Improved responsiveness + reduced coercion costs
- Lower switching costs for voice (institutional pathways)

**Common analyst errors**

- Treating exit as “apathy” rather than rational adaptation
- Assuming exit reduces conflict (often increases it via selection)

**Status:** `candidate`  
**Confidence:** `medium`


#### DP-0007 — Intent Laundering / Credit–Blame Asymmetry

**observed_in:**

- Post-hoc credit claiming after endogenous improvements
- Blame shifting during endogenous deterioration
- Narrative appropriation around ambiguous causality

**Plain language**

Actors retroactively claim intent for positive outcomes as “technique,” while labeling negative outcomes as shocks or drift. This systematically distorts attribution, blocks learning, and hardens basins via moralized blame/credit assignment.

**Formalism**

_Objects:_ Information Field (I, `FIELDS.INFORMATION`), Attribution Error

