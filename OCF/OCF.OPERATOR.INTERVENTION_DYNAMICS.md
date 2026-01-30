# OCF.OPERATOR.INTERVENTION_DYNAMICS

## COR OBJECT HEADER

- **O_ID:** `OCF.OPERATOR.INTERVENTION_DYNAMICS`
- **Name:** Intervention Dynamics (Technique Composition)
- **Order:** 4th
- **Kind:** Operator (Accounting / Composition; Non-Causal)
- **Role:** Provides **non-causal bookkeeping** for the composition, sequencing, overlap, decay, and interaction of multiple Techniques already defined elsewhere; introduces no new mechanisms, effects, or intent.
- **Status:** Canonical (Narrowed)
- **Version:** 1.2
- **Changelog:**
  - v1.0: Broad intervention-effects operator (pre-Technique formalism).
  - v1.1: Partial narrowing; still overlapped with mechanism language.
  - **v1.2:** Fully refactored into a **pure composition and accounting operator**; all causal semantics removed; aligned with Technique, Bounds, RLMs, and MGA-C feasibility discipline.

---

## 0. Indexing and Non-Agency Constraint

**Indexing**
- **Manifold:** 𝓜
- **Scale:** σ (explicit for every invocation, defined in `OCF.DOMAIN.SCALE`)
- **Time:** t, Δt

**Non-Agency Constraint (hard)**
- This operator has **no causal power**.
- It introduces **no intent**, **no optimization**, and **no mechanism**.
- It cannot explain *why* an intervention worked or failed.
- It only **accounts for how already-defined Techniques combine over time**.

Any causal claim attributed to this operator is invalid.

---

## 1. Base Definition (O⁰)

**INTERVENTION_DYNAMICS is an accounting operator that composes the effects of multiple Techniques under shared bounds, time constants, and regime constraints.**

It answers:

> *Given these Techniques, applied in this order and time window, what is the combined accounted effect—if any—assuming all individual Techniques are feasible?*

It does **not** answer:
- whether a Technique is feasible,
- whether a Technique succeeds,
- whether an outcome was intended,
- whether an effect is justified.

---

## 2. Inputs and Outputs

### 2.1 Inputs

A finite set of Techniques:
\[
\mathcal{T} = \{ T_1, T_2, \dots, T_n \}
\]

Each Technique \(T_k\) is already defined with:
- Δ effects on variables
- time-to-effect \(τ_k\)
- persistence \(ρ_k\)
- reversibility / hysteresis \(χ_k\)
- violence coupling risk \(ε_k\)

### 2.2 Output

A **composed effect ledger**:
\[
ID(\mathcal{T})
=
\langle
\Delta_{total},\ 
\tau_{eff},\ 
\rho_{eff},\ 
\chi_{eff},\ 
\text{interference flags}
\rangle
\]

This is a **summary**, not a mechanism.

---

## 3. Composition Rules (Strict)

### 3.1 Additivity (default)

Absent evidence of interference:
\[
\Delta_{total} = \sum_k \Delta T_k
\]

### 3.2 Temporal ordering

Effects only contribute if:
\[
t \ge \tau_k
\]

Overlapping Techniques may:
- stack,
- partially cancel,
- saturate,

but only if such behavior is **explicitly specified** by the constituent Techniques.

---

### 3.3 Saturation and clipping

All composed effects are subject to:
- Bounds \(B_i\),
- regime dominance,
- variable limits.

No clipping logic may be introduced here; it must already exist in Bounds.

---

### 3.4 No emergent effects rule (non-negotiable)

> **INTERVENTION_DYNAMICS may not generate effects not present in the input Techniques.**

Formally:
\[
\mathrm{Supp}(\Delta_{total}) \subseteq \bigcup_k \mathrm{Supp}(\Delta T_k)
\]

Violation = ontology creep.

---

## 4. Relationship to Other Layers

### 4.1 Techniques
- This operator **does not replace** Technique definitions.
- It assumes all Techniques are already well-formed and intent-valid.

### 4.2 Bounds
- Does not override or relax Bounds.
- If a Bound rejects a Technique, that Technique contributes **zero** here.

### 4.3 RLMs
- RLMs determine whether Techniques transmit.
- This operator merely accounts for the result if they do.

### 4.4 Regime
- Regime determines which Techniques are admissible.
- No regime inference is performed here.

---

## 5. MGA-C Usage (Allowed and Required)

INTERVENTION_DYNAMICS is permitted in MGA-C **only** for:

- sequencing analysis,
- interference detection,
- decay overlap accounting,
- explaining why stacked interventions underperformed *relative to their own definitions*.

It may **not** be used to justify:
- feasibility claims,
- causal explanations,
- intent attribution,
- moral evaluation.

---

## 6. Misuse Prohibitions (Strict)

Invalid uses include:
- “intervention dynamics caused X”
- “the intervention worked because of dynamics”
- using this operator without explicit Techniques
- introducing new state variables here
- masking failed Techniques via composition language

Violations indicate **mechanism laundering**.

---

## 7. Reduction Check (Robustness Contract)

As ΔO → 0:

> Multiple interventions can overlap in time and effect, and their combined impact can be accounted for without introducing new causes.

All refinements collapse cleanly to additive bookkeeping.
Operator passes robustness, boundedness, and non-causality tests.

---

### END OF CANONICAL OPERATOR FILE (v1.2)

