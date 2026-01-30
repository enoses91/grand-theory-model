# OCF.OPERATOR.WEIGHTED_ACCESS.md

## OCF HEADER

* **OCF_ID:** `OCF.OPERATOR.WEIGHTED_ACCESS`
* **Name:** Weighted Access to Control Surfaces
* **Tier:** OCF (Definition Anchor; not a COR object)
* **Kind:** Derived Operator Class (Access Conditioning / Feasibility Weighting)
* **Role:** Provides the canonical definition, invariants, and usage rules for **Weighted Access**—the surface-specific weighting that conditions *who can invoke which control surfaces, with what scope, reliability, and cost*, under regime and scale constraints.
* **Status:** Canonical
* **Version:** 1.0
* **Changelog:**
  * v1.0: Initial canonicalization of Weighted Access as a surface-specific, group-indexed conditioning operator; explicitly rejects “power” as a scalar; formalizes access asymmetry without introducing a new metric or field.

---

## 1. Base Definition (O⁽⁰⁾)

**Weighted Access \(W_{G \rightarrow U_k}\)** is a **group- and control-surface-specific operator** that conditions the feasibility, scope, reliability, and cost of invoking a control surface \(U_k\).

It answers:

> *Given that a control surface exists, how effectively can this group actually use it?*

Weighted Access is **not**:
- a metric
- a field
- a scalar notion of “power”
- an intent or outcome
- a guarantee of success
- a moral or legitimacy claim

There is **no such thing as general power** in the model—only *weighted access to specific interfaces*.

---

## 2. Formal Signature

Let:
- \(G\): a Group
- \(U_k\): a control surface associated with field \(F_k\)
- \(σ_G\): group operational scale
- \(S(t)\): regime state
- \(a(t)\): an attempted invocation of \(U_k\)

Define the access-conditioned invocation:

\[
ρ_k(s,t^+)
=
\mathcal{I}_k\!\left(
ρ_k(s,t),\ a(t)\ ;\ U_k,\ W_{G \rightarrow U_k},\ σ_G,\ S(t)
\right)
\]

Where:
\[
W_{G \rightarrow U_k}
\in [0,1]^{m}
\]

is a **vector-valued weighting**, not a scalar.

---

## 3. Canonical Components (Access Vector)

Weighted Access decomposes into interpretable components:

\[
W_{G \rightarrow U_k}
=
\langle
W^{scope},
W^{reliability},
W^{cost},
W^{latency},
W^{reversibility},
W^{contestation}
\rangle
\]

Where (illustrative, not exhaustive):

- **\(W^{scope}\):** jurisdictional / domain breadth
- **\(W^{reliability}\):** likelihood invocation is honored or enforced
- **\(W^{cost}\):** financial, political, or institutional cost
- **\(W^{latency}\):** delay to effect
- **\(W^{reversibility}\):** ease of rollback
- **\(W^{contestation}\):** likelihood of challenge or override

These are **diagnostic facets**, not new primitives.

---

## 4. Core Invariants (Non-Negotiable)

### 4.1 Surface specificity

Weighted Access is defined **only relative to a specific control surface**.

Statements like “Group X has power” are invalid without specifying \(U_k\).

---

### 4.2 Group index only

Weighted Access applies **only to Groups**.

- Individuals do not have \(W\).
- Classes do not have \(W\).
- Clusters do not have \(W\).

---

### 4.3 σ-bounded validity

Weighted Access is σ-bounded.

Access weights at σ_group cannot be assumed at σ_nation.

---

### 4.4 No outcome inference

High \(W_{G \rightarrow U_k}\) does **not** imply:
- success
- dominance
- coordination
- legitimacy

Outcomes remain governed by Π_k and regime constraints.

---

### 4.5 No moralization

Weighted Access encodes **structural asymmetry**, not justice, fairness, or virtue.

---

## 5. Relationship to Other OCFs

### To Control Surfaces (`OCF.CONTROL_SURFACE.U`)

Weighted Access conditions **use**, not existence:

\[
\text{Effective use} = U_k \times W_{G \rightarrow U_k}
\]

---

### To Γ_G (`OCF.OPERATOR.GAMMA_G`)

Γ_G governs **internal coherence**;  
Weighted Access governs **external interface leverage**.

Both are required for effective intervention.

---

### To Π_k (`OCF.OPERATOR.PI_FIELD`)

Weighted Access affects **initial perturbation amplitude** only.

Propagation remains governed by Π_k.

---

### To σ (`OCF.DOMAIN.SCALE`)

Weighted Access is meaningful **only within declared σ bounds**.

---

## 6. Measurement Discipline

Claims about Weighted Access require artifact-level evidence, such as:

- formal authority or credentials
- veto points or agenda-setting rights
- enforcement history
- cost asymmetry (who pays to invoke vs oppose)
- reversal frequency
- contestation outcomes

Narrative claims of “influence” without U_k + evidence are invalid.

---

## 7. Common Failure Modes (Diagnostics)

Violations typically appear as:

- “they control everything”
- “elites have power”
- “the state can just do X”
- conflating wealth or class with access
- inferring intent from asymmetry

These are **access reification errors**.

---

## 8. Misuse Prohibitions (Hard)

Invalid uses include:

- treating Weighted Access as a scalar “power score”
- ranking groups globally by W
- inferring ideology or intent from W
- collapsing W into Γ_G or Π_k
- using W without specifying U_k and σ
- attributing W to non-groups

Violations indicate category error or narrative substitution.

---

## 9. Reduction Contract

Reducing ΔOCF → 0 yields:

> Actors differ in how easily and reliably they can use specific interfaces.

All refinements (vector components, σ bounds, costs) collapse to this statement.

---

## 10. Canonical References

This OCF may be cited (by reference only) by COR files and Tier-4 audits.

Recommended reference string:

> “Weighted Access \(W_{G \rightarrow U_k}\) per OCF.OPERATOR.WEIGHTED_ACCESS”

---

### END OF OCF.OPERATOR.WEIGHTED_ACCESS (v1.0)

