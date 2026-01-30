# COR.E.md

## COR OBJECT HEADER

* **O_ID:** `COR.E`
* **Name:** E (Effective Surplus)
* **Order:** 1st
* **Kind:** Core Metric
* **Status:** Canonical
* **Version:** 1.4
* **Changelog:**
  * v1.0: Scalar surplus definition; coupling to `COR.THETA`, `COR.CI`, and growth.
  * v1.1: Integrated latent internal substructure (material, temporal, security, and buffering surplus); clarified leakage and variance effects.
  * **v1.2:** Reconciled with OCF anchors: (i) explicit σ (scale) conditioning, (ii) separation from wealth, growth, and intent, (iii) alignment with Measurement discipline, (iv) clarified interaction with `COR.CI` ratchets, `COR.THETA` repair, `COR.PHI` slack, and `COR.X` buffering, (v) aligned time and feasibility claims with scale-transition invariants.
  * **v1.3:** Namespace lint: fully-qualified `COR.*` cross-references; consistent backtick object IDs.
  * **v1.4:** Update with `BOUNDS.ECO_GEO`.

**OCF References:**  
- `OCF.DOMAIN.SCALE` (σ validity)  
- `OCF.OPERATOR.MEASUREMENT` (𝓜 discipline)  
- `OCF.OPERATOR.SCALE_TRANSITION` (cross-σ surplus claims)  
- `OCF.CONTROL_SURFACE.U` (allocation vs generation distinction)

---

## 1. Base Definition (O⁽⁰⁾)

**`COR.E` is the amount of surplus energy, resources, and slack available to a system after meeting baseline maintenance and survival requirements, *net of leakage and risk*.**

`COR.E` measures **feasible slack**, not:
- gross output,
- GDP,
- revenue,
- wealth concentration,
- growth rate,
- or intent to invest.

High `COR.E` enables:
- repair of `COR.THETA`,
- retirement of `COR.CI` ratchets,
- legitimacy restoration (`COR.PHI`),
- tolerance for experimentation and error.

Low `COR.E` forces:
- zero-sum allocation,
- deferred maintenance,
- symbolic reform,
- coercive substitution.

`COR.E` answers **“how much room to maneuver exists?”**, not **“how big is the economy?”**.

---

## 2. Formal Representation

`COR.E` is defined as a bounded scalar:

\[
E(\sigma,t) \in [0,1]
\]

where:
- `COR.E` = 0 indicates no usable surplus at scale σ (all capacity consumed by maintenance),
- `COR.E` = 1 indicates large, durable surplus with low leakage and low variance.

**Default rule:** analyses operate on **scalar `COR.E`**.  
Internal structure is invoked **only when scalar `COR.E` fails to explain feasibility, volatility, or repair dynamics**.

---

## 3. Scale Discipline (σ)

Surplus is **scale-indexed** per `OCF.DOMAIN.SCALE`.

- `COR.E` at σ_firm does not imply `COR.E` at σ_sector or σ_nation.
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
- cannot raise total `COR.E` beyond its scalar bound,
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

## 4.3 Eco-Geographic Feasibility Coupling (B_EG)

`COR.E` is **feasibility-gated** by eco-geographic constraints captured by `BOUNDS.ECO_GEO` (B_EG).

When B_EG tightens, it constrains `COR.E` through **ceilings, variance, and recovery asymmetry**, not intent or allocation:

- **Ceilings:**  
  Eco-geo conditions impose upper bounds on realizable **E_m** (material surplus) via land productivity, water balance, energy availability, and corridor viability.

- **Variance and tail risk:**  
  Hazard regimes, climate variability, and logistics fragility increase downside variance, directly eroding **E_r** (risk / buffering surplus) even when mean output remains positive.

- **Temporal compression:**  
  Seasonality, disaster cycles, and repeated recovery demands compress **E_τ** (temporal surplus), shortening planning horizons and increasing decision myopia.

- **Asymmetric recovery:**  
  Eco-geo depletion and damage recover slowly relative to collapse:
  \[
  \tau_{recover}^{EG} \gg \tau_{collapse}^{EG}
  \]
  producing path dependence and ratcheting loss of effective surplus.

B_EG does **not** replace `COR.E`.  
It determines which surplus levels and trajectories are **physically and geographically feasible** at scale σ over horizon t.

Surplus claims that ignore eco-geo ceilings, variance, or recovery asymmetry are invalid regardless of fiscal, technological, or political intent.

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

High gross surplus with high leakage behaves like low `COR.E`.

`COR.CI` ratchets, rent extraction, and administrative overhead are primary leakage channels.

---

## 6. Interaction With Other Core Metrics

### 6.1 `COR.THETA` (Execution Capacity)
- Sustained `COR.E` is required to repair or expand `COR.THETA`.
- One-off spending increases rarely raise `COR.THETA`_adapt.
- Low `COR.E` converts execution failure into chronic backlog.

---

### 6.2 `COR.CI` (Institutional Intelligence)
- `COR.CI` removal and consolidation require surplus.
- Low `COR.E` locks `COR.CI` ratchets in place.
- High `COR.CI` increases minimum `COR.E` required just to maintain function.

---

### 6.3 `COR.PHI` (Legitimacy)
- Low `COR.E` tightens B_`COR.PHI` by forcing visible zero-sum tradeoffs.
- Surplus allows legitimacy repair via fairness and delivery.
- Sacral claims without `COR.E` accelerate collapse.

---

### 6.4 `COR.X` (Exit)
- E_r buffers exit shocks.
- Low `COR.E` makes exit catastrophic and politically destabilizing.
- Surplus asymmetry increases asymmetric exit.

---

### 6.5 `BOUNDS.ECO_GEO` (Eco-Geographic Feasibility)

Eco-geographic constraints act as an upstream feasibility gate on `COR.E`:

- Binding B_EG reduces achievable **E_m** and **E_r** even under competent allocation.
- Increased hazard frequency and logistics friction raise surplus volatility, accelerating depletion.
- Repeated eco-geo shocks divert surplus into maintenance and recovery, tightening `COR.THETA` and preventing surplus regeneration.

Canonical interaction chain:

\[
B_{EG}\ \downarrow
\Rightarrow
(E_m,\ E_r,\ E_\tau)\ \downarrow
\Rightarrow
\theta\ \text{saturates}
\Rightarrow
X\ \uparrow
\]

Exit (`COR.X`) may temporarily protect individuals while **hollowing local surplus**, further degrading long-run `COR.E` at the originating scale.

No amount of redistribution, messaging, or administrative tightening can raise `COR.E` above a binding B_EG without feasible adaptation (infrastructure, relocation, storage, corridor repair) over the appropriate time horizon.

---

## 7. Control Surfaces and Allocation

Control surfaces (U_k) **allocate surplus; they do not create it**.

- Redistribution without surplus increases conflict.
- Coercive extraction may temporarily fund action while lowering future `COR.E`.
- Using U_k to promise outcomes without `COR.E` widens promise gaps and tightens B_`COR.PHI`.

No intent inference is permitted.

---

## 8. Canonical Failure Modes

- **Surplus Illusion:**  
  High output but no slack due to leakage or `COR.CI` load.

- **Variance Collapse:**  
  Positive averages with insufficient E_r lead to shock-driven failure.

- **Time Famine:**  
  Adequate material resources but no planning horizon (E_τ collapse).

- **Maintenance Trap:**  
  All surplus consumed by keeping systems running; no capacity for reform.

- **Overextension:**  
  Commitments expand faster than `COR.E`, triggering `COR.THETA` and `COR.PHI` collapse.

- **Eco-Geo Ceiling Error:**  
  Treating surplus collapse as fiscal or managerial failure when binding eco-geographic constraints cap realizable E_m or destroy E_r through repeated hazard loss.

- **Variance Blindness:**  
  Positive average surplus with unmodeled eco-geo tail risk produces sudden collapse despite “healthy” headline indicators.

- **Recovery Asymmetry Neglect:**  
  Assuming eco-geo damage is quickly reversible, leading to chronic over-commitment and structural surplus depletion.


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
- equating `COR.E` with GDP or growth,
- assuming redistribution creates surplus,
- ignoring leakage and variance,
- assuming moral urgency substitutes for `COR.E`,
- inferring capacity or legitimacy from spending alone.

Violations indicate **surplus category error**.

---

## 13. Reduction Check (Robustness Contract)

Reducing ΔE → 0 yields:

> `COR.E` is the bounded scalar of usable surplus enabling repair, adaptation, and tolerance for error.

All refinements collapse cleanly into a single feasibility metric with unchanged semantics.

---

### END OF CANONICAL OBJECT FILE (v1.2)