# OCF.OPERATOR.SCALE_TRANSITION.md

## OCF HEADER

* **OCF_ID:** `OCF.OPERATOR.SCALE_TRANSITION`
* **Name:** Scale-Transition Operators (T₁–T₄)
* **Tier:** OCF (Definition Anchor; not a COR object)
* **Kind:** Operator Class Definition (Cross-Scale Mapping / Feasibility Gate)
* **Role:** Provides the canonical definition, invariants, and usage rules for **scale-transition operators** that mediate valid mappings across coordination scales (σ). Prevents illicit scale jumps, inevitability claims, and emergence-by-assertion.
* **Status:** Canonical
* **Version:** 1.0
* **Changelog:**
  * v1.0: Initial canonicalization of scale-transition operators as constrained, non-automatic mappings with explicit time asymmetry, null outcomes, and hysteresis; formalizes T₁–T₄ as *types* without adding new primitives.

---

## 1. Base Definition (O⁽⁰⁾)

A **scale-transition operator** \(T_i\) is a **constrained mapping** that mediates movement from one coordination scale \(σ_a\) to another \(σ_b\), subject to feasibility, time, and regime constraints.

It answers:

> *By what mechanism, over what time, and with what failure modes can effects at one scale manifest at another?*

Scale-transition operators are **not**:
- automatic
- guaranteed
- causal agents
- diffusion processes
- intent claims
- proof of inevitability

No cross-σ effect exists without an explicit transition operator.

---

## 2. Canonical Transition Types (Locked)

The model recognizes **four** canonical scale-transition operator types.

These are **types**, not actors or processes.

### **T₁ — Individual → Mesoscopic Cluster**
Projection under cognition and salience.

### **T₂ — Individual → Group**
Organizational formation via boundaries and governance.

### **T₃ — Group → Coalition**
Contractual or coordinated inter-group alignment.

### **T₄ — Cluster → Ideological Basin**
Institutional anchoring of salience-weighted value profiles.

No other scale-transition types are permitted without formal model extension.

---

## 3. Formal Signature

Let:
- \(X_{σ_a}\): configuration at source scale
- \(σ_a, σ_b\): source and target scales
- \(S(t)\): regime state
- \(τ_i\): transition-specific time constant

Define:

\[
X_{σ_b}(t+τ_i)
=
T_i\!\left(
X_{σ_a}(t)\ ;\ S(t),\ σ_a,\ σ_b
\right)
\]

With the explicit allowance:

\[
T_i(\cdot) = \varnothing
\]

(null outcome).

---

## 4. Core Invariants (Non-Negotiable)

### 4.1 No automatic transitions

Scale transitions **never occur automatically**.

Salience, diffusion, or popularity alone are insufficient.

---

### 4.2 Null outcome is default

For any attempted transition:

\[
P(T_i = \varnothing) \gg 0
\]

Failure is common; success is contingent.

---

### 4.3 Time asymmetry (locked)

For all \(T_i\):

- **τ_form** ≫ **τ_collapse**
- **τ_recover** ≫ **τ_form**

Scale formation is slow; collapse is fast; recovery is slowest.

---

### 4.4 Hysteresis

Once formed, cross-scale structures exhibit persistence even when initial drivers recede.

Reversal is not symmetric with formation.

---

### 4.5 Regime dependence

Transition feasibility is conditioned by:
- `COR.PHI` (legitimacy)
- `COR.THETA` (execution capacity)
- `COR.`COR.CI`` (institutional inertia)
- `COR.KAPPA`, `COR.`COR.H`` (cognitive and boundary states)
- topology 𝒢

Transitions valid in one regime may be impossible in another.

---

### 4.6 No intent inference

Scale transition success does **not** imply:
- coordinated intent
- conspiracy
- central planning

Intent must be evidenced independently via Techniques and control surfaces.

---

## 5. Relationship to Other OCFs

### To σ (OCF.DOMAIN.SCALE)

Scale-transition operators are the **only permitted bridge** across σ.

---

### To Π_k (OCF.OPERATOR.PI_FIELD)

Field propagation may **enable or inhibit** transitions, but cannot substitute for them.

Propagation ≠ organization.

---

### To Γ_G (OCF.OPERATOR.GAMMA_G)

T₂ and T₃ transitions require sufficient group coherence and governance latency.

---

### To Techniques (OCF.OPERATOR.TECHNIQUE)

Techniques may **attempt to induce** scale transitions, but cannot guarantee them.

---

### To Measurement (OCF.OPERATOR.MEASUREMENT)

Claims of successful transition require artifact-level evidence appropriate to the target scale.

---

## 6. Common Failure Modes (Diagnostics)

Violations typically appear as:

- “went viral, therefore institutional”
- “popular movement, therefore regime change”
- “elite agreement, therefore national coordination”
- “belief shift, therefore policy inevitability”

These are **illicit scale-jump errors**.

---

## 7. Misuse Prohibitions (Hard)

Invalid uses include:

- asserting cross-scale effects without naming \(T_i\)
- treating diffusion as T₂ or T₄
- inferring inevitability from partial activation
- collapsing multiple T_i steps into one
- ignoring null outcome probability
- skipping τ constraints

Violations indicate projection failure or feasibility neglect.

---

## 8. Reduction Contract

Reducing ΔOCF → 0 yields:

> Effects do not move across scales without slow, contingent mechanisms.

All refinements (typed transitions, τ asymmetry, null outcomes) collapse to this statement.

---

## 9. Canonical References

This OCF may be cited (by reference only) by COR files and Tier-4 audits.

Recommended reference string:

> “Scale-transition operators (T₁–T₄) per OCF.OPERATOR.SCALE_TRANSITION”

---

### END OF OCF.OPERATOR.SCALE_TRANSITION (v1.0)


