# OBJECT.CLASS

## COR OBJECT HEADER

- **O_ID:** OBJECT.CLASS
- **Name:** Class
- **Order:** 3rd
- **Kind:** Domain Object (Constraint Object)
- **Role:** Encodes a **scale-relative material ordering** that constrains feasible behavior, variance exposure, institutional access, and exit options, without possessing agency, intent, ideology, or coordination capacity.
- **Status:** Canonical
- **Version:** 1.2
- **Changelog:**
  - v1.0: Canonical Class object; formalized class as non-acting constraint indexed to effective surplus (E, `COR.E`) with `COR.THETA`/`COR.X` couplings.
  - v1.1: Tightened prohibitions against class-as-actor inference; clarified variance and exit asymmetry.
  - **v1.2:** Reconciled to explicitly reference **σ, 𝓜**, and strict **X/COR.THETA coupling discipline**; aligned language with Bounds (B_X, B_D, B_C); removed residual narrative slippage.

---

## 0. Indexing, Non-Agency, and Object Form

**Indexing**
- **Manifold:** 𝓜
- **Scale:** σ (class is undefined without explicit σ, defined in `OCF.DOMAIN.SCALE`)
- **Reference population:** 𝒫_σ

**Non-Agency Constraint (hard)**
- Class is a **constraint object**, not an actor.
- It contains **no intent, no beliefs, no preferences, no ideology, and no coordination capacity**.
- Class **cannot act, decide, align, or coordinate**.
- Any statement attributing behavior, intent, or strategy to a class is invalid unless routed through Groups and Γ_G (`COR.G`).

---

## 1. Base Definition (O⁰)

**A Class is a scale-relative ordering over effective surplus and variance exposure that constrains what individuals or groups can feasibly do, independent of their beliefs or intentions.**

Class answers:

> *Given material position and variance risk at scale σ, what actions are feasible or infeasible?*

Class does **not** answer:
- what people want,
- what they believe,
- how they coordinate,
- who governs,
- who acts.

It is a **feasibility constraint**, nothing more.

---

## 2. Formal Representation

At scale σ, define class position for unit \(i\):

\[
K_i(\sigma,t)
=
\mathrm{QuantileRank}\!\left(E_i^{eff}(\sigma,t)\mid\mathcal{P}_\sigma\right)
\in [0,1]
\]

Where:
- \(E^{eff}\): effective surplus net of variance exposure
- \(\mathcal{P}_\sigma\): comparison population at scale σ

Class is **relative**, not absolute; identical material states can imply different class positions at different σ.

---

## 3. Effective Surplus Decomposition (Locked)

Effective surplus is decomposed as:

\[
E^{eff}
=
E_m
+
E_\tau
+
E_s
+
E_r
-
\mathrm{VarRisk}
\]

Where:
- **E_m:** material surplus
- **E_τ:** temporal surplus (time autonomy)
- **E_s:** security surplus (safety, protection)
- **E_r:** buffering / slack
- **VarRisk:** exposure to income, health, legal, or violence variance

Different combinations can map to the same \(K_i\).

---

## 4. Structural Couplings (Strict, Non-Symmetric)

### 4.1 Coupling to `COR.THETA` (Institutional Access)

- `COR.THETA` modifies **realized outcomes**, not class rank.
- Higher class → lower friction, higher reliability, faster throughput.
- Lower class → higher error rates, enforcement asymmetry, backlog exposure.

Formally:
\[
\partial \text{RealizedOutcome} / \partial \theta \;\text{is class-conditioned}
\]

Class does **not** increase `COR.THETA`.

---

### 4.2 Coupling to `COR.X` (Exit / Mobility)

- Higher class → higher **credible exit** and option value.
- Lower class → immobility, capture, and compliance pressure.

Monotonicity constraint:
\[
\frac{\partial X}{\partial K} > 0
\]

This coupling is **one-way**: exit does not define class, but class constrains exit.

---

### 4.3 Coupling to `COR.PHI` (Legitimacy Stress)

- Class asymmetry conditions **perceived fairness**.
- Low-class immobility amplifies sensitivity of `COR.PHI` to:
  - selective enforcement,
  - unequal exit,
  - asymmetric burden.

Class does not generate legitimacy; it modulates its fragility.

---

## 5. Time Dynamics (Hard Asymmetry)

### 5.1 Mobility time constant

Class mobility is slow:

\[
\tau_K \gg \tau_{\text{policy}},\ \tau_{\text{narrative}}
\]

Shocks may compress effective τ temporarily but **do not erase inertia**.

---

### 5.2 Absolute loss vs relative reshuffle

- **Absolute loss:** entire distribution shifts (everyone worse off)
- **Relative reshuffle:** ranks change within distribution

These are analytically distinct and must never be conflated.

---

## 6. Scale Discipline (Non-Negotiable)

Class is always σ-indexed:

- individual @ household scale
- firm class @ market scale
- regional class @ national scale

Cross-scale claims require explicit **T-operators**.
Aggregation without operators is invalid.

---

## 7. Distinction from Adjacent Objects (Locked)

| Object      | Key Difference                                      |
|------------|------------------------------------------------------|
| Individual | Carrier of g and axes; class constrains them          |
| Group      | Has χ and Γ_G; class has neither                     |
| Cluster    | Salience grouping; class is material ordering        |
| Regime     | System configuration; class is distributional state  |
| Ideology   | Normative belief system; class is non-normative      |

Inferring ideology, coordination, or agency from class is a **category error**.

---

## 8. Canonical Uses

CLASS is used to explain:
- who bears coordination and enforcement load,
- exit asymmetry and lock-in risk,
- variance exposure under shocks,
- uneven policy effects,
- legitimacy stress among immobile populations.

CLASS is *not* used to:
- predict beliefs,
- infer coordination,
- assign blame,
- moralize outcomes.

---

## 9. Failure Modes Prevented by This Object

Common analytic errors:
- “the rich did X”
- “the poor want Y”
- class treated as coalition or actor
- collapsing class into income only
- ignoring variance and exit asymmetry

All constitute **projection or attribution errors**.

---

## 10. Measurement Discipline (𝓜-Gated)

Measurement operator:
\[
\mathcal{M}_K:\ O_K \rightarrow \hat{K}_i
\]

Primary observables:
- income and wealth distributions
- variance exposure (volatility, precarity)
- exit options (mobility, capital access)
- institutional friction and error rates

Surveys of identity or belief are **irrelevant** to class measurement.

---

## 11. MGA Integration

- **Used in:** MGA-A, MGA-B, MGA-C
- **Critical phases:**
  - Bounds Identification
  - Incentive Gradient Analysis
  - Failure Mode Analysis
- **Required audits:**
  - Attribution Audit (no agency)
  - Scale Consistency Audit
  - Selection vs Treatment Guardrail

Default disposition: **Bound**.

---

## 12. Misuse Prohibitions (Strict)

Invalid uses include:
- treating class as an actor or coalition
- inferring intent or beliefs from class
- moralizing class position
- collapsing class into income alone
- ignoring exit and variance structure

Violations indicate **category error or agency smuggling**.

---

## 13. Aliases and Lineage

- **Alias (technical):** socioeconomic position
- **Supersedes:** colloquial “elite / middle / poor”
- **Superseded by:** none

---

## 14. Reduction Check (Robustness Contract)

As ΔO → 0:

> Individuals and groups occupy relative material positions that constrain feasible behavior.

All refinements (E decomposition, exit coupling, variance) collapse cleanly to a scale-relative ordering with unchanged semantics.

---

### END OF CANONICAL OBJECT FILE (v1.2)

