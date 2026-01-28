# O.1.METRIC.PHI.md

## COR OBJECT HEADER

* **O_ID:** `O.1.METRIC.PHI`
* **Name:** Legitimacy
* **Order:** 1st
* **Kind:** Core Metric
* **Status:** Canonical
* **Version:** 1.2
* **Changelog:**
  * v1.0: Scalar legitimacy metric definition.
  * v1.1: Added latent substructure (procedural / sacral / experiential); asymmetric collapse and recovery dynamics.
  * **v1.2:** Reconciled with OCF anchors: (i) explicit σ (scale) conditioning, (ii) separation from B_φ (legitimacy bound), (iii) measurement discipline via OCF.OPERATOR.MEASUREMENT, (iv) clarified relationship to control surfaces and coercion without intent inference, (v) removed residual narrative ambiguity.

**OCF References:**  
- `OCF.DOMAIN.SCALE` (σ validity)  
- `OCF.OPERATOR.MEASUREMENT` (𝓜 discipline)  
- `OCF.CONTROL_SURFACE.U` (coercion vs consent distinction)  
- `OCF.OPERATOR.SCALE_TRANSITION` (cross-σ legitimacy claims)

---

## 1. Base Definition (O⁽⁰⁾)

**Legitimacy (φ) is the degree to which rules, authorities, and outcomes are accepted as binding *without requiring continuous coercion*.**

φ is a **causal metric**, not a moral judgment.  
It measures *acceptance*, not justice, truth, goodness, or intent.

High φ enables:
- voluntary compliance,
- low-cost coordination,
- institutional persistence.

Low φ forces substitution toward:
- coercion (via Violence field and control surfaces),
- exit (X),
- coordination failure (θ collapse).

φ answers **“how much consent exists”**, not **“who deserves it”**.

---

## 2. Formal Representation

φ is defined as a bounded scalar:

\[
\phi(\sigma,t) \in [0,1]
\]

where:
- φ = 0 ⇒ no voluntary acceptance,
- φ = 1 ⇒ maximal acceptance feasible under the regime at scale σ.

**Default rule:** analyses operate on **scalar φ**.  
Internal structure is invoked **only when scalar φ fails to explain dynamics**.

---

## 3. Scale Discipline (σ)

Legitimacy is **scale-indexed** per `OCF.DOMAIN.SCALE`.

- φ at σ_group (organization) is not interchangeable with φ at σ_nation.
- Local legitimacy pockets do not imply system-level legitimacy.
- Cross-scale legitimacy claims require explicit **scale-transition operators** (T₁–T₄).

Illicit scale jumps (e.g., “people distrust institutions” ⇒ “regime illegitimate”) are invalid.

---

## 4. Latent Internal Substructure (Δφ)

### 4.1 Decomposition (Latent, non-agentic)

Empirical dynamics require acknowledging φ’s internal composition:

\[
\phi
=
\phi_{\text{proc}}
+
\phi_{\text{sac}}
+
\phi_{\text{exp}},
\qquad
\sum_i \phi_i \le 1
\]

Where:

- **φ_proc — Procedural legitimacy**  
  Acceptance grounded in:
  - rule predictability,
  - symmetric enforcement,
  - recognizable procedures.

- **φ_sac — Sacral / identity-bound legitimacy**  
  Acceptance grounded in:
  - moral non-negotiability,
  - identity fusion,
  - willingness to bear cost or violence.

- **φ_exp — Experiential / performance legitimacy**  
  Acceptance grounded in:
  - tolerable lived outcomes,
  - pragmatic benefit (“it works well enough”).

These components:
- have **no agency**,
- are **not substitutable at will**,
- cannot raise φ above its scalar bound,
- but strongly shape **collapse mode, violence coupling, and recovery feasibility**.

---

### 4.2 Invocation Rule (Strict)

Subcomponents **must not be tracked by default**.

They are invoked **only when**:
- collapse timing deviates from scalar predictions,
- recovery fails despite apparent φ restoration,
- coercion substitutes for consent nonlinearly,
- identity fracture dominates compliance behavior.

This prevents ideological projection and overfitting.

---

## 5. Dynamic Implications of Composition

### 5.1 High φ_proc, low φ_sac
- Stable under fairness and consistency.
- Rapid collapse under visible asymmetry.
- Recovery possible via credible procedural repair.

### 5.2 High φ_sac, low φ_proc
- Resistant to procedural failure or poor outcomes.
- Collapse is discontinuous and often violent.
- Recovery extremely slow or infeasible after identity fracture.

### 5.3 High φ_exp with weak φ_proc
- Stable during good performance.
- Brittle under shocks or promise gaps.
- Exit substitutes rapidly once tolerance is exceeded.

Scalar φ alone cannot distinguish these regimes.

---

## 6. Relationship to Other Core Objects

### 6.1 Distinction from B_φ (Legitimacy Bound)

- **φ** = current legitimacy level.
- **B_φ** = feasibility constraint on how fast/far change can proceed without legitimacy rupture.

High φ does **not** imply slack in B_φ.  
B_φ governs feasibility; φ describes state.

---

### 6.2 Governance Capacity (θ)

- φ conditions how much θ is required for compliance.
- Low φ converts execution errors into legitimacy damage.
- High φ reduces enforcement load for the same θ.

---

### 6.3 Control Surfaces & Coercion

When φ declines, control surfaces in the Violence field substitute for consent.

Important distinctions:
- Use of coercive **U_k** does not imply legitimacy.
- Success of enforcement does not imply φ restoration.
- Coercion may temporarily stabilize outcomes while φ continues to decay.

No intent inference is permitted.

---

### 6.4 Exit (X)

- Declining φ shifts adjustment toward exit where available.
- Exit asymmetry accelerates φ collapse for trapped populations.
- Suppressing exit without restoring φ tightens B_φ.

---

## 7. Failure Modes (Canonical)

- **Procedural Drift:**  
  φ_proc decays under asymmetry or opacity without immediate collapse.

- **Experiential Saturation:**  
  φ_exp collapses after cumulative performance disappointment.

- **Sacral Overextension:**  
  Enforcement expands into sacralized domains without procedural credibility, triggering nonlinear φ_sac collapse and durable identity fracture.

---

## 8. Time Properties (Asymmetric)

| Component | Formation | Collapse | Recovery |
|---------|----------|----------|----------|
| φ_proc | Slow | Fast | Slow–Moderate |
| φ_exp | Moderate | Moderate | Moderate |
| φ_sac | Very Slow | Discontinuous | Extremely Slow / Often infeasible |

This asymmetry explains why legitimacy repair frequently fails even when scalar φ appears improvable.

---

## 9. Measurement Discipline (OCF-Compliant)

Measurement operator:

\[
\mathcal{M}_{\phi} : O_{\phi} \rightarrow \langle \hat{\phi}, E_d, C \rangle
\]

Primary observables:
- voluntary compliance rates,
- enforcement intensity per unit compliance,
- exit vs protest substitution,
- corroborated enforcement asymmetry.

Secondary / lagging:
- surveys and trust indices (bounded, non-decisive).

Subcomponents are **not directly observable** and may only be inferred via dynamics and failure signatures.

---

## 10. Misuse Prohibitions (Hard)

Invalid uses include:
- treating φ as moral correctness or truth,
- assuming elections alone imply high φ,
- equating coercive effectiveness with legitimacy,
- invoking φ subcomponents without dynamic necessity,
- inferring intent or virtue from φ levels,
- making cross-σ claims without scale transition.

Violations indicate projection or category error.

---

## 11. Reduction Check (Robustness Contract)

Reducing Δφ → 0 yields:

> Legitimacy is the degree of voluntary acceptance of authority.

All refinements collapse cleanly into a single bounded scalar with unchanged semantics.

---

### END OF CANONICAL OBJECT FILE (v1.2)
