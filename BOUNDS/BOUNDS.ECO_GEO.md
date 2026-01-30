# BOUNDS.ECO_GEO.md

## COR OBJECT HEADER

* **O_ID:** `BOUNDS.ECO_GEO`
* **Name:** Ecological / Geographic Feasible Bound (B_EG)
* **Order:** 2nd
* **Kind:** Feasible Bound (Hard, trajectory-gating with slack)
* **Role:** Constrains feasible trajectories by eco-geographic conditions (hazards, water/land productivity, logistics friction, and biophysical variability) that limit reachable changes or steady states at scale σ over horizon t. Operates through COR.E / COR.THETA / COR.X channels; distinct from those metric elements.
* **Status:** Canonical
* **Version:** 1.0
* **Version:** 1.1
* **Changelog:**
  * **v1.1:** Added explicit cross-bound summary, governance-residual injection note, metric non-bypass clarification, and minor notation precision.
  * **v1.0:** Initial canonical definition.


---

## 1. Base Definition (O⁽⁰⁾)

**B_EG is the feasibility bound associated with ecological and geographic constraints.** It limits the magnitude, speed, and asymmetry of changes (or steady-state configurations) that can be sustained given biophysical limits, hazard regimes, and geography-driven connectivity/friction.

B_EG is **not** `COR.E`, `COR.THETA`, or `COR.X`:

- **`COR.E`** is realized surplus (material/temporal/security)
- **`COR.THETA`** is realized throughput/capacity under load
- **`COR.X`** is realized exit/mobility option value/pressure
- **B_EG** is the constraint determining which trajectories are feasible *given eco-geo conditions* that gate/shape E, θ, and X

Formally, treat B_EG as a constraint operator mapping a candidate trajectory to feasible / infeasible **with respect to eco-geographic constraints**:

\[
B_{EG}:\ \mathcal{T} \rightarrow \{0,1\}
\]

where \(\mathcal{T}\) is a candidate trajectory (settlement pattern, infrastructure buildout, industrial policy, agricultural regime, supply-chain design, migration policy, hazard mitigation posture, etc.).

B_EG does **not** bypass the metric or fields.  
All effects propagate through existing metric components (`COR.E`, `COR.THETA`, `COR.X`) and state variables, or via bound–bound interactions.

---

## 2. Feasible Set, Slack, and Dominance

### 2.1 Feasible set

Let \(\mathcal{R}\) be the feasible region of trajectories:

\[
\mathcal{R} = \bigcap_i \left\{ \mathcal{T} : B_i(\mathcal{T}) = 1 \right\}
\]

B_EG contributes one constraint surface in \(\mathcal{R}\).

### 2.2 Slack

Define eco-geo slack:

\[
\sigma_{EG}(\mathcal{T}) \ge 0
\]

Interpretation:

- high slack: eco-geo conditions allow multiple viable trajectories; shocks are absorbable without structural collapse
- low slack: small shocks or mis-specified trajectories trigger binding constraints (supply collapse, repeated rebuild failure, forced migration, persistent logistics failure)

Clipped slack (robustness contract):

\[
\tilde{\sigma}_{EG} = \max(\sigma_{EG},\ \varepsilon_\sigma)
\]

**Unknown slack ≠ binding.**

### 2.3 Dominance switching

B_EG becomes binding (dominant) when:

\[
\tilde{\sigma}_{EG} \approx \min_j \tilde{\sigma}_j
\]

Dominance can switch under hazard clustering, multi-year drought, corridor disruption, or infrastructure failure cascades.

---

## 3. What B_EG Constrains (Canonical Drivers)

B_EG primarily constrains:

1. **Hazard regime** (frequency × severity × recovery capacity mismatch)
2. **Water balance & variance** (availability, storage, rights/enforcement, drought/flood cycles)
3. **Land productivity ceiling** (soil/arable limits, degradation/erosion/salinization)
4. **Energy/mineral endowment & import dependence** (and corridor viability)
5. **Geographic friction / connectivity** (terrain, distance-to-market, chokepoints, port access, corridor reliability)
6. **Disease ecology / environmental suitability** (as a structural constraint on settlement/labor/productivity; not “health attributes”)

B_EG is sensitive not only to *averages* but to **variance**, **tail risk**, and **recovery asymmetry** (collapse fast, repair slow).

---

## 4. Non-Compensability (Hard-Bound Property)

B_EG is **non-compensatory** when binding: gains in one channel cannot “pay for” violation in another if the eco-geo constraint is the binding bound.

Operationally:

- Messaging/legitimacy work cannot substitute for missing water or repeated hazard destruction.
- Administrative tightening cannot create throughput where the physical corridor or grid is nonfunctional.
- Redistribution can buffer outcomes temporarily, but does not eliminate binding eco-geo ceilings absent feasible adaptation.

This is a **hard feasibility constraint**, not a smooth tradeoff curve.

---

## 5. Binding-Bound Signatures (Observable)

B_EG is plausibly binding when one or more are observed (artifact-sensitive):

- repeated hazard losses exceed replacement capacity (capital stock ratchets down)
- chronic water deficit or high variance with insufficient storage/conveyance
- sustained logistics failure (corridor fragility, port/road/rail chokepoints) producing persistent shortages despite policy intent
- persistent productivity ceilings that do not respond to governance/market reforms at the expected timescale
- displacement/migration surges consistent with hazard/water constraints (not only price-driven preference drift)
- insurance retreat / financing withdrawal concentrated in hazard-exposed zones (where applicable)

---

## 6. Cross-Bound Couplings (Amplification)

### 6.1 Eco-geo stress → COR.E tightening (canonical)

\[
\text{Hazard/Scarcity/Variance} \uparrow \Rightarrow \sigma_E \downarrow
\]

via repeated loss, volatility, and import/corridor dependence.

### 6.2 Eco-geo stress → COR.THETA saturation (canonical)

\[
\text{Recovery workload + corridor friction} \uparrow \Rightarrow \theta\ \text{saturates} \Rightarrow \sigma_C \downarrow
\]

Here, \(\sigma_C\) refers to slack in **BOUNDS.B_C (coordination / complexity)**, not to θ directly; θ saturation is the mediating mechanism.

(recovery backlogs, infrastructure repair queues, procurement bottlenecks, staffing diversion).

### 6.3 Eco-geo stress → Exit activation (B_X interaction)

\[
\sigma_{EG} \downarrow \Rightarrow \text{ExitPressure} \uparrow \Rightarrow \sigma_X \downarrow
\]

Exit functions as a partial release valve until blocked or prohibitively costly.

### 6.4 Eco-geo stress → Legitimacy tightening (B_φ interaction, conditional)

When eco-geo shocks produce asymmetric losses, chronic service failure, or visible incapacity, B_φ can tighten:

\[
\sigma_{EG}\downarrow \ \wedge\ (\text{service failure / asymmetric loss}) \Rightarrow \sigma_\phi \downarrow
\]

(especially under high salience and low θ slack).

### 6.5 Cross-Bound Summary (Non-Exhaustive)

When binding or tightening, B_EG commonly propagates to other bounds through non-substitutable channels:

- **B_EG → B_C (Coordination / Complexity):**  
  Environmental heterogeneity, recovery workload, and temporal coupling raise coordination complexity, tightening B_C.

- **B_EG → B_X (Exit / Mobility):**  
  Forced exit pressure rises while physical and economic exit channels are distorted or blocked, accelerating B_X binding.

- **B_EG → B_φ (Legitimacy / Consent):**  
  Asymmetric exposure, uneven recovery, and visible service failure widen promise gaps and symmetry violations, tightening B_φ under salience.

These effects are **conditional and regime-dependent**; B_EG does not bypass other bounds but reshapes their slack and dominance ordering.

Eco-geographic shocks frequently manifest through **governance residuals** (ε_G), including:

- latency overshoot from recovery backlogs,
- enforcement leakage under emergency conditions,
- authority overload during prolonged disaster response.

These residuals act as injection channels into κ, h, and θ, amplifying downstream bound tightening without introducing new primitives.

---

## 7. Regime Dependence

B_EG sensitivity varies by regime configuration:

- high `COR.THETA` + high `COR.E`: greater adaptive capacity; slack larger; mitigation feasible
- low `COR.THETA`: recovery backlogs become persistent; eco-geo shocks transmit strongly into governance residuals and legitimacy decay
- high `COR.X`: displacement can temporarily protect individuals but may hollow out local capacity, accelerating collapse in exposed regions
- high `COR.H`: eco-geo shocks can become identity-coded, increasing conflict and reducing cooperative adaptation feasibility

Thus, feasibility is **regime-local**, not universal.

---

## 8. Hysteresis and Irreversibility

B_EG exhibits strong hysteresis:

- eco-geo collapse can be fast (single event) or stepwise (ratchet)
- eco-geo recovery (adaptation) is slow and capital-intensive

\[
\tau_{EG}^{recover} \gg \tau_{EG}^{collapse}
\]

Repeated rebuild failure, corridor abandonment, and land/water degradation imprint durable path dependence.

---

## 9. Canonical Failure Modes (Named)

These are **second-order failure-mode labels** for common ways B_EG binds and stays binding:

1. **Hazard Ratchet:** repeated losses outrun replacement; exposure concentrates; effective E shrinks each cycle.
2. **Corridor Fragility Trap:** chokepoint or corridor unreliability raises θ-hard/θ-soft persistently; market/gov throughput collapses under shock.
3. **Water-Variance Spiral:** high variance + weak storage/rights enforcement produces chronic scarcity episodes and conflict; adaptation lags dominate.
4. **Forced-Migration Hollowing:** exit relieves individuals but drains local capacity/tax base; θ and E degrade, increasing future exit pressure.

---

## 10. Scale and Time Properties

- **Scale (σ):** eco-geo constraints can bind at local/regional scales while remaining slack at national scale; claims must declare σ explicitly.
- **Time constants:**
  - tightening: fast under hazard cluster / corridor failure
  - relaxation: slow (infrastructure, land restoration, water systems, relocation)
- **Irreversibility:** severe breaches induce hysteresis; prior slack may not be recoverable without relocation or major capital reconstruction.

(Scale and time discipline must be consistent with the σ domain rules and transition operators.) :contentReference[oaicite:1]{index=1}

---

## 11. Measurement Notes (Bound Operator)

Define an eco-geographic measurement operator:

\[
\mathcal{M}_{EG}: \mathcal{O}_{EG} \rightarrow \hat{\sigma}_{EG},\ r_{EG},\ c_{EG}
\]

mapping observable eco-geographic artifacts to estimated slack, resolution, and confidence.


B_EG is **not directly measurable**. Conclusions require a measurement operator consistent with evidence hierarchy. :contentReference[oaicite:2]{index=2}

Primary evidence (high):

- hazard frequency/severity + loss + rebuild-gap series (where available)
- hydrology: flows/aquifer levels + storage + drought variance
- logistics: corridor/port capacity, reliability, shipping/transport cost and delay distributions
- land productivity: yield ceilings, degradation indicators, arable constraints
- infrastructure reliability: grid uptime, transport outages, chronic repair backlogs

Secondary (medium/low):

- surveys/narratives about “climate/geography” without quantified linkage
- discourse-only indicators without corroborating physical/logistics artifacts

All bound conclusions must be **confidence-labeled**; discourse alone cannot establish binding status.

---

## 12. MGA Integration

- **Used in:** MGA-A, MGA-B, MGA-C (by reference through Feasible Bound enumeration and omission audits)
- **Critical phases:**
  - Regime & Bounds identification
  - Dominance switching and time-scale feasibility
  - MGA-C feasibility gate (adaptation horizon vs feasibility window)
- **Required audits:**
  - Omission Audit (eco-geo omission)
  - Scale Consistency Audit (local vs system claims)
  - Measurement Validity Audit (artifact requirement)
  - Time-Constant / Recovery Realism Audit

**Default disposition:**
- **Not binding** unless multiple binding signatures are present at the declared σ.
- If B_EG is clearly binding and tightening → **Reject** interventions that assume immediate relief via messaging, administrative tightening, or “tech fixes” without feasible adaptation horizon and corridor/water constraints addressed.

---

## 13. Misuse Prohibitions (Non-Negotiable)

Invalid uses include:

- treating eco-geo constraints as “soft” or instantly reversible by policy intent
- inferring eco-geo binding from prices alone without checking logistics/hazard artifacts
- illicit σ jumps (local exposure → system inevitability) without an explicit scale transition argument
- ignoring recovery asymmetry and \(\tau_{EG}^{recover}\)
- moralizing eco-geo outcomes as purely legitimacy/ideology failures absent bound accounting

Violations indicate measurement substitution, scale error, or feasibility blindness.

---

## 14. Aliases and Lineage

- **Aliases:** ecological bound, geographic/logistics bound, hazard feasibility bound
- **Supersedes:** vague “biophysical constraints” references when geography/logistics variance is the active limiter
- **Superseded by:** none

---

## 15. Reduction Check (Robustness Contract)

Reducing ΔO → 0 yields:

> There exists an eco-geographic constraint that limits feasible change; exceeding it triggers persistent scarcity, corridor failure, forced migration, and/or repeated loss that degrades E and θ.

All refinements (hazards, water variance, logistics friction, recovery asymmetry) collapse to a single feasibility constraint with unchanged semantics.

Object passes robustness, boundedness, and reduction requirements.

---

### END OF CANONICAL OBJECT FILE (v1.0)
