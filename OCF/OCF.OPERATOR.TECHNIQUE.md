# OCF.OPERATOR.TECHNIQUE.md

## OCF HEADER

* **OCF_ID:** `OCF.OPERATOR.TECHNIQUE`
* **Name:** Technique
* **Tier:** OCF (Definition Anchor; not a COR object)
* **Kind:** Operator Class Definition (Intentional Intervention Composition)
* **Role:** Provides the canonical definition, invariants, and usage rules for **Techniques**—structured, intentional compositions of control-surface invocations used by groups to attempt to shift system trajectories under regime constraints.
* **Status:** Canonical
* **Version:** 1.0
* **Changelog:**
  * v1.0: Initial canonicalization of Techniques as intentional, compositional operators; formalizes relationship to U_k, Γ_G, Weighted Access, Π_k, σ, and time constants; blocks intent laundering and post-hoc credit/blame assignment.

---

## 1. Base Definition (O⁽⁰⁾)

A **Technique** is a **structured pattern of intentional control-surface use**, executed by a group, to attempt to alter field states, constraints, or trajectories over time.

It answers:

> *What exactly was done, through which interfaces, by whom, and on what time scale?*

A Technique is **not**:
- a field
- a metric or state variable
- an emergent pattern
- a moral claim
- an outcome
- a post-hoc narrative

A Technique exists **only if intent and invocation artifacts exist**.

---

## 2. Formal Signature

Let:
- \(G\): a Group
- \(U_{k_i}\): control surfaces
- \(W_{G \rightarrow U_{k_i}}\): weighted access
- \(a_i(t)\): intentional actions
- \(τ_i\): time windows
- \(σ\): operational scale
- \(S(t)\): regime state

Define a Technique:

\[
T_G
=
\Big\{
\big(U_{k_i},\ a_i(t),\ W_{G \rightarrow U_{k_i}},\ τ_i\big)
\Big\}_{i=1..n}
\]

Subject to:

\[
\chi_G \ge \chi^\*
\quad\text{and}\quad
τ_i \ge τ_G^{gov}
\]

Outcomes evolve via Π_k after injection; Techniques do **not** control propagation.

---

## 3. Core Invariants (Non-Negotiable)

### 3.1 Intent requirement (strict)

A Technique requires **documented intent**:
- plans, directives, budgets, orders, contracts

Absent intent → **not a Technique**.

---

### 3.2 Control-surface grounding

Every Technique must specify:
- which \(U_k\) are used
- how they are invoked
- when and for how long

“No surface specified” = invalid Technique claim.

---

### 3.3 Group agency only

Only **Groups** can execute Techniques.

Individuals, clusters, classes, or “society” cannot.

---

### 3.4 No outcome implication

Technique invocation does **not** imply:
- effectiveness
- success
- coordination beyond the group
- legitimacy

Failure does not negate intent; success does not prove wisdom.

---

### 3.5 σ-bounded feasibility

Techniques are valid **only at specific σ ranges**.

A Technique feasible at σ_group may be infeasible or catastrophic at σ_nation.

---

### 3.6 Time-scale discipline

Techniques must respect:
- τ_G^{gov} (group governance latency)
- τ_form / τ_collapse / τ_recover asymmetry

Claims of rapid, large-σ change are presumptively invalid.

---

## 4. Relationship to Other OCFs

### To Control Surfaces (OCF.CONTROL_SURFACE.U)

Control surfaces are the **atomic interfaces**.
Techniques are **compositions** of U_k over time.

---

### To Weighted Access (OCF.OPERATOR.WEIGHTED_ACCESS)

Weighted Access conditions whether a Technique is even feasible.

Low W → symbolic or failed Techniques.

---

### To Γ_G (OCF.OPERATOR.GAMMA_G)

Γ_G governs **internal execution** of the Technique.
Low χ_G or high τ_G^{gov} → fragmented or stalled Techniques.

---

### To Π_k (OCF.OPERATOR.PI_FIELD)

Π_k governs **downstream propagation**.
Techniques do not control amplification, decay, or spillover.

---

### To σ (OCF.DOMAIN.SCALE)

σ bounds:
- feasible scope
- expected delay
- reversibility
- collateral effects

---

## 5. Classification of Techniques (Descriptive Only)

Techniques may be descriptively classified by dominant surface mix:

- Market-mediated
- Legal / Governance
- Information / Narrative
- Administrative / Standards
- Coercive / Violence-coupled
- Topological / Access-restricting

These are **labels**, not effectiveness rankings.

---

## 6. Measurement Discipline

Asserting a Technique requires evidence of:

1. **Intent artifacts** (plans, authorizations)
2. **Control-surface invocation** (laws, orders, contracts)
3. **Weighted Access plausibility**
4. **Temporal structure** (start, persistence, decay)
5. **σ alignment**

Narrative attribution without artifacts is invalid.

---

## 7. Common Failure Modes (Diagnostics)

Violations typically appear as:

- post-hoc credit for endogenous drift
- blame assignment without intent evidence
- treating outcomes as proof of Technique
- collapsing multiple actors into “they”
- confusing patterns with Techniques

These are **attribution errors**, not analytical disagreements.

---

## 8. Misuse Prohibitions (Hard)

Invalid uses include:

- calling emergent convergence a Technique
- inferring Technique from messaging alone
- attributing Techniques to classes or ideologies
- assuming omnipotent control
- ignoring σ or time constraints
- laundering intent for positive outcomes only

Violations indicate intent laundering or narrative appropriation.

---

## 9. Reduction Contract

Reducing ΔOCF → 0 yields:

> A Technique is an intentional use of interfaces to try to change things.

All refinements (composition, σ bounds, access weighting) collapse to this statement.

---

## 10. Canonical References

This OCF may be cited (by reference only) by COR files and Tier-4 audits.

Recommended reference string:

> “Technique per OCF.OPERATOR.TECHNIQUE”

---

### END OF OCF.OPERATOR.TECHNIQUE (v1.0)
