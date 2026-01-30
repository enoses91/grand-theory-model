# OCF.OPERATOR.OMISSION_AUDIT

## COR OBJECT HEADER

- **O_ID:** `OCF.OPERATOR.OMISSION_AUDIT`
- **Name:** Omission Audit
- **Order:** 4th
- **Kind:** Meta-Operator (Analytic Discipline / Discovery Operator)
- **Role:** Meta-analytic operator that systematically detects missing objects, illicit scale shifts, bound misclassification, intent laundering, and measurement invalidity in an analysis; enforces COR completeness, scale discipline (σ), regime consistency (𝓜), and feasibility integrity.
- **Status:** Canonical
- **Version:** 1.2
- **Changelog:**
  - v1.0: Canonical Omission Audit operator; formalized completeness, scale, and feasibility checks.
  - v1.1: Tightened tier language; aligned with MGA pipeline; added measurement validity hook; formalized σ as mandatory dimension; harmonized RLM and T-operator language.
  - **v1.2:** Reconciled to explicitly reference **σ, 𝓜, Π_k, U_k, W_{G→U}, Technique operators, and T₁–T₄**; strengthened anti–intent laundering checks; aligned outputs with finalized Tier-2/3 objects and Bounds.

---

## 0. Indexing, Non-Agency, and Operator Form

**Indexing**
- **Manifold:** 𝓜
- **Scale:** σ (explicit for every audited claim, defined in `OCF.DOMAIN.SCALE`)

**Non-Agency Constraint (hard)**
- The Omission Audit is a **meta-analytic operator**, not a causal mechanism.
- It contains **no intent, no judgment, no preference, and no policy stance**.
- It does not modify analyses; it **bounds their validity**.

---

## 1. Base Definition (O⁰)

**The Omission Audit evaluates an analysis against the full COR to identify what was *not modeled* but is plausibly doing causal, constraining, or feasibility work.**

It does **not**:
- add new primitives,
- introduce new mechanisms,
- assert truth,
- rewrite the analysis.

It **does**:
- surface blind spots,
- expose illicit inference,
- force explicit σ and regime scoping,
- downgrade or halt conclusions that rest on unmodeled structure.

The audit is **diagnostic, not punitive**.

---

## 2. Formal Role in the System

Let an analysis \(A\) be defined over:
- an object set \(\mathcal{O}_A\),
- claims \(C_A\),
- implicit assumptions \(\mathcal{H}_A\),
- scale declarations \(\Sigma_A\).

The Omission Audit computes:

### 2.1 Omitted-object set

\[
\mathcal{A}_{omit}(A)
=
\Big\{
O \in \mathcal{O}_{COR}
\;\big|\;
O\ \text{plausibly active under signals in } A
\;\land\;
O \notin \mathcal{O}_A
\Big\}
\]

### 2.2 Violation set

\[
\mathcal{V}(A)
=
\{
\sigma\text{-errors},\
\text{bound dominance errors},\
\text{object misuse},\
\text{intent laundering},\
\text{measurement invalidity}
\}
\]

### 2.3 Output

\[
\mathrm{OA}(A)
=
\langle
\mathcal{A}_{omit},\
\mathcal{V},\
\Delta\mathrm{Conf}(C_A),\
\mathrm{Disposition}
\rangle
\]

The audit **bounds confidence**; it does not replace judgment.

---

## 3. Mandatory Invocation (Non-Optional)

The Omission Audit **must be run** for:

- MGA-B (diagnostic analysis)
- MGA-C (intervention design / feasibility)
- any feasibility, inevitability, or dominance claim
- critiques of external authors, policies, or strategies

Skipping the audit **invalidates conclusions beyond descriptive scope**.

---

## 4. Canonical Audit Domains

### 4.1 Field Omission Audit (ρ_k, Π_k (`OCF.OPERATOR.PI_FIELD`), U_k (`OCF.CONTROL_SURFACE.U`))

For each Field \(F_k\), the audit asks:

- Do observed signals imply propagation via \(\Pi_k\)?
- Are control surfaces \(U_k\) implicitly doing work?
- Is the field treated as inactive without justification?

Outputs (per field):
- Active but omitted
- Weakly treated
- Explicitly excluded (acceptable)
- Unknown (insufficient evidence)

---

### 4.2 Bound Dominance Audit (B_i)

For each Bound \(B_i\), the audit asks:

- Is \(B_i\) implicitly assumed slack?
- Is there evidence it is binding or near-binding?
- Would conclusions reverse if \(B_i\) dominates?

Outputs:
- Binding
- Near-binding
- Assumed slack (flagged)
- Unknown

---

### 4.3 Scale Consistency Audit (σ + T-operators)

For each substantive claim, the audit checks:

- Is σ (`OCF.DOMAIN.SCALE`) explicitly declared?
- Are scale transitions invoked?
- If so, are they mediated by valid operators **T₁–T₄**?

Hard flags include:
- individual → group (without T₂)
- cluster → group (without T₂)
- group → regime (without persistence)
- pattern → cause
- class → actor

---

### 4.4 Object Misuse Audit (Category Errors)

Flags non-negotiable violations, including:

- class treated as agent
- cluster treated as coordinated actor
- `COR.CHI` treated as `COR.PHI`
- `COR.PHI` treated as enforcement
- RLMs treated as intent
- regime treated as ideology

These are **hard defects**, not style notes.

---

### 4.5 Intent Laundering Audit (Technique Discipline)

The audit explicitly checks:

- Are **Techniques** inferred without artifacts?
- Are outcomes retroactively attributed to intent?
- Is drift or endogenous dynamics miscast as agency?

Required evidence for Technique claims:
- operator definition,
- control-surface access,
- counterfactual dominance,
- persistence under cost.

Absent these → **intent laundering violation**.

---

### 4.6 Measurement Validity Audit (𝓜-Gated)

For each inferred latent variable or object, the audit asks:

- Is a measurement operator \(\mathcal{M}\) specified or implied?
- Is evidence class consistent with confidence?
- Is higher-grade evidence available but ignored?

Outputs:
- Valid measurement basis
- Overconfident inference (downgrade)
- Invalid inference (retract or bound)

---

### 4.7 Regime & Time-Scale Consistency Audit

The audit checks:

- Is a Regime explicitly identified?
- Are dominant bounds named?
- Are time constants \(\tau(\sigma)\) respected?
- Are slow variables treated as fast?

Example flag:
> “Assumes rapid `COR.PHI` recovery inconsistent with regime time constants.”

---

## 5. Required Output Structure

Every Omission Audit must produce:

1. Declared σ and regime
2. Resolved object set
3. Detected omissions (Fields, Bounds, RLMs, Techniques)
4. Scale and attribution violations
5. Bound dominance challenges
6. Measurement validity issues
7. Impact on conclusions:
   - unaffected
   - weakened
   - invalid without extension
8. Refinement signals (if any)
9. **Disposition** (required)

---

## 6. Relationship to COR Layers

| Layer | Audit Function |
|---|---|
| Fields | Detect missing Π_k / U_k channels |
| Bounds | Test slack vs dominance assumptions |
| RLMs | Detect unmodeled regime-local mechanisms |
| Patterns | Allow descriptive use; forbid causal use |
| Techniques | Enforce intent discipline |
| T-Operators | Validate cross-scale claims |
| MGA | Gate progression and confidence |

The audit introduces **no new causation**.

---

## 7. COR Refinement Gate (Exception-Driven)

COR refinement is justified **only if**:

- the same omission recurs across analyses, and
- it cannot be resolved via better object use, measurement, or scoping.

This prevents ontology creep.

---

## 8. Misuse Prohibitions (Non-Negotiable)

Invalid uses include:

- using the audit rhetorically,
- suppressing inconvenient findings,
- treating audit output as causal,
- laundering intent via “implicit technique” claims,
- skipping audits for favored conclusions,
- treating “unknown” as “inactive.”

Violations indicate **analysis discipline failure**.

---

## 9. MGA Integration

- **Mandatory in:** MGA-B, MGA-C
- **Optional (recommended) in:** MGA-A
- **Placement:** after primary analysis, before conclusions
- **Effect:** bounds or halts feasibility claims

---

## 10. Reduction Check (Robustness Contract)

As ΔO → 0:

> Analyses must check what they omitted, what they assumed, and whether claims are scale- and regime-valid.

All refinements collapse to a general completeness, scale, and validity check.
Operator passes robustness, boundedness, and meta-analytic requirements.

---

### END OF CANONICAL OBJECT FILE (v1.2)

