# O.1.METRIC.THETA.md

## COR OBJECT HEADER

* **O_ID:** `O.1.METRIC.THETA`
* **Name:** θ (Institutional Capacity / Execution Coherence)
* **Order:** 1st
* **Kind:** Core Metric
* **Status:** Canonical
* **Version:** 1.2
* **Changelog:**
  * v1.0: Scalar execution capacity definition; overload and φ-coupled failure modes.
  * v1.1: Integrated latent internal substructure (execution, coordination, adaptation); formalized asymmetric degradation and repair dynamics.
  * **v1.2:** Reconciled with OCF anchors: (i) explicit σ (scale) conditioning, (ii) clarified separation from Γ_G and Techniques, (iii) formalized interaction with control surfaces and weighted access without intent inference, (iv) upgraded measurement discipline to OCF.OPERATOR.MEASUREMENT, (v) aligned time-scale claims with scale-transition invariants.

**OCF References:**  
- `OCF.DOMAIN.SCALE` (σ validity)  
- `OCF.OPERATOR.MEASUREMENT` (𝓜 discipline)  
- `OCF.OPERATOR.GAMMA_G` (group-level execution vs system capacity)  
- `OCF.CONTROL_SURFACE.U` (interfaces vs capacity)  
- `OCF.OPERATOR.WEIGHTED_ACCESS` (asymmetry of use vs throughput)  
- `OCF.OPERATOR.SCALE_TRANSITION` (cross-σ feasibility)

---

## 1. Base Definition (O⁽⁰⁾)

**θ is the degree to which a system can reliably execute decisions, enforce rules, deliver services, and sustain coordination commitments at the scale and scope it promises.**

θ is a **causal feasibility metric**, not a measure of:
- intent,
- ambition,
- budget size,
- staffing counts,
- or moral seriousness.

High θ implies:
- predictable execution,
- bounded backlog growth,
- credible commitments.

Low θ implies:
- promises exist largely on paper,
- enforcement becomes selective or symbolic,
- legitimacy (φ) decays via visible failure.

θ answers **“can the system do what it says it will do?”**, not **“does it want to?”**.

---

## 2. Formal Representation

θ is defined as a bounded scalar:

\[
\theta(\sigma,t) \in [0,1]
\]

where:
- θ = 0 indicates near-total execution failure at scale σ,
- θ = 1 indicates highly reliable execution across stated scope at scale σ.

**Default rule:** analyses operate on **scalar θ**.  
Internal structure is invoked **only when scalar θ fails to explain observed dynamics**.

---

## 3. Scale Discipline (σ)

Execution capacity is **scale-indexed** per `OCF.DOMAIN.SCALE`.

- θ at σ_group (organization) is not interchangeable with θ at σ_nation.
- High θ in local units does not imply system-level θ.
- Cross-scale claims (“this will work nationally because it works locally”) require explicit **scale-transition operators**.

Illicit scale jumps are a hard error.

---

## 4. Latent Internal Substructure (Δθ)

### 4.1 Decomposition (Latent, non-agentic)

Empirical behavior shows that θ depends not only on magnitude, but on **where capacity resides**.

Accordingly:

\[
\theta
=
\theta_{\text{exec}}
+
\theta_{\text{coord}}
+
\theta_{\text{adapt}},
\qquad
\sum_i \theta_i \le 1
\]

Where:

- **θ_exec — Execution throughput**  
  Capacity to:
  - process cases,
  - enforce rules,
  - deliver services within time bounds.

- **θ_coord — Coordination capacity**  
  Capacity to:
  - align actions across units,
  - resolve jurisdictional overlap,
  - maintain coherence under heterogeneity and scale.

- **θ_adapt — Adaptive capacity**  
  Capacity to:
  - detect failure,
  - learn from feedback,
  - revise rules, scope, or procedures.

These components:
- have **no agency**,
- are **not independently adjustable at will**,
- cannot raise θ above its scalar bound,
- but strongly shape **degradation speed, hysteresis, and repair feasibility**.

---

### 4.2 Invocation Rule (Strict)

Subcomponents are **not tracked by default**.

They are invoked only when:
- execution appears strong but systemic failure persists,
- coordination breakdown dominates despite adequate staffing,
- institutions cannot reform despite obvious dysfunction,
- spending or technology increases fail to raise θ.

This prevents bureaucratic reification and false precision.

---

## 5. Distinction from Related Operators

### 5.1 θ vs Γ_G (Group Governance Operator)

- **θ** describes **system-level execution capacity** at scale σ.
- **Γ_G** describes **internal coherence and execution** of a specific group.

High Γ_G can partially substitute for low θ **only at limited σ** and never system-wide.  
Conflating Γ_G with θ is a category error.

---

### 5.2 θ vs Techniques

Techniques use control surfaces intentionally.  
θ determines whether **any technique can be executed reliably**.

Technique intent without θ produces:
- symbolic action,
- selective enforcement,
- or rapid legitimacy decay.

---

## 6. Interaction with Other Core Metrics

### 6.1 Legitimacy (φ)

- θ failure produces visible promise gaps → φ decline.
- φ decline reduces voluntary compliance → effective θ declines (feedback loop).
- High φ can temporarily mask θ failure, increasing collapse severity later.

---

### 6.2 Surplus (E)

- θ repair requires **sustained surplus over time**.
- One-off funding increases rarely raise θ_adapt.
- E depletion accelerates θ degradation.

---

### 6.3 Cognitive Compression (κ)

- Rising κ reduces tolerance for execution error.
- Information overload amplifies perceived θ collapse even before objective failure.

---

### 6.4 Exit (X)

- High X masks θ failure via disengagement.
- Low X forces confrontation, coercion, or visible collapse.

---

## 7. Control Surfaces and Asymmetry

Use of control surfaces (U_k) does **not** increase θ by itself.

- Expanding rules or enforcement without capacity **lowers θ**.
- Weighted Access asymmetry explains who can invoke U_k, not whether θ exists.
- Coercive enforcement may stabilize outcomes briefly while θ continues to decay.

No inference of intent or competence is permitted.

---

## 8. Canonical Failure Modes

- **Scope–Capacity Mismatch:**  
  Obligations expand faster than θ → nonlinear collapse.

- **Promise Accumulation:**  
  Commitments layer without retirement → θ_adapt collapses first.

- **Procedural Accretion:**  
  Rules added to “fix” failure increase coordination load faster than execution.

- **Technology Substitution Fallacy:**  
  Digitization that adds interfaces or compliance layers lowers net θ.

- **Adaptive Lock-In:**  
  Execution persists while reform capacity (θ_adapt) goes to zero.

---

## 9. Time Properties (Asymmetric)

| Component | Formation | Degradation | Recovery |
|---------|----------|-------------|----------|
| θ_exec  | Moderate | Fast        | Slow     |
| θ_coord | Slow     | Moderate    | Very Slow|
| θ_adapt | Very Slow| Discontinuous | Extremely Slow |

This asymmetry explains why:
- execution can persist long after reform capacity is gone,
- recovery often fails even when resources exist.

---

## 10. Measurement Discipline (OCF-Compliant)

Measurement operator:

\[
\mathcal{M}_{\theta} : O_{\theta} \rightarrow \langle \hat{\theta}, E_d, C \rangle
\]

Primary observables:
- backlog growth under constant demand,
- execution latency vs statutory timelines,
- enforcement variance across units,
- error-correction cycle time.

Subcomponents are **inferred from dynamics**, not directly measured.

High confidence requires artifact-level evidence.

---

## 11. MGA Integration

- **Used in:** MGA-A, MGA-B, MGA-C
- **Critical phases:**
  - Metric snapshot
  - Field and coupling analysis
  - Feasibility gating
- **Required audits:**
  - Scale Consistency Audit
  - Bound Dominance Audit
  - Measurement Validity Audit
- **Default disposition under uncertainty:** **Bound**

---

## 12. Misuse Prohibitions (Hard)

Invalid uses include:
- treating θ as spending level or headcount,
- assuming technology automatically increases θ,
- inferring θ from regulatory volume,
- expanding scope to “force” capacity growth,
- treating intent, ideology, or leadership quality as θ inputs.

Violations indicate **capacity category error**.

---

## 13. Reduction Check (Robustness Contract)

Reducing Δθ → 0 yields:

> θ is a bounded scalar governing the feasibility of executing promises and rules.

All refinements collapse cleanly with unchanged semantics.

---

### END OF CANONICAL OBJECT FILE (v1.2)
