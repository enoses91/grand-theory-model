# OCF.OPERATOR.MEASUREMENT.md

## OCF HEADER

* **OCF_ID:** `OCF.OPERATOR.MEASUREMENT`
* **Name:** Measurement Operators (𝓜)
* **Tier:** OCF (Definition Anchor; not a COR object)
* **Kind:** Operator Class Definition (Latent-to-Observable Mapping)
* **Role:** Provides the canonical definition, invariants, and usage rules for **measurement operators (𝓜)** that map observables and evidence to latent model elements while enforcing evidence hierarchy, confidence discipline, and non-reification.
* **Status:** Canonical
* **Version:** 1.0
* **Changelog:**
  * v1.0: Initial canonicalization of measurement as an operator layer; formalizes proxy ladders, evidence hierarchy, confidence labeling, and misuse prohibitions; prevents latent reification and discourse-only inference.

---

## 1. Base Definition (O⁽⁰⁾)

A **measurement operator \( \mathcal{M} \)** is a mapping from **observables** to **estimates of latent model elements**, with explicit evidence class and uncertainty.

It answers:

> *Given observable artifacts, what can we defensibly infer about a latent object, and with what confidence?*

Measurement operators are **epistemic**, not causal.

𝓜 is **not**:
- a latent variable
- a field or control surface
- an intervention
- a truth claim
- a substitute for the underlying object

Measurement describes **what we can know**, not **what exists**.

---

## 2. Formal Signature

Let:
- \(O\): a bundle of observables (artifacts, traces, metrics)
- \(L\): a latent model element (metric, state, operator facet, field condition)
- \(E_d\): evidence class
- \(C\): confidence label

Define:

\[
\mathcal{M}_L : O \;\longrightarrow\; \langle \hat{L},\ E_d,\ C \rangle
\]

Where:
- \(\hat{L}\): estimate or bounded range of \(L\)
- \(E_d\): evidence class (hierarchy-enforced)
- \(C\): confidence label consistent with \(E_d\)

---

## 3. Evidence Hierarchy (Canonical)

Measurement operators must classify evidence using the following hierarchy (highest → lowest):

1. **Hard structure**
   - charters, statutes, contracts, bylaws, formal authority
2. **Behavioral traces**
   - votes, sanctions, spending, staffing, enforcement actions
3. **Operational metrics**
   - latency, backlog, throughput, variance measures
4. **Texts / communications**
   - speeches, statements, reports, messaging
5. **Self-reports / intentions**
   - interviews, surveys, claims of belief or intent

Higher-grade evidence **dominates** lower-grade evidence when in conflict.

---

## 4. Proxy Ladder Discipline

When direct measurement is unavailable, 𝓜 may use **proxy ladders**, but must:

- specify each proxy explicitly
- justify relevance
- note lossiness at each step
- downgrade confidence accordingly

Silent proxy substitution is prohibited.

---

## 5. Core Invariants (Non-Negotiable)

### 5.1 No latent reification

Latent elements (`COR.PHI`, `COR.THETA`, χ_G, Γ_G (per `OCF.OPERATOR.GAMMA_G`), W, Π_k states (per `OCF.OPERATOR.PI_FIELD`), etc.) **do not exist as observables**.

They exist only via measurement operators.

Statements of the form “`COR.PHI` is X” without 𝓜 are invalid.

---

### 5.2 Evidence–confidence consistency

Confidence labels must be consistent with evidence class.

High confidence claims based on low-grade evidence are invalid.

---

### 5.3 σ-relative meaning

All measurements are σ-relative.

A measurement at σ_group cannot be reused at σ_nation without justification.

---

### 5.4 Operator specificity

Each latent element requires its **own measurement operator**.

Do not reuse a proxy across unrelated latents without argument.

---

## 6. Canonical Measurement Targets (Illustrative)

Common latent targets include:

- **χ_G:** group coherence
- **Γ_G:** group governance operator facets
- **`COR.PHI`:** legitimacy
- **`COR.THETA`:** execution throughput
- **`COR.KAPPA`:** cognitive compression
- **`COR.`COR.H``:** boundary hardness
- **W_{G→U}:** weighted access
- **Field activation states:** ρ_k shape, variance, reach
- **Topology features:** clustering, centrality, segregation

Each requires a distinct 𝓜 with declared observables.

---

## 7. Measurement Outputs (Required Fields)

Every measurement claim must output:

1. **Target latent**
2. **Observable bundle**
3. **Evidence class**
4. **Estimated value or bound**
5. **Confidence label**
6. **Known limitations / blind spots**

Omitting any field invalidates the claim.

---

## 8. Common Failure Modes (Diagnostics)

Violations typically appear as:

- discourse treated as evidence of capacity
- self-reports treated as outcomes
- ideology treated as proxy for behavior
- outcomes treated as proof of intent
- high confidence without hard artifacts

These are **measurement errors**, not disagreements.

---

## 9. Misuse Prohibitions (Hard)

Invalid uses include:

- asserting latent values without measurement
- upgrading confidence without new evidence
- ignoring higher-grade evidence
- mixing σ contexts without adjustment
- using measurement to “prove” moral claims
- collapsing multiple latents into one proxy

Violations indicate epistemic failure, not model failure.

---

## 10. Reduction Contract

Reducing ΔOCF → 0 yields:

> Claims about latent structure require evidence and uncertainty.

All refinements (hierarchy, proxy ladders, σ bounds) collapse to this statement.

---

## 11. Canonical References

This OCF may be cited (by reference only) by COR files and Tier-4 audits.

Recommended reference string:

> “Measurement per OCF.OPERATOR.MEASUREMENT”

---

### END OF OCF.OPERATOR.MEASUREMENT (v1.0)


