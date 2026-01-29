# OCF.CONTROL_SURFACE.U.md

## OCF HEADER

* **OCF_ID:** `OCF.CONTROL_SURFACE.U`
* **Name:** Control Surfaces (U)
* **Tier:** OCF (Definition Anchor; not a COR object)
* **Kind:** Interface / Injection Operator Class
* **Role:** Provides the canonical definition, invariants, and usage rules for **control surfaces (U_k)**—the bounded interfaces through which actors intentionally inject constraints, incentives, or signals into fields.
* **Status:** Canonical
* **Version:** 1.0
* **Changelog:**
  * v1.0: Initial canonicalization of control surfaces as typed, intent-bearing interfaces distinct from fields, operators, and outcomes; formalizes reversibility, scope, σ-bounded validity, and misuse prohibitions to prevent “everything is power” drift.

---

## 1. Base Definition (O⁽⁰⁾)

**A control surface \(U_k\) is a bounded interface through which an actor or institution intentionally injects, gates, or modulates influence into a field \(F_k\).**

It answers:

> *Where can deliberate action touch the system, and with what constraints?*

Control surfaces are **the only place where intent enters the model**.

U_k is **not**:
- a field
- a propagation mechanism (Π_k)
- an outcome
- a moral claim
- evidence of success
- equivalent to power itself

Control surfaces **enable intervention**; they do not guarantee results.

---

## 2. Formal Signature

Let:
- \(F_k\): a field
- \(U_k\): a control surface associated with \(F_k\)
- \(a(t)\): an intentional action by a Group or authorized actor
- \(σ\): scale index
- \(S(t)\): regime state
- \(ρ_k(s,t)\): field state distribution

Injection via a control surface:

\[
ρ_k(s,t^+)
=
\mathcal{I}_k\!\left(
ρ_k(s,t),\ a(t)\ ;\ U_k,\ σ,\ S(t)
\right)
\]

Subsequent evolution occurs via Π_k:

\[
ρ_k(s,t+\Delta t)
=
\Pi_k\!\left(
ρ_k(s,t^+)\ ;\ \mathcal{G},\ σ
\right)
\]

**Critical separation:**  
- \(U_k\) handles **intentional injection**
- Π_k handles **propagation**
- Outcomes are emergent

---

## 3. Core Invariants (Non-Negotiable)

### 3.1 Intent requirement

Use of a control surface **requires intentional invocation**.

Identical dynamics without intent are:
- endogenous drift, or
- exogenous shock

They are **not** “use of a control surface.”

---

### 3.2 Actor constraint

Only **Groups** (or regime-recognized authorities) may invoke control surfaces.

Individuals, clusters, or classes cannot invoke U_k directly.

---

### 3.3 Bounded scope

Every control surface has:
- a defined scope
- jurisdictional limits
- domain constraints

Effects outside scope must be explained via Π_k or spillover, not assumed.

---

### 3.4 σ-bounded validity

Each U_k is valid only over specific σ ranges.

A control surface effective at σ_group may be inert or counterproductive at σ_nation.

---

### 3.5 Reversibility classification

Every control surface must be classifiable as:

- **Reversible** (low hysteresis)
- **Partially reversible**
- **Irreversible / high hysteresis**

Reversibility is a property of the surface, not intent.

---

### 3.6 Separation from outcomes

Control surfaces do **not** guarantee:
- compliance
- effectiveness
- legitimacy
- coordination

Failure after invocation does not imply lack of intent or malice.

---

## 4. Canonical Control Surface Classes (Illustrative, not exhaustive)

Examples by field (non-binding):

- **Information field:** platform moderation, state media access, censorship law
- **Market field:** tariffs, licensing, taxation, subsidies
- **Governance field:** legislation, rulemaking, adjudication
- **Violence field:** policing authority, military deployment, sanctions
- **Technology field:** standards bodies, certification, access gating
- **Topology field:** access restriction, deplatforming, network exclusion

These are **interfaces**, not guarantees.

---

## 5. Relationship to Techniques

A **Technique** is a structured pattern of **intentional control-surface use** over time.

Formally:

\[
\text{Technique} = \{(U_{k_i}, a_i(t), τ_i)\}_{i=1..n}
\]

Control surfaces are the **atomic interfaces**; techniques are **compositions**.

---

## 6. Measurement Discipline

Claims about U_k usage require evidence of:

- formal authority or jurisdiction
- invocation artifacts (orders, laws, contracts, enforcement actions)
- scope and timing
- reversibility class
- observable field perturbation (not outcome success)

Narrative attribution without artifacts is invalid.

---

## 7. Common Failure Modes (Diagnostics)

Typical misuse appears as:

- “power was exercised” without specifying U_k
- conflating outcome with control
- attributing drift to intent
- assuming omnipotent leverage (“they control everything”)
- treating norms or culture as control surfaces

These are **interface errors**, not disagreements.

---

## 8. Misuse Prohibitions (Hard)

Invalid uses include:

- treating U_k as equivalent to Π_k
- inferring intent from outcomes absent artifacts
- assuming control surfaces imply coordination
- using “power” as a substitute for specifying U_k
- attributing U_k usage to clusters or classes
- omitting σ or scope when claiming leverage

Violations indicate intent laundering or power reification.

---

## 9. Reduction Contract

Reducing ΔOCF → 0 yields:

> Intentional interventions enter systems only through bounded interfaces.

All refinements (σ bounds, reversibility, scope) collapse to this statement.

---

## 10. Canonical References

This OCF may be cited (by reference only) by COR files and Tier-4 audits.

Recommended reference string:

> “U_k per OCF.CONTROL_SURFACE.U”

---

### END OF OCF.CONTROL_SURFACE.U (v1.0)

