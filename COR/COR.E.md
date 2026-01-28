# O.1.METRIC.E.md

## COR OBJECT HEADER

* **O_ID:** `O.1.METRIC.E`
* **Name:** E (Effective Surplus)
* **Order:** 1st
* **Kind:** Core Metric
* **Status:** Canonical
* **Version:** 1.2
* **Changelog:**
  * v1.0: Scalar surplus definition; coupling to θ, CI, and growth.
  * v1.1: Integrated latent internal substructure (material, temporal, security, and buffering surplus); clarified leakage and variance effects.
  * **v1.2:** Reconciled with OCF anchors: (i) explicit σ (scale) conditioning, (ii) separation from wealth, growth, and intent, (iii) alignment with Measurement discipline, (iv) clarified interaction with CI ratchets, θ repair, φ slack, and X buffering, (v) aligned time and feasibility claims with scale-transition invariants.

**OCF References:**  
- `OCF.DOMAIN.SCALE` (σ validity)  
- `OCF.OPERATOR.MEASUREMENT` (𝓜 discipline)  
- `OCF.OPERATOR.SCALE_TRANSITION` (cross-σ surplus claims)  
- `OCF.CONTROL_SURFACE.U` (allocation vs generation distinction)

---

## 1. Base Definition (O⁽⁰⁾)

**E is the amount of surplus energy, resources, and slack available to a system after meeting baseline maintenance and survival requirements, *net of leakage and risk*.**

E measures **feasible slack**, not:
- gross output,
- GDP,
- revenue,
- wealth concentration,
- growth rate,
- or intent to invest.

High E enables:
- repair of θ,
- retirement of CI ratchets,
- legitimacy restoration (φ),
- tolerance for experimentation and error.

Low E forces:
- zero-sum allocation,
- deferred maintenance,
- symbolic reform,
- coercive substitution.

E answers **“how much room to maneuver exists?”**, not **“how big is the economy?”**.

---

## 2. Formal Representation

E is defined as a bounded scalar:

\[
E(\sigma,t) \in [0,1]
\]

where:
- E = 0 indicates no usable surplus at scale σ (all capacity consumed by maintenance),
- E = 1 indicates large, durable surplus with low leakage and low variance.

**Default rule:** analyses operate on **scalar E**.  
Internal structure is invoked **only when scalar E fails to explain feasibility, volatility, or repair dynamics**.

---

## 3. Scale Discipline (σ)

Surplus is **scale-indexed** per `OCF.DOMAIN.SCALE`.

- E at σ_firm does not imply E at σ_sector or σ_nation.
- Local abundance does not negate system-level scarcity.
- Cross-scale surplus claims (“growth here funds reform there”) require explicit **scale-transition logic**.

Illicit scale jumps are a hard error.

---

## 4. Latent Internal Substructure (ΔE)

### 4.1 Decomposition (Latent, non-agentic)

Empirical dynamics require distinguishing *kinds* of surplus:

\[
E
=
E_m
+
E_\tau
+
E_s
+
E_r,
\qquad
\sum_i E_i \le 1
\]

Where:

- **E_m — Material surplus**  
  Physical and financial resources beyond subsistence:
  production margin, fiscal slack, energy surplus.

- **E_τ — Temporal surplus**  
  Time available beyond maintenance:
  planning horizon, slack time, cognitive bandwidth.

- **E_s — Security surplus**  
  Buffer against shocks:
  food, energy, defense, redundancy, resilience.

- **E_r — Risk / buffering surplus**  
  Capacity to absorb variance and failure without collapse:
  reserves, insurance, diversification.

These components:
- have **no agency**,
- are **not freely substitutable**,
- cannot raise total E beyond its scalar bound,
- but strongly shape **what kinds of change are feasible and how fragile they are**.

---

### 4.2 Invocation Rule (Strict)

Subcomponents are **not tracked by default**.

They are invoked only when:
- apparent abundance coexists with reform failure,
- volatility dominates despite positive averages,
- planning horizons collapse under time pressure,
- shocks produce outsized damage.

This prevents growth fetishism and mean-field error.

---

## 5. Net Surplus and Leakage

Effective surplus is **net of leakage**:

\[
E^{eff}
=
E
-
\lambda(\text{rents},\ \text{corruption},\ \text{overhead},\ \text{misallocation})
\]

High gross surplus with high leakage behaves like low E.

CI ratchets, rent extraction, and administrative overhead are primary leakage channels.

---

## 6. Interaction With Other Core Metrics

### 6.1 θ (Execution Capacity)
- Sustained E is required to repair or expand θ.
- One-off spending increases rarely raise θ_adapt.
- Low E converts execution failure into chronic backlog.

---

### 6.2 CI (Institutional Intelligence)
- CI removal and consolidation require surplus.
- Low E locks CI ratchets in place.
- High CI increases minimum E required just to maintain function.

---

### 6.3 φ (Legitimacy)
- Low E tightens B_φ by forcing visible zero-sum tradeoffs.
- Surplus allows legitimacy repair via fairness and delivery.
- Sacral claims without E accelerate collapse.

---

### 6.4 X (Exit)
- E_r buffers exit shocks.
- Low E makes exit catastrophic and politically destabilizing.
- Surplus asymmetry increases asymmetric exit.

---

## 7. Control Surfaces and Allocation

Control surfaces (U_k) **allocate surplus; they do not create it**.

- Redistribution without surplus increases conflict.
- Coercive extraction may temporarily fund action while lowering future E.
- Using U_k to promise outcomes without E widens promise gaps and tightens B_φ.

No intent inference is permitted.

---

## 8. Canonical Failure Modes

- **Surplus Illusion:**  
  High output but no slack due to leakage or CI load.

- **Variance Collapse:**  
  Positive averages with insufficient E_r lead to shock-driven failure.

- **Time Famine:**  
  Adequate material resources but no planning horizon (E_τ collapse).

- **Maintenance Trap:**  
  All surplus consumed by keeping systems running; no capacity for reform.

- **Overextension:**  
  Commitments expand faster than E, triggering θ and φ collapse.

---

## 9. Time Properties (Asymmetric)

- Surplus accumulation is slow and path-dependent.
- Depletion can be rapid under shocks or misallocation.
- Recovery requires sustained favorable conditions and discipline.
- Lost E_τ and E_r are often the hardest to restore.

---

## 10. Measurement Discipline (OCF-Compliant)

Measurement operator:

\[
\mathcal{M}_{E} : O_{E} \rightarrow \langle \hat{E}, E_d, C \rangle
\]

Observable bundles must specify **net, not gross**:

- fiscal slack after mandatory outlays,
- energy return on energy invested (EROEI),
- reserve ratios and buffers,
- maintenance vs investment split,
- variance and downside risk exposure.

Means without variance bounds are insufficient.

---

## 11. MGA Integration

- **Used in:** MGA-A, MGA-B, MGA-C
- **Critical phases:**
  - Metric snapshot
  - Feasible-bound dominance analysis
  - Intervention feasibility gating
- **Required audits:**
  - Leakage Audit
  - Variance & Buffer Audit
  - Scale Consistency Audit
- **Default disposition under uncertainty:** **Bound**

---

## 12. Misuse Prohibitions (Hard)

Invalid uses include:
- equating E with GDP or growth,
- assuming redistribution creates surplus,
- ignoring leakage and variance,
- assuming moral urgency substitutes for E,
- inferring capacity or legitimacy from spending alone.

Violations indicate **surplus category error**.

---

## 13. Reduction Check (Robustness Contract)

Reducing ΔE → 0 yields:

> E is the bounded scalar of usable surplus enabling repair, adaptation, and tolerance for error.

All refinements collapse cleanly into a single feasibility metric with unchanged semantics.

---

### END OF CANONICAL OBJECT FILE (v1.2)
