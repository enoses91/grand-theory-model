# BOUNDS.B_PHI.md

## COR OBJECT HEADER

* **O_ID:** `BOUNDS.B_PHI`
* **Name:** Legitimacy / Consent Feasible Bound (B_φ)
* **Order:** 2nd
* **Kind:** Feasible Bound (Hard, trajectory-gating with slack)
* **Role:** Constrains feasible trajectories by limiting the magnitude, speed, and asymmetry of changes (or steady-state configurations) that can be sustained without triggering legitimacy collapse, noncompliance, exit activation, or violence coupling. Distinct from COR.PHI itself.
* **Status:** Canonical
* **Version:** 1.1
* **Changelog:**
  * **v1.1:** Reconciled prior v1 variants into a single definition: (i) adopts trajectory-gating + slack/dominance formalism, (ii) integrates explicit non-compensability, (iii) adds named canonical failure modes, (iv) aligns measurement and σ discipline with OCF anchors, (v) harmonizes MGA usage and default dispositions.
  * v1.0: Prior drafts (two variants) consolidated here.

---

## 1. Base Definition (O⁽⁰⁾)

**B_φ is the feasibility bound associated with legitimacy and consent.** It limits the magnitude, speed, and asymmetry of changes (or steady-state configurations) that can be sustained without triggering systemic noncompliance, exit, or coercive escalation.

B_COR.PHI is **not** `COR.PHI` itself:

- **`COR.PHI`** is the metric component (current legitimacy level)
- **B_φ** is the constraint determining what changes are feasible without collapsing COR.PHI

Formally, treat B_COR.PHI as a constraint operator mapping a candidate trajectory to feasible / infeasible **with respect to legitimacy**:

\[
B_\phi:\ \mathcal{T} \rightarrow \{0,1\}
\]

where \(\mathcal{T}\) is a candidate trajectory (policy, institutional action, enforcement regime, redistribution profile, procedural shift, etc.).

---

## 2. Feasible Set, Slack, and Dominance

### 2.1 Feasible set

Let \(\mathcal{R}\) be the feasible region of trajectories:

\[
\mathcal{R} = \bigcap_i \left\{ \mathcal{T} : B_i(\mathcal{T}) = 1 \right\}
\]

B_φ contributes one constraint surface in \(\mathcal{R}\).

### 2.2 Slack

Define legitimacy slack:

\[
\sigma_\phi(\mathcal{T}) \ge 0
\]

Interpretation:

- high slack: regime can absorb shocks/changes without legitimacy rupture
- low slack: small asymmetries or promise gaps trigger crisis

Clipped slack (robustness contract):

\[
\tilde{\sigma}_\phi = \max(\sigma_\phi,\ \varepsilon_\sigma)
\]

**Unknown slack ≠ binding.**

### 2.3 Dominance switching

B_φ becomes binding (dominant) when:

\[
\tilde{\sigma}_\phi \approx \min_j \tilde{\sigma}_j
\]

Dominance can switch rapidly during salience shocks, enforcement asymmetry, or promise-gap expansion.

---

## 3. What B_φ Constrains (Canonical Drivers)

B_φ primarily constrains:

1. **Enforcement symmetry** (two-tier perception with corroborating artifacts)
2. **Promise gap** (commitments vs delivery, and credibility of future delivery)
3. **Redistribution salience** (especially identity-linked transfers or losses)
4. **Procedural fairness** (process legitimacy / rule predictability)
5. **Coercion footprint** (violence field coupling risk / coercion normalization)
6. **Complexity overload** (interaction with coordination/compliance burden)

B_φ is sensitive not only to *what* happens, but **how**, **to whom**, and **how consistently**.

---

## 4. Non-Compensability (Hard-Bound Property)

B_φ is **non-compensatory** in late/binding regimes: strength in one channel (messaging, spending, or coercion) cannot “pay for” a violation in another once the bound is binding.

Operationally:

- Increasing enforcement intensity does not compensate for perceived two-tier enforcement.
- Increasing messaging does not compensate for persistent promise gaps.
- Increasing redistribution scale does not compensate for procedural illegibility or arbitrary application.

This is a **hard feasibility constraint**, not a smooth tradeoff curve.

---

## 5. Binding-Bound Signatures (Observable)

B_φ is plausibly binding when one or more are observed (artifact-sensitive):

- rising noncompliance / evasion (tax, regulatory, institutional)
- selective enforcement narratives **with corroborating enforcement artifacts**
- accelerating polarization with boundary hardening (h↑)
- exit pressure escalation (X dynamics) despite stable material conditions
- legitimacy contestation inside institutions (θ utilization shifts to self-protection)
- violence field activation (localized coercion becomes routine, not exceptional)
- legitimacy decay following repeated environmental or infrastructure shocks despite neutral intent
- enforcement or service asymmetries aligned with eco-geographic exposure zones
- rising exit or noncompliance correlated with recovery failure rather than policy change
- normalization of exceptional measures tied to disaster or resource stress


---

## 6. Cross-Bound Couplings (Amplification)

### 6.1 Promise gap → B_φ tightening (canonical)

\[
\Delta \text{PromiseGap} \uparrow \Rightarrow \sigma_\phi \downarrow
\]

especially under `COR.THETA` saturation, `COR.CI` ratchets, and high salience (Information field).

### 6.2 Enforcement asymmetry coupling

\[
\text{AsymEnf} \uparrow \Rightarrow \sigma_\phi \downarrow
\]

even if aggregate enforcement rises.

### 6.3 Interaction with Exit bound (B_X)

As B_φ tightens, exit pressure tends to rise:

\[
\sigma_\phi \downarrow \Rightarrow \text{ExitPressure} \uparrow \Rightarrow \sigma_X \downarrow
\]

Exit functions as a partial release valve until it becomes blocked or punished.

### 6.4 Interaction with Complexity bound (B_C)

Complexity increases perceived unfairness and reduces comprehension; COR.KAPPA effects amplify salience and misattribution:

\[
B_C\ \text{binding} \Rightarrow \kappa \uparrow \Rightarrow \sigma_\phi \downarrow
\]

### 6.5 Interaction with Eco-Geographic Feasibility (B_EG)

Eco-geographic constraints (`BOUNDS.ECO_GEO`, B_EG) condition B_φ **indirectly** by shaping asymmetry, service reliability, and recovery visibility.

Binding or tightening B_EG can reduce legitimacy slack through:

- **Asymmetric exposure and recovery:**  
  Uneven hazard impact or differential recovery creates perceived two-tier outcomes even under neutral rules.

- **Service failure salience:**  
  Repeated infrastructure or environmental disruptions increase visible execution failure, widening the promise gap under `COR.THETA` saturation.

- **Security degradation:**  
  Persistent eco-geographic stress reduces effective security surplus (E_s), making legitimacy brittle even absent ideological conflict.

- **Coercion normalization risk:**  
  Environmental or disaster response that relies on exceptional measures increases coercion footprint, tightening B_φ over time.

Canonical conditioning chain:

\[
B_{EG}\ \downarrow
\Rightarrow
(\theta,\ E_s)\ \downarrow
\Rightarrow
\text{PromiseGap} \uparrow\ \wedge\ \text{Asymmetry Salience} \uparrow
\Rightarrow
\sigma_\phi \downarrow
\]

B_EG does **not** determine legitimacy beliefs.  
It alters the **feasible envelope for consent** by changing what can be delivered, how evenly, and with what visible reliability.


---

## 7. Regime Dependence

B_φ sensitivity varies by regime configuration:

- high `COR.THETA` and high `COR.PHI`: slack larger; reforms feasible
- low `COR.THETA`: execution errors frequent; legitimacy burns faster
- high `COR.CI`: procedural ratchets make fairness harder to demonstrate
- high `COR.H`: identity salience multiplies asymmetry sensitivity
- low E_s: security failure makes legitimacy fragile

Thus, feasibility is **regime-local**, not universal.

---

## 8. Hysteresis and Irreversibility

B_φ exhibits strong hysteresis:

- legitimacy collapse can be fast
- legitimacy recovery is slow (often slower than COR.THETA repair)

\[
\tau_\phi^{recover} \gg \tau_\phi^{collapse}
\]

Visible betrayals, asymmetric enforcement, and normalized coercion imprint durable memory and narrow future slack.

---

## 9. Canonical Failure Modes (Named)

These are **second-order failure-mode labels** for common ways B_φ binds and stays binding:

1. **Legitimacy Trap:** attempts to restore `COR.PHI` by expanding coercion/enforcement tighten B_φ further (coercion footprint + asymmetry perceptions).
2. **Narrative Overreach:** messaging/claims exceed delivery capacity; promise gap widens; slack collapses.
3. **Delayed Collapse:** high `COR.X` postpones visible failure; accumulated promise gap and asymmetry increase eventual rupture amplitude.
4. **Fragmented `COR.PHI`:** `COR.H`↑ yields local legitimacy pockets while system-wide legitimacy collapses; “consent” becomes non-uniform and non-transferable.
5. **Recovery Legitimacy Collapse:**  
   Slow or uneven eco-geographic recovery sustains promise gaps and asymmetry, preventing legitimacy repair even after acute shocks pass.

6. **Disaster-Exceptionalism Trap:**  
   Repeated reliance on emergency powers or coercive coordination in response to eco-geographic stress tightens B_φ and normalizes consent erosion.


---

## 10. Scale and Time Properties

- **Scale (σ):** system / population scale bound; local pockets may deviate but do not negate system binding.
- **Time constants:**
  - tightening: fast under salience + asymmetry shocks
  - relaxation: slow after repairs
- **Irreversibility:** severe breaches induce hysteresis; prior slack may not be recoverable.

(Scale and time discipline must be consistent with the σ domain rules and transition operators.)

---

## 11. Measurement Notes (Bound Operator)

B_φ is **not directly measurable**. Conclusions require a measurement operator consistent with evidence hierarchy.

Primary evidence (high):

- enforcement artifacts: prosecution/sanction asymmetry with controls
- institutional compliance rates (tax, rule compliance, court compliance)
- exit traces (migration, capital flight) conditional on incentives
- COR.THETA saturation indicators (backlog/throughput/self-protection shifts)
- coercion normalization traces (routine force, routine exceptional measures)

Secondary (medium/low):

- trust surveys (lagging, manipulable)
- discourse-only indicators without corroborating artifacts

All bound conclusions must be **confidence-labeled**; discourse alone cannot establish binding status.

When eco-geographic stress is hypothesized as a driver of B_φ tightening, acceptable indicators must include **operational and distributional artifacts**, such as:

- differential recovery timelines across regions or groups,
- service delivery or enforcement variance following environmental shocks,
- exit or noncompliance patterns aligned with eco-geographic exposure,
- persistence of emergency or exceptional measures beyond acute need.

Narrative claims about “loss of trust” without such artifacts are insufficient to establish eco-geo–conditioned legitimacy binding.


---

## 12. MGA Integration

- **Used in:** MGA-A, MGA-B, MGA-C
- **Critical phases:**
  - Regime & Bounds identification
  - Failure modes and dominance switching
  - MGA-C feasibility gate (temporal feasibility + bound dominance)
- **Required audits:**
  - Symmetry / Two-Tier Audit
  - Promise Gap Audit
  - Scale Consistency Audit
  - Measurement Validity Audit

**Default disposition:**
- **Bound** unless multiple binding signatures are present.
- If B_φ is clearly binding and tightening → **Reject** `COR.PHI`-increasing interventions that do not first retire promise gaps and restore symmetry/procedure.

---

## 13. Misuse Prohibitions (Non-Negotiable)

Invalid uses include:

- treating legitimacy as “what I approve of”
- assuming elections alone guarantee slack
- inferring legitimacy collapse from polarization without artifacts
- ignoring hysteresis and recovery time constants
- assuming intent or moral urgency relaxes B_COR.PHI
- assuming coercion can substitute for consent without tightening B_COR.PHI

Violations indicate normative substitution, artifact-free inference, or feasibility blindness.

---

## 14. Aliases and Lineage

- **Aliases:** consent bound, legitimacy feasibility bound
- **Supersedes:** vague “trust limits” references
- **Superseded by:** none

---

## 15. Reduction Check (Robustness Contract)

Reducing ΔO → 0 yields:

> There exists a legitimacy constraint that limits feasible change; exceeding it triggers noncompliance, exit, or coercion.

All refinements (promise gap, two-tier enforcement, non-compensability, hysteresis) collapse to a single feasibility constraint with unchanged semantics.
Object passes robustness, boundedness, and reduction requirements.

---

### END OF CANONICAL OBJECT FILE (v1.1)

