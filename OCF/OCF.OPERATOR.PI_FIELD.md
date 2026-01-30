# OCF.OPERATOR.PI_FIELD.md

## OCF HEADER

* **OCF_ID:** `OCF.OPERATOR.PI_FIELD`
* **Name:** Π_k (Field Propagation Operator)
* **Tier:** OCF (Definition Anchor; not a COR object)
* **Kind:** Operator Class Definition (Field propagation / diffusion mapping)
* **Role:** Provides the canonical signature, invariants, reduction contract, and misuse prohibitions for **Π_k**, the operator governing how field state distributions propagate over topology and time.
* **Status:** Canonical
* **Version:** 1.0
* **Changelog:**
  * v1.0: Initial canonicalization of Π_k as a propagation operator acting on field state distributions; formalizes topology dependence, σ-bounded validity, coupling discipline, and strict non-agency constraints to prevent field reification.

---

## 1. Base Definition (O⁽⁰⁾)

**Π_k is the field propagation operator for field \(F_k\), mapping a field’s state distribution forward in time over a coordination topology.**

It answers:

> *Given the current field state distribution, topology, and scale, how does influence, constraint, or signal propagate?*

Π_k is **not**:
- an actor
- an intent
- a control surface
- a metric or state variable
- a causal agent
- evidence that “the field decided” anything

Π_k describes **how propagation occurs**, not **why** or **who chose it**.

---

## 2. Formal Signature

Let:
- \(F_k\): a field (Information, Market, Governance, Violence, etc.)
- \( \rho_k(s,t) \): field state distribution at scale σ
- \( \mathcal{G} \): coordination topology (hypergraph)
- \( U_k \): control surfaces acting on the field
- \( σ \): scale index
- \( t \): time

Define:

\[
\rho_k(s,t+\Delta t)
=
\Pi_k\!\left(
\rho_k(s,t)\ ;\ 
\mathcal{G},\ σ,\ U_k,\ \Theta_k
\right)
+ \varepsilon_k(t)
\]

Where:
- \( \Pi_k \): propagation operator (field-specific)
- \( \Theta_k \): field-specific parameters (gain, decay, friction)
- \( \varepsilon_k(t) \): residual noise / exogenous shocks

Π_k **acts on distributions**, not means.

---

## 3. Core Invariants (Non-Negotiable)

### 3.1 No agency / no intent

Π_k cannot be used to infer:
- centralized coordination
- conscious intent
- deception or conspiracy

Any intent claim must be evidenced via:
- Groups
- Techniques
- Control surfaces

---

### 3.2 Distribution-first requirement

All uses of Π_k must reason about **distributions** (variance, tails, clustering), not only averages.

Mean-field shortcuts must be justified and bounded.

---

### 3.3 Topology dependence

Π_k is explicitly conditioned on topology \( \mathcal{G} \):

- edge types
- clustering
- centralization
- broker structure

Ignoring topology is an invalid application of Π_k.

---

### 3.4 σ-bounded validity

Π_k is scale-bounded.

Propagation dynamics at σ_group are not portable to σ_nation without explicit argument.

---

### 3.5 Field specificity

Each field has its own Π_k.

Do **not** reuse Π_k across fields without explicit redefinition.

---

## 4. Relationship to Control Surfaces (U_k (`OCF.CONTROL_SURFACE.U`))

Control surfaces \(U_k\) **inject, gate, or modulate** field propagation.

Π_k itself:
- does not choose injection
- does not optimize outcomes
- does not impose norms

Π_k + U_k + topology + state → observed propagation.

---

## 5. Relationship to Metrics and States

Π_k is conditioned by, but not reducible to:

- `COR.KAPPA` (compression affects effective gain)
- `COR.H` (boundary hardness affects edge permeability)
- `COR.THETA` (execution / throughput constraints condition realization of field injections)
- `COR.CI` (procedural inertia affects persistence)
- `COR.PHI` (legitimacy affects voluntary uptake)

These enter Π_k parametrically, not as substitutes.

---

## 6. Measurement Discipline

Invoking Π_k requires observable proxies:

- topology metrics (assortativity, clustering, centrality)
- propagation traces (diffusion speed, reach, decay)
- variance and tail behavior
- changes under control-surface perturbations

Discourse-only inference is insufficient.

---

## 7. Common Failure Modes (Diagnostics)

Violations typically appear as:

- “the media decided…”
- “the market punished…”
- “the narrative caused…”

These are **field reification errors**.

Correct form:
> “Under Π_I on topology 𝒢 with κ↑ and strong penalty gradients, attention/salience concentrates…”

---

## 8. Misuse Prohibitions (Hard)

Invalid uses include:

- treating Π_k as an agent
- attributing morality, intent, or goals to a field
- ignoring topology or σ
- assuming linear or symmetric propagation by default
- collapsing Π_k into a single scalar “influence”

Violations indicate category error or narrative causation.

---

## 9. Reduction Contract

Reducing ΔOCF → 0 yields:

> Field effects propagate over networks according to structure and constraints, not intent.

All refinements (distributional form, topology, σ bounds) collapse to this statement.

---

## 10. Canonical References

This OCF may be cited (by reference only) by COR files and Tier-4 audits.

Recommended reference string:

> “Π_k per OCF.OPERATOR.PI_FIELD”

---

### END OF OCF.OPERATOR.PI_FIELD (v1.0)


