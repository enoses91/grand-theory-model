# X

## COR OBJECT HEADER

* **O_ID:** `COR.X`
* **Name:** X (Exit / Mobility / Option Value)
* **Order:** 1st
* **Kind:** Core Metric
* **Status:** Canonical
* **Version:** 1.2
* **Changelog:**
  * v1.0: Scalar exit metric; masking dynamics and coupling to φ, θ, and E.
  * v1.1: Integrated latent substructure (physical, economic, institutional, cognitive); formalized asymmetry, lock-in, and hysteresis.
  * **v1.2:** Reconciled with OCF anchors: (i) explicit σ (scale) conditioning, (ii) separation from control surfaces and intent, (iii) incorporation of Weighted Access and topology effects, (iv) measurement discipline via OCF.OPERATOR.MEASUREMENT, (v) alignment with scale-transition rules.

**OCF References:**  
- `OCF.DOMAIN.SCALE` (σ validity)  
- `OCF.OPERATOR.MEASUREMENT` (𝓜 discipline)  
- `OCF.CONTROL_SURFACE.U` (exit suppression vs capacity)  
- `OCF.OPERATOR.WEIGHTED_ACCESS` (asymmetric exit feasibility)  
- `OCF.OPERATOR.SCALE_TRANSITION` (cross-σ mobility claims)

---

## 1. Base Definition (O⁽⁰⁾)

**X is the degree to which actors can credibly, affordably, and survivably exit a given coordination regime or obligation set.**

X measures **option value**, not:
- satisfaction,
- ideology,
- loyalty,
- legality alone,
- or moral virtue.

High X allows failure to be absorbed through re-sorting.  
Low X forces failure to be absorbed internally via:
- compliance under strain,
- protest,
- or coercion.

X answers **“can actors leave without catastrophic loss?”**, not **“do they want to?”**.

---

## 2. Formal Representation

X is defined as a bounded scalar:

\[
X(\sigma,t) \in [0,1]
\]

where:
- X = 0 indicates near-total lock-in (actors are trapped),
- X = 1 indicates broadly accessible, low-cost, low-risk exit.

**Default rule:** analyses operate on **scalar X**.  
Internal structure is invoked **only when scalar X fails to explain masking, asymmetry, or delayed collapse**.

---

## 3. Scale Discipline (σ)

Exit is **scale-indexed** per `OCF.DOMAIN.SCALE`.

- X at σ_individual is not equivalent to X at σ_group or σ_system.
- High exit for elites does not imply high exit for the population.
- Cross-scale claims (“people can just leave”) require explicit **scale-transition logic**.

Illicit scale jumps are a hard error.

---

## 4. Latent Internal Substructure (ΔX)

### 4.1 Decomposition (Directional, non-agentic)

Empirical behavior shows that *which exit channels exist* matters as much as *whether exit exists*.

Accordingly:

\[
X
=
X_{\text{phys}}
+
X_{\text{econ}}
+
X_{\text{inst}}
+
X_{\text{cog}},
\qquad
\sum_i X_i \le 1
\]

Where:

- **X_phys — Physical / geographic exit**  
  Ability to relocate bodies:
  migration, emigration, spatial withdrawal.

- **X_econ — Economic exit**  
  Ability to relocate labor or capital:
  job mobility, capital flight, offshoring.

- **X_inst — Institutional exit**  
  Ability to switch rule regimes:
  jurisdictional arbitrage, forum shopping, parallel institutions.

- **X_cog — Cognitive / narrative exit**  
  Ability to disengage belief and meaning:
  symbolic compliance, epistemic withdrawal, parallel realities.

These subcomponents:
- have **no agency**,
- are **not freely substitutable**,
- cannot raise X above its scalar bound,
- but strongly shape **who exits, how quickly, and with what downstream effects**.

---

### 4.2 Invocation Rule (Strict)

Subcomponents are **not tracked by default**.

They are invoked only when:
- exit concentrates in specific classes or groups,
- legitimacy collapse is delayed despite visible failure,
- capacity erodes without protest,
- suppression of one exit channel increases pressure elsewhere.

This prevents:
- moralizing exit,
- mistaking silence for consent,
- false symmetry assumptions.

---

## 5. Effective Exit and Asymmetry

Nominal exit availability differs from **effective exit**.

Define:

\[
X^{eff}
=
\mathrm{clip}\!\left(
X
-
C_{\text{exit}}(\theta,h,\mathcal{G})
-
R_{\text{risk}},
\ 0,\ 1
\right)
\]

Where:
- **C_exit:** administrative, financial, and coordination costs
- **R_risk:** retaliation, survivability risk, irreversibility
- **𝒢:** topology effects (network lock-in, chokepoints)

Exit that is legal but one-shot, dangerous, or confiscatory contributes weakly to X.

---

## 6. Interaction With Other Core Metrics

### 6.1 Legitimacy (φ)
- High X masks φ decay by substituting exit for contestation.
- Low X converts φ failure into protest or coercion.
- Suppressing exit without restoring φ tightens B_φ.

---

### 6.2 Execution Capacity (θ)
- Exit drains skilled agents, lowering θ_exec and θ_adapt.
- Forced retention increases enforcement load and accelerates θ failure.

---

### 6.3 Surplus (E)
- Exit reallocates E_m and E_τ across regimes.
- Low E_r (risk buffer) increases exit sensitivity and volatility.

---

### 6.4 Cognitive Compression and Boundaries (κ, h)
- Selective exit increases boundary hardening (h).
- Low X + rising κ yields moralization, zero-sum framing, and identity escalation.

---

## 7. Control Surfaces and Exit Suppression

Control surfaces (U_k) may be used to **restrict exit**, but:

- Exit suppression does **not** increase X.
- Suppression raises C_exit and R_risk, lowering X^{eff}.
- Persistent exit suppression accelerates φ decay and Violence-field coupling.

Use of U_k does not imply legitimacy or stability.

---

## 8. Canonical Failure Modes

- **Exit Masking:**  
  High X delays reform while hollowing out capacity and legitimacy.

- **Asymmetric Exit Trap:**  
  High-X elites exit; low-X populations remain → localized collapse.

- **Brain Drain / Capital Flight:**  
  Loss of E_m and E_τ despite stable aggregates.

- **Lock-In Collapse:**  
  Forced reduction of X converts silent exit into overt conflict.

- **Cognitive Exit Precursor:**  
  Widespread X_cog precedes abrupt legitimacy rupture.

---

## 9. Time Properties (Asymmetric)

- Exit availability can change quickly (policy, shocks).
- Sorting, depletion, and institutional damage accumulate slowly.
- Recovery is hysteretic: lost human and institutional capital may not return even if X later increases.

---

## 10. Measurement Discipline (OCF-Compliant)

Measurement operator:

\[
\mathcal{M}_{X} : O_{X} \rightarrow \langle \hat{X}, E_d, C \rangle
\]

Observable bundles must specify **channel and scale**:

- Physical: migration flows (skill-weighted)
- Economic: capital flows, firm relocation
- Institutional: jurisdiction switching
- Cognitive: participation decay, epistemic fragmentation

Unknown ≠ low; uncertainty must be bounded and labeled.

---

## 11. MGA Integration

- **Used in:** MGA-A, MGA-B, MGA-C
- **Critical phases:**
  - Metric snapshot
  - Exit masking diagnostics
  - Feasibility gating (exit suppression vs reform)
- **Required audits:**
  - Scale Consistency Audit
  - Asymmetric Exit Audit
  - Measurement Validity Audit
- **Default disposition under uncertainty:** **Bound**

---

## 12. Misuse Prohibitions (Hard)

Invalid uses include:
- treating exit as preference or virtue,
- moralizing exit behavior,
- assuming suppressing exit restores φ or θ,
- ignoring asymmetric exit access,
- collapsing exit into ideology or topology.

Violations indicate **mobility blindness or agency misattribution**.

---

## 13. Reduction Check (Robustness Contract)

Reducing ΔX → 0 yields:

> X is a bounded scalar governing option value to exit coordination obligations.

Masking, asymmetry, and hysteresis collapse to a generic “exit delays failure” effect with unchanged semantics.

---

### END OF CANONICAL OBJECT FILE (v1.2)
