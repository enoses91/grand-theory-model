# COR.X.md

## COR OBJECT HEADER

* **O_ID:** `COR.X`
* **Name:** X (Exit / Mobility / Option Value)
* **Order:** 1st
* **Kind:** Core Metric
* **Status:** Canonical
* **Version:** 1.4
* **Changelog:**
  * v1.0: Scalar exit metric; masking dynamics and coupling to `COR.PHI`, `COR.THETA`, and `COR.E`.
  * v1.1: Integrated latent substructure (physical, economic, institutional, cognitive); formalized asymmetry, lock-in, and hysteresis.
  * **v1.2:** Reconciled with OCF anchors: (i) explicit σ (scale) conditioning, (ii) separation from control surfaces and intent, (iii) incorporation of Weighted Access and topology effects, (iv) measurement discipline via OCF.OPERATOR.MEASUREMENT, (v) alignment with scale-transition rules.
  * **v1.3:** Namespace lint: fully-qualified `COR.*` cross-references; consistent backtick object IDs.
  * **v1.4:** Update with `BOUNDS.ECO_GEO`.

**OCF References:**  
- `OCF.DOMAIN.SCALE` (σ validity)  
- `OCF.OPERATOR.MEASUREMENT` (𝓜 discipline)  
- `OCF.CONTROL_SURFACE.U` (exit suppression vs capacity)  
- `OCF.OPERATOR.WEIGHTED_ACCESS` (asymmetric exit feasibility)  
- `OCF.OPERATOR.SCALE_TRANSITION` (cross-σ mobility claims)

---

## 1. Base Definition (O⁽⁰⁾)

**`COR.X` is the degree to which actors can credibly, affordably, and survivably exit a given coordination regime or obligation set.**

`COR.X` measures **option value**, not:
- satisfaction,
- ideology,
- loyalty,
- legality alone,
- or moral virtue.

High `COR.X` allows failure to be absorbed through re-sorting.  
Low `COR.X` forces failure to be absorbed internally via:
- compliance under strain,
- protest,
- or coercion.

`COR.X` answers **“can actors leave without catastrophic loss?”**, not **“do they want to?”**.

---

## 2. Formal Representation

`COR.X` is defined as a bounded scalar:

\[
X(\sigma,t) \in [0,1]
\]

where:
- `COR.X` = 0 indicates near-total lock-in (actors are trapped),
- `COR.X` = 1 indicates broadly accessible, low-cost, low-risk exit.

**Default rule:** analyses operate on **scalar `COR.X`**.  
Internal structure is invoked **only when scalar `COR.X` fails to explain masking, asymmetry, or delayed collapse**.

---

## 3. Scale Discipline (σ)

Exit is **scale-indexed** per `OCF.DOMAIN.SCALE`.

- `COR.X` at σ_individual is not equivalent to `COR.X` at σ_group or σ_system.
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
- cannot raise `COR.X` above its scalar bound,
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
- **`COR.STATE.G`:** topology effects (network lock-in, chokepoints)

Exit that is legal but one-shot, dangerous, or confiscatory contributes weakly to `COR.X`.

---

## 6. Interaction With Other Core Metrics

### 6.1 Legitimacy (`COR.PHI`)
- High `COR.X` masks `COR.PHI` decay by substituting exit for contestation.
- Low `COR.X` converts `COR.PHI` failure into protest or coercion.
- Suppressing exit without restoring `COR.PHI` tightens B_`COR.PHI`.

---

### 6.2 Execution Capacity (`COR.THETA`)
- Exit drains skilled agents, lowering `COR.THETA`_exec and `COR.THETA`_adapt.
- Forced retention increases enforcement load and accelerates `COR.THETA` failure.

---

### 6.3 Surplus (`COR.E`)
- Exit reallocates E_m and E_τ across regimes.
- Low E_r (risk buffer) increases exit sensitivity and volatility.

---

### 6.4 Cognitive Compression and Boundaries (`COR.KAPPA`, `COR.H`)
- Selective exit increases boundary hardening (`COR.H`).
- Low `COR.X` + rising `COR.KAPPA` yields moralization, zero-sum framing, and identity escalation.

---

### 6.5 `BOUNDS.ECO_GEO` (Eco-Geographic Feasibility)

Eco-geographic constraints (`BOUNDS.ECO_GEO`, B_EG) condition `COR.X` by shaping both **exit pressure** and **realizable exit channels**.

When B_EG tightens, exit dynamics change through:

- **Forced exit activation:**  
  Hazard exposure, land or water stress, and infrastructure failure raise exit pressure independent of legitimacy or ideology.

- **Channel distortion:**  
  Geography and corridor viability constrain X_phys and X_econ, increasing asymmetry between those who can relocate and those who cannot.

- **Risk inflation:**  
  Eco-geo volatility increases R_risk (survivability, irreversibility), lowering X^{eff} even when nominal exit options exist.

- **Local hollowing:**  
  Partial exit relieves individual exposure while degrading local surplus and capacity, reducing future exit feasibility for those who remain.

Canonical conditioning chain:

\[
B_{EG}\ \downarrow
\Rightarrow
\text{exit pressure} \uparrow
\Rightarrow
X^{eff}\ \text{becomes asymmetric}
\Rightarrow
(\theta,\ E)\ \downarrow\ \text{locally}
\]

B_EG does **not** express preference or intent to exit.  
It alters the **feasible option set** by changing who can leave, at what cost, and with what downstream effects.


---

## 7. Control Surfaces and Exit Suppression

Control surfaces (U_k) may be used to **restrict exit**, but:

- Exit suppression does **not** increase `COR.X`.
- Suppression raises C_exit and R_risk, lowering `COR.X`^{eff}.
- Persistent exit suppression accelerates `COR.PHI` decay and Violence-field coupling.

Use of U_k does not imply legitimacy or stability.

---

## 8. Canonical Failure Modes

- **Exit Masking:**  
  High `COR.X` delays reform while hollowing out capacity and legitimacy.

- **Asymmetric Exit Trap:**  
  High-`COR.X` elites exit; low-`COR.X` populations remain → localized collapse.

- **Brain Drain / Capital Flight:**  
  Loss of E_m and E_τ despite stable aggregates.

- **Lock-In Collapse:**  
  Forced reduction of `COR.X` converts silent exit into overt conflict.

- **Cognitive Exit Precursor:**  
  Widespread X_cog precedes abrupt legitimacy rupture.

- **Forced-Exit Hollowing:**  
  Eco-geographic stress pushes out mobile actors, degrading local θ and E and accelerating collapse for immobile populations.

- **Corridor-Bound Trap:**  
  Geography or infrastructure loss blocks physical exit, converting latent exit pressure into coercion or conflict.

- **Asymmetric Climate Exit:**  
  High-X groups relocate early; low-X groups absorb rising risk, producing sharp distributional and political stress.


---

## 9. Time Properties (Asymmetric)

- Exit availability can change quickly (policy, shocks).
- Sorting, depletion, and institutional damage accumulate slowly.
- Recovery is hysteretic: lost human and institutional capital may not return even if `COR.X` later increases.

Eco-geographic stress steepens exit hysteresis:

- Displacement driven by hazard or environmental degradation is often one-way.
- Corridor loss or land degradation reduces future X_phys even if policies later liberalize.
- Return migration requires eco-geo repair (\(\tau_{recover}^{EG} \gg \tau_{collapse}^{EG}\)), not merely restored legitimacy or incentives.


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

When eco-geographic stress is proposed as a driver of exit, acceptable observables include:

- migration or displacement flows correlated with hazard exposure or environmental degradation,
- changes in corridor accessibility or transport costs affecting relocation,
- differential exit rates across eco-geo exposure zones,
- persistence of out-migration after policy or legitimacy stabilization.

Discourse about “choice” or “preference” alone is insufficient to establish eco-geo-conditioned exit dynamics.


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
- assuming suppressing exit restores `COR.PHI` or `COR.THETA`,
- ignoring asymmetric exit access,
- collapsing exit into ideology or topology.

Violations indicate **mobility blindness or agency misattribution**.

---

## 13. Reduction Check (Robustness Contract)

Reducing ΔX → 0 yields:

> `COR.X` is a bounded scalar governing option value to exit coordination obligations.

Masking, asymmetry, and hysteresis collapse to a generic “exit delays failure” effect with unchanged semantics.

---

### END OF CANONICAL OBJECT FILE (v1.2)