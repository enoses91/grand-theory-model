# O.1.METRIC.G.md

## COR OBJECT HEADER

* **O_ID:** `O.1.METRIC.G`
* **Name:** Individual Cognitive Capacity (g)
* **Order:** 1st
* **Kind:** Metric
* **Role:** Encodes the bounded individual-level cognitive processing capacity that constrains learning, problem-solving, abstraction, and execution; sets upper limits on how Education/Knowledge, Information, and Technology fields can be effectively utilized
* **Status:** Canonical
* **Version:** 1.0
* **Changelog:**

  * v1.0: Canonical metric formalization; defines g as an individual-level constraint distinct from κ (system compression) and CI (institutional memory), and non-malleable by narrative or short-run intervention.

---

## 1. Base Definition (O⁽⁰⁾)

**g is a first-order metric representing the individual’s bounded cognitive processing capacity: the ability to acquire, retain, integrate, and apply information across tasks.**

Formally:

* g is indexed at the **individual scale** σ = i
* g is **exogenous at analysis timescales**
* g constrains, but does not determine, behavior or outcomes

g is not:

* education
* knowledge
* morality
* motivation
* ideology

It is a **capacity constraint**, not a value judgment.

---

## 2. Formal Representation

Let:

[
g_i \in [g_{\min}, g_{\max}]
]

Where:

* ( g_i ) is individual i’s cognitive capacity
* Bounds are biologically and developmentally constrained
* Population-level g is a **distribution**, not a mean

Canonical aggregation:
[
\rho_g(g) = \text{population distribution of } g
]

---

## 3. Structural Properties

### 3.1 Boundedness and stability

* g is **bounded**
* g is **highly stable** after early development
* Short-run interventions cannot materially raise g
* Long-run shifts occur only via:

  * selection
  * assortative reproduction
  * migration
  * severe shocks (often negative)

---

### 3.2 Scale separation

* g exists **only at the individual level**
* No valid “national g” as an acting entity
* Aggregates are descriptive only

Violating scale separation invalidates analysis.

---

## 4. Distinction from Related Objects

| Object            | What it is                   | What it is not     |
| ----------------- | ---------------------------- | ------------------ |
| g                 | individual capacity          | learned content    |
| Education Field   | transmission & certification | capacity creation  |
| κ                 | system-level compression     | individual ability |
| CI                | institutional memory         | human cognition    |
| Information Field | salience & propagation       | understanding      |

This distinction is non-negotiable.

---

## 5. Dependencies and Couplings

### 5.1 Upstream dependencies

* Developmental environment (bounded influence)
* Early-life nutrition and health (bounded)
* Severe trauma or deprivation (can reduce g)

These are **outside COR causal scope** and treated as exogenous.

---

### 5.2 Downstream effects

* **Education / Knowledge Field:** learning rate ceilings
* **Technology Field:** usability and safe operation limits
* **Information Field:** susceptibility to overload and distortion
* **θ:** execution reliability via staffing competence
* **Market Field:** productivity dispersion
* **κ:** interacts indirectly via system complexity

g shapes **variance**, not ideology.

---

## 6. Interaction with Fields

### 6.1 Education ≠ g

Education selects on g and transmits knowledge conditional on g:

[
\text{Learning}*{i} \le f(g_i, E*\tau, \kappa)
]

Treating education as raising g is a category error.

---

### 6.2 Information overload

When Information Field complexity exceeds typical g:

* reliance on heuristics increases
* narrative substitution occurs
* κ compression accelerates

---

## 7. Measurement Notes (diagnostic)

Measured indirectly via:

* standardized cognitive assessments (noisy)
* task performance under novelty
* learning rate under controlled instruction
* error rates under complexity

Self-reports and credentials are weak proxies.

---

## 8. MGA Integration

* **Used in:** MGA-B, MGA-C
* **Relevant phases:**

  * Phase 1 (Assumption Audit)
  * Phase 3 (Metric Snapshot)
* **Required audits:**

  * Scale Consistency Audit
  * Selection vs Treatment Guardrail
* **Default disposition:** **Bound** (do not infer movement absent hard evidence)

---

## 9. Misuse Prohibitions (Non-Negotiable)

Invalid uses include:

* equating g with worth or moral value
* assuming g can be quickly increased by policy
* collapsing g into education or culture
* inferring ideology or virtue from g
* using g as a rhetorical weapon

Violations indicate **capacity–value conflation**.

---

## 10. Aliases and Lineage

* **Aliases:** general cognitive ability (technical)
* **Supersedes:** vague “human capital” capacity notions
* **Superseded by:** none

---

## 11. Reduction Check (Robustness Contract)

Reducing ΔO → 0 yields:

> Individuals have bounded cognitive processing capacity that constrains learning and execution.

All refinements collapse cleanly to a capacity constraint with unchanged semantics.
Object passes robustness, boundedness, and reduction requirements.

---

### END OF CANONICAL OBJECT FILE