# CI

## COR OBJECT HEADER

* **O_ID:** `COR.CI`
* **Name:** CI (Crystallized / Institutionalized Intelligence)
* **Order:** 1st
* **Kind:** Core Metric
* **Status:** Canonical
* **Version:** 1.2
* **Changelog:**
  * v1.0: Scalar institutional accumulation and inertia definition; ratchet asymmetry; coupling to θ and B_C.
  * v1.1: Integrated latent internal substructure (stored, accessible, and load-bearing CI); formalized overload and inversion dynamics; clarified distinction from θ and coordination bounds.
  * **v1.2:** Reconciled with OCF anchors: (i) explicit σ (scale) conditioning, (ii) separation from Γ_G, control surfaces, and Techniques, (iii) formal linkage to Measurement discipline, (iv) alignment with scale-transition invariants, (v) clarified interaction with X and φ without intent inference.

**OCF References:**  
- `OCF.DOMAIN.SCALE` (σ validity)  
- `OCF.OPERATOR.MEASUREMENT` (𝓜 discipline)  
- `OCF.OPERATOR.GAMMA_G` (group coherence vs institutional stock)  
- `OCF.CONTROL_SURFACE.U` (interfaces vs structural memory)  
- `OCF.OPERATOR.SCALE_TRANSITION` (cross-σ accumulation claims)

---

## 1. Base Definition (O⁽⁰⁾)

**CI is the accumulated stock of institutionalized knowledge, rules, procedures, precedents, and organizational structures that persist over time and constrain future action.**

CI captures **structural memory and inertia**, not:
- execution capacity (θ),
- legitimacy (φ),
- exit (X),
- intelligence, intent, or virtue.

High CI implies:
- strong path dependence,
- resistance to change,
- ratchet-driven irreversibility.

Low CI implies:
- limited institutional memory,
- high adaptability,
- low procedural inertia.

CI is a **causal constraint metric**, not a performance metric.

---

## 2. Formal Representation

CI is defined as a bounded scalar:

\[
CI(\sigma,t) \in [0,1]
\]

where:
- CI = 0 indicates minimal durable institutional accumulation at scale σ,
- CI = 1 indicates extreme accumulation and inertia at scale σ.

**Default rule:** analyses operate on **scalar CI**.  
Internal structure is invoked **only when scalar CI fails to explain observed execution, adaptation, or reform dynamics**.

---

## 3. Scale Discipline (σ)

Institutional accumulation is **scale-indexed** per `OCF.DOMAIN.SCALE`.

- CI at σ_group (organization) is not equivalent to CI at σ_system or σ_nation.
- Local institutional complexity does not imply system-wide CI.
- Cross-scale claims (“local best practices will scale institutionally”) require explicit **scale-transition operators**.

Illicit scale jumps are a hard error.

---

## 4. Latent Internal Substructure (ΔCI)

### 4.1 Decomposition (Latent, non-agentic)

Empirical behavior shows that CI’s effects depend not only on *how much* structure exists, but *how it is stored, accessed, and imposed*.

Accordingly:

\[
CI
=
CI_{\text{store}}
+
CI_{\text{access}}
+
CI_{\text{load}},
\qquad
\sum_i CI_i \le 1
\]

Where:

- **CI_store — Stored institutional knowledge**  
  Durable artifacts such as:
  - statutes and regulations,
  - precedents and standards,
  - organizational memory,
  - budget baselines and entitlements.

  CI_store represents *potential capability*, not usage.

- **CI_access — Accessible institutional knowledge**  
  Degree to which CI_store:
  - is legible,
  - can be interpreted correctly,
  - is usable without extreme specialization or gatekeeping.

- **CI_load — Institutional load imposed on action**  
  Degree to which CI:
  - increases procedural steps,
  - raises compliance and coordination cost,
  - consumes execution and attention bandwidth.

  CI_load is the **primary channel through which CI degrades θ and increases κ**.

These subcomponents:
- have **no agency**,
- are **not freely adjustable**,
- cannot increase CI beyond its scalar bound,
- but strongly determine whether CI is enabling or suffocating.

---

### 4.2 Invocation Rule (Strict)

Subcomponents are **not tracked by default**.

They are invoked only when:
- CI increases while θ declines,
- “knowledge” grows but outcomes worsen,
- reform adds layers without improvement,
- compliance cost dominates execution time.

This prevents bureaucratic moralization and false precision.

---

## 5. Accumulation and Ratchet Dynamics

### 5.1 What Accumulates into CI_store

CI_store aggregates via **accretion**, including:
- crisis-driven statutes and rules,
- litigation-avoidance procedures,
- delegated authorities and review layers,
- organizational proliferation,
- institutionalized cultural expectations.

Accumulation is rarely designed; it is usually defensive.

---

### 5.2 Ratchet Asymmetry (Canonical)

CI exhibits a strong ratchet:

\[
\left|\frac{dCI}{dt}\right|_{\text{add}}
\gg
\left|\frac{dCI}{dt}\right|_{\text{remove}}
\]

Drivers of accumulation:
- crisis response,
- risk aversion,
- moral urgency,
- asymmetric political credit.

Removal requires sustained:
- surplus (E),
- coordination (θ_coord),
- legitimacy (φ),
and is therefore rare and slow.

---

## 6. Interaction With Other Core Metrics

### 6.1 θ (Execution Capacity)

- CI_load directly increases coordination and execution burden.
- High CI with low θ produces inertia traps.
- θ_exec may persist while θ_adapt collapses under CI pressure.

---

### 6.2 φ (Legitimacy)

- CI-driven delay and inconsistency erode φ_exp and φ_proc.
- Sacralization of procedures (“this is how it must be done”) increases φ_sac brittleness.

---

### 6.3 X (Exit)

- High CI reduces institutional flexibility, lowering effective X_inst.
- Exit of skilled agents reduces CI_access without reducing CI_store, worsening inversion.

---

### 6.4 κ (Cognitive Compression)

- CI_load is a primary upstream driver of κ_load.
- Procedural density accelerates simplification, moralization, and boundary hardening.

---

## 7. Distinction From Related Operators

- **CI vs Γ_G:**  
  Γ_G governs *group coherence and action*; CI governs *durable institutional structure*.  
  High Γ_G can act within CI constraints but cannot dissolve CI.

- **CI vs Control Surfaces (U_k):**  
  Control surfaces are interfaces for intent; CI is accumulated structure.  
  Using U_k does not reduce CI and often increases CI_load.

- **CI vs Techniques:**  
  Techniques act through U_k; CI determines how resistant the system is to change.

---

## 8. Canonical Failure Modes

- **Inertia Trap:**  
  Broad agreement on change exists, but CI blocks execution.

- **Zombie Institutions:**  
  Structures persist long after their purpose decays.

- **Complexity Cascade:**  
  CI accumulation tightens B_C, triggering nonlinear θ collapse.

- **Reform Illusion:**  
  New layers added without retiring old ones increase CI_load without benefit.

- **Intelligence Inversion:**  
  More institutional “knowledge” produces worse outcomes due to access and load failures.

---

## 9. Time Properties (Asymmetric)

| Component   | Accumulation | Degradation | Recovery |
|------------|--------------|-------------|----------|
| CI_store   | Fast (crisis) | Very Slow   | Rare / Shock-driven |
| CI_access  | Slow         | Moderate    | Slow |
| CI_load    | Fast         | Moderate    | Slow |

CI exhibits strong hysteresis:
- shocks can reset CI abruptly,
- but at high collateral cost,
- and recovery paths are narrow.

---

## 10. Measurement Discipline (OCF-Compliant)

Measurement operator:

\[
\mathcal{M}_{CI} : O_{CI} \rightarrow \langle \hat{CI}, E_d, C \rangle
\]

Proxy observables (must be scale-specific):
- rule count and growth rate,
- average age of active regulations,
- number of veto points and review layers,
- procedural steps per action,
- share of resources locked into baselines,
- organizational overlap indices.

Subcomponents are **inferred from dynamics**, not directly measured.

---

## 11. MGA Integration

- **Used in:** MGA-A, MGA-B, MGA-C
- **Critical phases:**
  - Metric snapshot
  - Failure-mode diagnosis
  - Feasible-bound identification
- **Required audits:**
  - Reduction & Robustness Audit
  - Coordination-Bound Dominance Audit
  - Measurement Validity Audit
- **Default disposition under uncertainty:** **Bound**

---

## 12. Misuse Prohibitions (Hard)

Invalid uses include:
- equating CI with bureaucrats or bad faith,
- assuming CI reduction is fast or cheap,
- collapsing CI into θ or B_C,
- treating longevity as proof of fitness,
- inferring intent, ideology, or intelligence from CI.

Violations indicate **inertia blindness or category error**.

---

## 13. Reduction Check (Robustness Contract)

Reducing ΔCI → 0 yields:

> CI is the bounded scalar accumulation of institutional structure that resists change.

All refinements collapse cleanly into a single inertia metric with unchanged semantics.

---

### END OF CANONICAL OBJECT FILE (v1.2)
