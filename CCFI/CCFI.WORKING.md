# Causal Chain Fragment Inventory (CCFI) — WORKING VIEW (Generated)

_Generated from `ccfi.yaml` on 2026-01-28._

## Metadata

- Version: `0.1-working`
- Created: `2026-01-27`
- Scope: Grand Theory / Manifold model
- Status enum: working, candidate, promoted, retired
- Confidence scale: low, medium, high

## Summary

- Total entries: **8**
- By status: **candidate**=6, **promoted**=2
- By confidence: **high**=2, **low**=2, **medium**=4

## Index

| ID | Label | Status | Confidence |
|---|---|---|---|
| `CCF-0001` | Selective Enforcement → Expectation Uncertainty → Fear-Based Compliance | `promoted` | `high` |
| `CCF-0002` | Promise Load → Throughput Failure → Legitimacy Decay → Enforcement Burden | `promoted` | `high` |
| `CCF-0003` | Administrative Complexity → Time Poverty → Compression → Execution Collapse | `candidate` | `medium` |
| `CCF-0004` | Information Gain → Compression → Hardening → Overton Narrowing | `candidate` | `medium` |
| `CCF-0005` | Vendor Refusal → Operational Degradation → Backlog Growth → Legitimacy Loss | `candidate` | `low` |
| `CCF-0006` | Exit Option Value → Voice Decline → Institutional Drift | `candidate` | `medium` |
| `CCF-0007` | Narrative Credit–Blame Asymmetry → Learning Failure → Basin Hardening | `candidate` | `high` |
| `CCF-0008` | Demographic Shock → Identity Activation → Segregation → Hardening | `candidate` | `low` |

## Entries

### PROMOTED

#### CCF-0001 — Selective Enforcement → Expectation Uncertainty → Fear-Based Compliance

**Steps**

- Selective/uneven enforcement creates uncertainty about rules and penalties
- Uncertainty increases perceived downside variance
- Actors shift from cooperative norms to defensive compliance
- Defensive compliance increases procedural load and reduces throughput

**Fields and metrics**

- Governance field (Gv. `FIELDS.GOVERNANCE`): enforcement regime, backlog, queueing dynamics
- `COR.PHI`: procedural legitimacy (predictability), compliance willingness
- `COR.THETA`: throughput and execution capacity under load
- `COR.KAPPA`: compression under uncertainty and time poverty

**Directionality and lag**

- Enforcement shifts can be rapid; legitimacy recovery is slow and asymmetric
- Compliance load rises quickly; θ_eff (`COR.THETA`) declines with delay via backlog accumulation

**Regime/scale bounds**

- Strongest in high-scrutiny regimes with many veto points
- Scales with coordination complexity and enforcement visibility

**Known breaks / alternatives**

- Credible proceduralization (predictable rules applied evenly) breaks the chain
- High exit options can substitute for compliance (market-mediated governance)

**Common misuses**

- Inferring “fear-based compliance” implies moral collapse or irrationality
- Treating enforcement intensity as the only lever (predictability matters more)

**Status:** `promoted`  
**Confidence:** `high`


#### CCF-0002 — Promise Load → Throughput Failure → Legitimacy Decay → Enforcement Burden

**Steps**

- Promises/commitments exceed feasible throughput
- Visible delivery failures accumulate (promise gap widens)
- Procedural legitimacy decays (`COR.PHI`↓)
- Compliance falls; enforcement burden rises
- Rising burden further reduces θ_eff, increasing failures

**Fields and metrics**

- `COR.PHI`: legitimacy and consent
- `COR.THETA`: execution throughput and backlog
- I-field (`FIELDS.INFORMATION`): visibility/amplification of failures
- Gv (`FIELDS.GOVERNANCE`): backlog/queueing and service experience feedback

**Directionality and lag**

- Promise load can increase instantly; failure accumulation is lagged
- Legitimacy decay is persistent; repair requires sustained delivery

**Regime/scale bounds**

- Large-scale institutions with high visibility and low slack
- Stronger where I-field (`FIELDS.INFORMATION`) gain is high and alternatives are salient

**Known breaks / alternatives**

- De-scope promises or sequence them after `COR.THETA` repair
- Improve throughput before increasing obligations

**Common misuses**

- Treating legitimacy as “messaging” only
- Assuming more enforcement can substitute for `COR.PHI`

**Status:** `promoted`  
**Confidence:** `high`


### CANDIDATE

#### CCF-0003 — Administrative Complexity → Time Poverty → Compression → Execution Collapse

**Steps**

- Administrative gates and rules increase cognitive/temporal load
- Time poverty (E_τ↓) increases `COR.KAPPA`
- `COR.KAPPA` reduces decision quality and increases error/rewind
- θ_eff declines; backlog rises; execution collapses

**Fields and metrics**

- `COR.THETA`: execution capacity
- `COR.KAPPA`: compression
- E_τ: temporal surplus
- Gv (`FIELDS.GOVERNANCE`): backlog and procedural gates

**Directionality and lag**

- Complexity increases gradually; collapse can be abrupt at thresholds
- Recovery is slower than decline due to hysteresis in process

**Regime/scale bounds**

- Bureaucratic systems with many approvals and audit surfaces
- Most visible in procurement, security compliance, and regulated domains

**Known breaks / alternatives**

- Administrative simplification and gate reduction
- Delegation + clarity of authority scope

**Common misuses**

- Moralizing “bureaucrats are lazy”
- Ignoring time as a binding constraint

**Status:** `candidate`  
**Confidence:** `medium`


#### CCF-0004 — Information Gain → Compression → Hardening → Overton Narrowing

**Steps**

- I-field (`FIELDS.INFORMATION`) amplification increases salience load and conflict visibility
- `COR.KAPPA` rises; causal discrimination falls
- `COR.H` rises via identity salience and purity incentives
- Overton window narrows; discourse policing increases

**Fields and metrics**

- I-field (`FIELDS.INFORMATION`): amplification and attention density
- `COR.KAPPA`: compression
- `COR.H`: hardening and hysteresis
- `COR.PHI`: procedural legitimacy vs moral imbalance

**Directionality and lag**

- `COR.KAPPA` responds quickly; `COR.H` responds slower but is hysteretic
- Overton narrowing can happen rapidly once `COR.H` crosses threshold

**Regime/scale bounds**

- High-velocity information environments
- Stronger under low pluralism and contested φ-procedural

**Known breaks / alternatives**

- Reduce amplification / change topology
- Restore procedural legitimacy via credible performance

**Common misuses**

- Treating as ideology-specific (it is symmetric)
- Treating censorship alone as cause rather than symptom of COR.H

**Status:** `candidate`  
**Confidence:** `medium`


#### CCF-0005 — Vendor Refusal → Operational Degradation → Backlog Growth → Legitimacy Loss

**Steps**

- Payment delays / procurement failures reduce vendor willingness
- Service quality degrades; outages and delays increase
- Backlog accumulates; θ_eff declines
- Visible failures reduce `COR.PHI` and increase enforcement/triage burdens

**Fields and metrics**

- M-field (`FIELDS.MARKET`): vendor response and exchange constraints
- `COR.THETA`: execution/operations throughput
- `COR.E`: surplus and payment capacity
- Gv (`FIELDS.GOVERNANCE`): backlog/queue dynamics
- I-field (`FIELDS.INFORMATION`): visibility of failures

**Directionality and lag**

- Vendor refusal can be sudden; operational degradation compounds
- `COR.PHI` decay lags but persists

**Regime/scale bounds**

- Vendor-concentrated markets
- High dependency on contractors/procurement

**Known breaks / alternatives**

- Stabilize payment reliability
- Reduce scope and restore minimum maintenance bandwidth

**Common misuses**

- Treating vendor action as pure “leverage play” without capacity context
- Ignoring technical debt compounding

**Status:** `candidate`  
**Confidence:** `low`


#### CCF-0006 — Exit Option Value → Voice Decline → Institutional Drift

**Steps**

- Exit options (`COR.X`) become cheaper/more attractive for high-capacity actors
- Voice declines; reform capacity falls
- Institutions drift toward lower-throughput equilibria
- Decline accelerates via selection effects (who remains)

**Fields and metrics**

- `COR.X`: exit/mobility
- `COR.THETA`: execution responsiveness
- `COR.XE`: opportunity cost differentials
- `COR.CI`: competence retention and institutional learning

**Directionality and lag**

- Exit can spike after shocks; drift is slow but compounding
- Reversal requires rebuilding trust and responsiveness over time

**Regime/scale bounds**

- Federal/fragmented systems with geographic arbitrage
- Professional labor markets with high mobility

**Known breaks / alternatives**

- Reduce barriers to voice; increase responsiveness
- Lower coercion cost relative to mobility

**Common misuses**

- Treating exit as “apathy”
- Assuming exit reduces conflict (selection can worsen it)

**Status:** `candidate`  
**Confidence:** `medium`


#### CCF-0007 — Narrative Credit–Blame Asymmetry → Learning Failure → Basin Hardening

**Steps**

- Positive outcomes are attributed to intent/technique
- Negative outcomes are attributed to shocks or opponents
- Asymmetric attribution blocks learning and honest measurement
- `COR.KAPPA`/`COR.H` rise under moralized narratives, hardening basins

**Fields and metrics**

- I-field (`FIELDS.INFORMATION`): narrative selection and amplification
- MGA attribution error layer: agency inflation/erasure
- `COR.KAPPA`: causal discrimination loss
- `COR.H`: identity hardening

**Directionality and lag**

- Attribution distortion is immediate; learning failure compounds
- Basin hardening increases over time via reinforcement

**Regime/scale bounds**

- High-polarization environments
- Low observability of causal mechanisms

**Known breaks / alternatives**

- Measurement regimes + symmetric accounting
- Explicit intent vs mechanism auditing

**Common misuses**

- Confusing rhetorical claims with causal evidence
- Over-attributing centralized intent absent operator evidence

**Status:** `candidate`  
**Confidence:** `high`


#### CCF-0008 — Demographic Shock → Identity Activation → Segregation → Hardening

**Steps**

- Demographic shock (objective or perceived) increases identity salience
- Topology shifts toward segregation / clustering
- I-field (`FIELDS.INFORMATION`) reinforcement increases out-group threat salience
- `COR.H` increases with hysteresis; polarization rises

**Fields and metrics**

- D-field (`FIELDS.DEMOGRAPHY`): demographic change distributions and salience
- `COR.STATE.G`: topology/segregation/broker mass
- I-field (`FIELDS.INFORMATION`): amplification
- `COR.H`: hardening
- `COR.PHI`: procedural legitimacy and pluralism

**Directionality and lag**

- Shock can be rapid; segregation can accelerate quickly
- Hardening persists after the initial shock

**Regime/scale bounds**

- Stronger when integrative institutions are weak
- Higher risk under high I-field gain

**Known breaks / alternatives**

- Strengthen cross-cutting ties and institutions
- Reduce amplification; increase procedural predictability

**Common misuses**

- Treating perception as irrelevant
- Treating identity activation as requiring deliberate incitement

**Status:** `candidate`  
**Confidence:** `low`

