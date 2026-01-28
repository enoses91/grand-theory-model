## 1. Generic Measurement Operator (template / guardrails)

This one is *load-bearing*: it enforces **Unknown ≠ Null**, evidence hierarchy, and confidence labeling across the entire model.

---

# O.2.MEASUREMENT.GENERIC.md

## COR OBJECT HEADER

* **O_ID:** `O.2.MEASUREMENT.GENERIC`
* **Name:** Measurement Operator (Generic)
* **Order:** 2nd
* **Kind:** MeasurementOperator
* **Role:** Defines how observables are mapped to latent model objects with bounded confidence, evidence hierarchy, and explicit null/unknown handling
* **Status:** Canonical
* **Version:** 1.0

---

## 1. Base Definition (O⁽⁰⁾)

A **measurement operator** (\mathcal{M}*O) maps a bundle of observables (O*{obs}) to an estimate (\hat{O}) of a latent model object, together with an explicit confidence label and scope.

Form:
[
\mathcal{M}*O:\ O*{obs} \rightarrow \langle \hat{O}, c, \sigma, t \rangle
]

Measurement operators **do not assert truth** — they bound inference.

---

## 2. Core Rules (Non-Negotiable)

1. **Unknown ≠ Null**
   Absence of evidence cannot be treated as zero or inactive.

2. **Evidence hierarchy enforced**
   Higher-grade evidence dominates lower-grade evidence.

3. **Scope indexed**
   Every measurement must specify scale σ and time window t.

4. **Confidence labeling required**
   Every estimate must carry (c \in {\text{High, Medium, Low}}).

5. **Reduction-safe**
   Coarse measurements must preserve object semantics under π.

---

## 3. Evidence Hierarchy (canonical)

1. Hard structure (laws, charters, network graphs, contracts)
2. Behavioral traces (flows, sanctions, migrations, queues)
3. Operational metrics (latency, backlog, throughput)
4. Texts and communications
5. Self-reports / surveys

Lower tiers cannot override higher tiers.

---

## 4. MGA Integration

* Required whenever invoking χ, 𝒢, X, C, Γ, alignment, or ε
* Failure to specify (\mathcal{M}) ⇒ **measurement validity audit failure**

---

## 5. Misuse Prohibitions

* Treating narrative as measurement
* Treating surveys as structural evidence
* Silent substitution of proxies
* Inferring null without explicit null rule

---

### END OF CANONICAL OBJECT FILE

