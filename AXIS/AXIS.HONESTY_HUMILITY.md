# O.3.AXIS.HONESTY_HUMILITY.md

## COR OBJECT HEADER

* **O_ID:** `O.3.AXIS.HONESTY_HUMILITY`
* **Name:** Honesty–Humility (H–H)
* **Order:** 3rd
* **Kind:** Individual Axis (Latent Trait)
* **Role:** Encodes stable individual differences in fairness, sincerity, greed-avoidance, and resistance to exploitation that condition micro-level responses to incentives, selection into roles, and susceptibility to rent-seeking—without implying morality, legitimacy, or agency
* **Status:** Canonical
* **Version:** 1.0
* **Changelog:**

  * v1.0: Canonical axis formalization; explicitly non-normative; clarifies coupling to corruption, compliance variance, and selection mechanisms while prohibiting moralization or intent attribution.

---

## 1. Base Definition (O⁽⁰⁾)

**Honesty–Humility (H–H) is a latent individual trait axis describing the tendency to avoid exploiting others, to adhere to fair dealing, and to resist status-seeking and material gain through manipulation or coercion.**

H–H:

* is **descriptive**, not moral
* is **individual-level**, not aggregate
* conditions *how* incentives are responded to, not *which* incentives exist

It does **not** encode:

* virtue or goodness
* legitimacy (φ)
* trustworthiness of institutions
* ideology or political preference

---

## 2. Formal Representation

For individual (i):

[
h_i \in [0,1]
]

Where:

* (h_i \approx 0): high exploitative tolerance, high rent-seeking propensity
* (h_i \approx 1): low exploitative tolerance, high fairness preference

Population representation:

[
\rho_h(h) = \text{distribution of Honesty–Humility across individuals}
]

All analysis must operate on **distributions**, not point estimates.

---

## 3. Trait Components (HEXACO-consistent)

H–H reflects correlated tendencies in:

* **Sincerity** (vs manipulation)
* **Fairness** (vs cheating)
* **Greed avoidance** (vs status/material extraction)
* **Modesty** (vs entitlement)

These components are **statistically correlated**, not separable primitives.

---

## 4. Structural Role in the COR

H–H functions as a **response modifier**, not a causal driver.

It conditions:

* propensity to exploit asymmetric access
* likelihood of rent extraction under weak enforcement
* tolerance for corruption in self or peers
* responsiveness to reputational sanctions
* selection into roles with exploitative upside

Formally:

[
\text{ExploitativeResponse}_i
;\propto;
f\big(h_i,\ W(i,k),\ \phi,\ \theta,\ CI\big)
]

H–H does nothing in isolation.

---

## 5. Interaction with Other Objects

### 5.1 With Access Weights

* Low H–H + high access → higher exploitative variance
* High H–H + high access → lower exploitation *conditional on enforcement*

H–H **does not negate incentives**; it shifts response probabilities.

---

### 5.2 With Governance Execution (RLM)

* Low θ / high CI regimes amplify the variance effects of H–H
* High θ regimes suppress trait-driven exploitation through enforcement

Trait effects are **regime-conditioned**.

---

### 5.3 With Legitimacy (φ) and B_φ

* Aggregate low H–H *does not* imply low φ
* But low φ + weak enforcement allows low H–H actors to dominate outcomes
* This creates **perceived unfairness**, tightening B_φ downstream

This is a second-order coupling, not direct causation.

---

## 6. Selection vs Treatment (Guardrail)

H–H primarily enters outcomes via **selection**, not treatment:

* selection into power-asymmetric roles
* survival and promotion in weak-enforcement environments
* exit or suppression of high H–H individuals under exploitative regimes

Treating H–H as “malleable by education or messaging” is invalid.

---

## 7. Aggregate Effects (Without Reification)

Population-level effects arise from:

* distribution tails (not means)
* interaction with access asymmetries
* regime enforcement quality

You may analyze:

* variance amplification
* tail-risk dominance
* capture susceptibility

You may **not** attribute intent or morality to populations.

---

## 8. Measurement Notes (Gap 9 Compliant)

Measurement operator:

[
\mathcal{M}_h:\ O_h \rightarrow \hat{h}_i
]

Primary observables (high cost, limited use):

* validated psychometric instruments (HEXACO)
* behavior in controlled games with asymmetric incentives

Secondary (weak proxies):

* disciplinary records
* corruption convictions (selection-biased)
* peer reputation (context-dependent)

Self-descriptions are unreliable.

---

## 9. Common Analytic Errors Prevented

* “High H–H people are good / low H–H are bad”
* Explaining corruption without access or enforcement context
* Treating cultural narratives as trait change
* Attributing institutional failure to “bad people”
* Using H–H to predict ideology

Violations indicate **trait moralization** or **micro–macro collapse**.

---

## 10. MGA Integration

* **Used in:** MGA-B (diagnostic), MGA-C (bounded intervention analysis)
* **Relevant phases:**

  * Phase 3 (Carrier & Trait Snapshot)
  * Phase 5 (Incentive Gradient Variance)
* **Required audits:**

  * Selection vs Treatment Guardrail
  * Attribution Audit
  * Scale Consistency Audit

Default disposition: **Bound**.

---

## 11. Aliases and Lineage

* **Aliases:** integrity (colloquial, discouraged), exploitation aversion
* **Supersedes:** moralized “honesty” explanations
* **Superseded by:** none

---

## 12. Reduction Check (Robustness Contract)

Reducing ΔO → 0 yields:

> Individuals differ in their tolerance for exploiting others under asymmetric incentives.

All refinements (fairness, modesty, greed avoidance) collapse to a single bounded trait axis with unchanged semantics.
Object passes robustness, boundedness, and reduction requirements.

---

### END OF CANONICAL OBJECT FILE