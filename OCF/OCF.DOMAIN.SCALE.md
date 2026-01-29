# OCF.DOMAIN.SCALE.md

## OCF HEADER

* **OCF_ID:** `OCF.DOMAIN.SCALE`
* **Name:** Scale Domain (σ)
* **Tier:** OCF (Definition Anchor; not a COR object)
* **Kind:** Domain Index / Validity Constraint
* **Role:** Provides the canonical definition, invariants, and usage rules for **scale (σ)** as a domain index that bounds object validity, operator applicability, measurement meaning, and feasibility claims across the COR.
* **Status:** Canonical
* **Version:** 1.0
* **Changelog:**
  * v1.0: Initial canonicalization of σ as a non-causal domain index; defines allowed σ values, invariants, time-scale coupling, and misuse prohibitions; prevents illicit scale shifts and false portability.

---

## 1. Base Definition (O⁽⁰⁾)

**σ (scale) is a domain index specifying the coordination scale at which objects, operators, measurements, and feasibility claims are valid.**

σ answers:

> *At what coordination scale does this statement, operator, or object meaningfully apply?*

σ is **not**:
- a metric element
- a state variable
- a field
- an operator
- a hierarchy of power or importance
- a container or aggregation rule

σ has **no dynamics of its own**.  
It conditions *validity*, not causation.

---

## 2. Allowed σ Values (Canonical Set)

σ is an **enumerated, non-hierarchical set**.  
Values may be extended, but not reinterpreted.

Canonical values:

- **σ_individual** — single human agents
- **σ_group** — bounded organizations (firms, agencies, parties, NGOs)
- **σ_sector** — industries / functional coordination domains
- **σ_region** — sub-national territorial coordination
- **σ_nation** — sovereign or quasi-sovereign regimes
- **σ_multinational** — multi-regime / system-level coordination

**Non-nesting rule:**  
σ values are *not* implicitly nested or ordered.  
Any cross-σ claim requires an explicit transition operator.

---

## 3. Core Invariants (Non-Negotiable)

### 3.1 Universal σ requirement

Every COR object invocation, operator application, measurement claim, and feasibility assertion **implicitly or explicitly carries a σ index**.

If σ is unspecified:
- descriptive statements may stand,
- **feasibility or intervention claims are invalid**.

---

### 3.2 No scale invariance by default

No object or operator is valid across all σ by default.

Portability across σ **must be argued**, not assumed.

---

### 3.3 Measurement relativity

All measurements are σ-relative.

Examples:
- Class is defined **only** relative to σ.
- Exit (X) has different meaning at σ_individual vs σ_nation.
- `COR.THETA` throughput metrics at σ_group do not scale linearly to σ_nation.

---

### 3.4 Operator validity bounds

Operators (Γ_G, RLMs, Techniques, Π_k, U_k) have **σ-bounded validity ranges**.

Using an operator outside its valid σ range without justification is a **hard error**.

---

### 3.5 No implicit scale jumps

Statements may not silently cross σ.

Illicit examples:
- individual preference → national outcome
- group intent → regime action
- class constraint → coordinated agency
- cluster belief → organized enforcement

All such transitions require explicit mediation.

---

## 4. σ and Time-Scale Coupling (τ)

σ constrains **time constants** for formation, collapse, and recovery.

Canonical asymmetry (directional, not numeric):

- **τ_form(σ)** increases with σ
- **τ_collapse(σ)** decreases with σ
- **τ_recover(σ)** increases sharply with σ

Implications:
- Large-scale systems collapse faster than they can be rebuilt.
- Institutional repair feasible at σ_group may be infeasible at σ_nation within realistic horizons.

Treating slow variables as fast across σ is a feasibility violation.

---

## 5. σ and Feasibility

Feasibility claims must specify:

- target σ,
- assumed σ transitions (if any),
- whether transitions are mediated by permitted operators.

Absent this, feasibility claims default to **invalid or overconfident**.

---

## 6. Relationship to Scale-Transition Operators

Cross-σ mappings are permitted **only** via explicit scale-transition operators (e.g., T₁–T₄).

σ itself performs **no transition**.

σ defines *where* you are;  
transition operators define *how you move*.

---

## 7. Common Failure Modes (Diagnostics)

Violations of this OCF typically appear as:

- false analogies (“this works in firms, so it should work nationally”)
- phantom feasibility (assuming low-σ coordination at high σ)
- moralized blame (attributing high-σ failure to intent or virtue)
- intervention overreach (techniques exceeding σ-valid scope)
- class/cluster reification as actors

These are **structural errors**, not ideological ones.

---

## 8. Misuse Prohibitions (Hard)

Invalid uses include:

- treating σ as a causal variable
- ranking σ values as “higher” or “better”
- assuming σ_nation dominance over σ_group by default
- inferring legitimacy, authority, or moral weight from σ
- omitting σ when claiming feasibility, inevitability, or dominance

Violations indicate category error or projection failure.

---

## 9. Reduction Contract

Reducing ΔOCF → 0 yields:

> Claims and operators are only meaningful at specific coordination scales.

All refinements (enumeration, τ coupling, feasibility gating) collapse to this statement without semantic loss.

---

## 10. Canonical References

This OCF may be referenced (by citation only) by COR files and Tier-4 audits.

Recommended reference string:

> “σ per OCF.DOMAIN.SCALE”

---

### END OF OCF.DOMAIN.SCALE (v1.0)


