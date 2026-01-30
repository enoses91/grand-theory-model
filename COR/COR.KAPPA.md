# COR.KAPPA.md

## COR OBJECT HEADER

* **O_ID:** `COR.KAPPA`
* **Name:** κ (Cognitive Compression / Effective Dimensionality)
* **Order:** 1st
* **Kind:** State Variable
* **Status:** Canonical
* **Version:** 1.3
* **Changelog:**
  * v1.0: Scalar cognitive compression; salience amplification and hysteresis.
  * v1.1: Integrated latent internal substructure (load, threat, velocity); asymmetric collapse/recovery dynamics.
  * **v1.2:** Reconciled with OCF anchors: (i) explicit σ (scale) conditioning, (ii) separation from metrics and intent, (iii) clarified coupling to CI, φ, θ, E, and fields via Π_k, (iv) upgraded measurement discipline to OCF.OPERATOR.MEASUREMENT, (v) removed residual narrative ambiguity.
  * **v1.3:** Update with `BOUNDS.ECO_GEO`.

**OCF References:**  
- `OCF.DOMAIN.SCALE` (σ validity)  
- `OCF.OPERATOR.MEASUREMENT` (𝓜 discipline)  
- `OCF.OPERATOR.PI_FIELD` (salience propagation, non-agency)  
- `OCF.OPERATOR.SCALE_TRANSITION` (cross-σ perception claims)

---

## 1. Base Definition (O⁽⁰⁾)

**κ is the state variable representing the effective cognitive dimensionality available to actors and institutions for perceiving, processing, and integrating information relevant to coordination.**

κ governs **how many dimensions can be held simultaneously**, not *which* beliefs are chosen.

κ is **not**:
- intelligence (g),
- education or knowledge stock (CI),
- ideology or belief content,
- legitimacy (φ),
- morality, virtue, or intent.

κ encodes **capacity for complexity under stress**, not correctness.

---

## 2. Formal Representation

κ is defined as a bounded scalar:

\[
\kappa(\sigma,t) \in [0,1]
\]

where:
- κ = 1 indicates high-dimensional, multi-factor reasoning,
- κ = 0 indicates extreme compression onto a few salient dimensions.

**Default rule:** analyses operate on **scalar κ**.  
Internal structure is invoked **only when scalar κ fails to explain salience lock-in, moralization, or overreaction dynamics**.

---

## 3. Scale Discipline (σ)

Cognitive compression is **scale-indexed** per `OCF.DOMAIN.SCALE`.

- κ at σ_individual differs from κ at σ_group or σ_system.
- High local compression does not imply system-wide κ collapse.
- Claims that “society can’t think clearly” require explicit **scale-transition logic**.

Illicit scale jumps are a hard error.

---

## 4. Latent Internal Substructure (Δκ)

### 4.1 Decomposition (Latent, non-agentic)

Empirical analysis shows that compression arises through **distinct but interacting channels**.

Accordingly:

\[
\kappa
=
\kappa_{\text{load}}
+
\kappa_{\text{threat}}
+
\kappa_{\text{velocity}},
\qquad
\sum_i \kappa_i \le 1
\]

Where:

- **κ_load — Cognitive load compression**  
  Compression driven by:
  - procedural density (CI_load),
  - coordination overhead,
  - time poverty (E_τ collapse),
  - compliance and administrative burden.

- **κ_threat — Threat / fear compression**  
  Compression driven by:
  - violence salience,
  - insecurity and unpredictability,
  - identity-linked or existential framing.

- **κ_velocity — Information velocity compression**  
  Compression driven by:
  - high information speed,
  - low signal-to-noise,
  - novelty shocks,
  - outrage amplification.

These components:
- have **no agency**,
- are **not freely substitutable**,
- cannot raise κ above its scalar bound,
- but strongly shape **which stressors dominate perception and coordination**.

---

### 4.2 Invocation Rule (Strict)

Subcomponents are **not tracked by default**.

They are invoked only when:
- reducing one stressor fails to restore κ,
- compression persists despite apparent stabilization,
- interventions target the wrong bottleneck,
- salience remains high under low objective risk.

This prevents:
- mistaking education for decompression,
- moralizing fear responses,
- assuming reversibility without stability.

---

## 5. Compression and Recovery Dynamics

### 5.1 Asymmetric dynamics (canonical)

κ exhibits **strong directional asymmetry**:

- **Compression:** fast, nonlinear, shock-amplified  
- **Recovery:** slow, cumulative, stability-dependent

Formally:

\[
\dot{\kappa}
=
- A(\kappa_{\text{load}},\ \kappa_{\text{threat}},\ \kappa_{\text{velocity}})
+ R(\phi,\ E_\tau,\ \text{stability},\ t)
- \epsilon_\kappa
\]

Where:
- \(A(\cdot)\) is steep under overload, threat, and salience,
- \(R(\cdot)\) requires sustained low volatility and surplus,
- \(\epsilon_\kappa\) reflects hysteresis once κ is low.

Eco-geographic stress acts as a conditioning amplifier on compression dynamics:

- Repeated hazard cycles and slow recovery (\(\tau_{recover}^{EG} \gg \tau_{collapse}^{EG}\)) keep \(A(\cdot)\) elevated even after acute shocks pass.
- Persistent logistics or resource constraints prevent \(R(\cdot)\) from operating by collapsing E_τ and increasing background uncertainty.

As a result, κ may remain low despite partial restoration of φ or θ when B_EG remains binding.


---

### 5.2 Salience dominance

As κ declines:
- rare but vivid events dominate perception,
- long-term and second-order effects are discounted,
- structural causation is replaced by intent attribution,
- binary and moral framings outcompete nuance.

This is **systematic salience dominance**, not random error.

---

## 6. Interaction With Other Core Objects

### 6.1 Legitimacy (φ)
- Low κ amplifies sensitivity to asymmetry and procedural noise.
- Small legitimacy violations produce outsized φ losses.
- φ collapse feeds back into κ_threat via uncertainty.

---

### 6.2 Execution Capacity (θ)
- θ failure increases κ via unpredictability and backlog salience.
- κ collapse makes even stable θ appear unreliable or malicious.

---

### 6.3 Institutional Intelligence (CI)
- CI_load is a primary upstream driver of κ_load.
- High CI with low CI_access accelerates compression.
- CI reduction without simplification may not restore κ.

---

### 6.4 Effective Surplus (E)
- E_τ (temporal surplus) is a prerequisite for κ recovery.
- Security surplus (E_s) directly reduces κ_threat.
- Low E converts shocks into lasting compression.

---

### 6.5 Exit (X)
- High X allows disengagement, masking κ collapse.
- Low X forces compressed cognition into overt conflict.

---

### 6.6 `BOUNDS.ECO_GEO` (Eco-Geographic Feasibility)

Eco-geographic constraints (`BOUNDS.ECO_GEO`, B_EG) condition κ by **systematically increasing load, threat, and salience velocity** under stress.

When B_EG tightens, κ declines through:

- **Load amplification:**  
  Recovery workload, infrastructure failure, and logistics friction increase procedural and coordination burden, accelerating κ_load compression.

- **Threat salience:**  
  Repeated hazard exposure, displacement risk, and resource insecurity elevate κ_threat even in the absence of violence or ideological conflict.

- **Velocity shocks:**  
  Rapid-onset disasters and cascading failures increase information velocity and novelty, steepening κ_velocity compression.

Canonical conditioning chain:

\[
B_{EG}\ \downarrow
\Rightarrow
(E,\ \theta)\ \downarrow
\Rightarrow
(\kappa_{\text{load}},\ \kappa_{\text{threat}},\ \kappa_{\text{velocity}})\ \uparrow
\Rightarrow
\kappa\ \downarrow
\]

B_EG does **not** determine which narratives dominate.  
It reduces the dimensionality available for processing any narrative, increasing susceptibility to salience dominance and attribution error.

Eco-geographically induced compression is therefore **structural and non-ideological by default**.


---

## 7. Fields and Propagation (Non-Agency)

κ shapes how **fields propagate via Π_k**, but κ itself has no agency.

- Low κ increases Information-field gain on salience and outrage.
- κ does not “choose narratives”; it conditions receptivity.
- No intent or coordination is implied by κ-mediated amplification.

---

## 8. Canonical Failure Modes

- **Moralization Spiral:**  
  κ collapse converts tradeoffs into absolute values.

- **Attribution Error Cascade:**  
  Structural failures reinterpreted as malice or conspiracy.

- **Policy Whiplash:**  
  Rapid oscillation between oversimplified solutions.

- **Cognitive Lock-In:**  
  Even improving conditions fail to restore κ due to hysteresis.

- **Shock-Salience Entrapment:**  
  Repeated eco-geographic shocks keep rare, vivid events dominant in perception, preventing κ recovery even under improving averages.

- **Recovery Blindness:**  
  Analysts assume κ should rebound after an acute event, ignoring slow eco-geo recovery and persistent load.

- **Structural Attribution Error:**  
  Eco-geographically driven compression is misread as mass irrationality or bad faith.


---

## 9. Measurement Discipline (OCF-Compliant)

Measurement operator:

\[
\mathcal{M}_{\kappa} : O_{\kappa} \rightarrow \langle \hat{\kappa}, E_d, C \rangle
\]

Observable bundles (scale-specific):
- complexity of discourse vs issue dimensionality,
- response variance to equivalent stimuli,
- persistence of salience after objective risk falls,
- prevalence of binary framing across domains.

κ is **never directly observable**; confidence must be bounded.

When eco-geographic stress is proposed as a driver of κ compression, acceptable observables include:

- persistence of salience after hazard events relative to recovery progress,
- increased procedural load and backlog following eco-geo shocks,
- volatility in attention and response patterns tied to environmental or logistical disruption.

Narrative intensity alone is insufficient to infer eco-geo–conditioned κ collapse.


---

## 10. MGA Integration

- **Used in:** MGA-A, MGA-B
- **Critical phases:**
  - State snapshot
  - Salience amplification diagnostics
  - Feasibility interpretation
- **Required audits:**
  - Scale Consistency Audit
  - Measurement Validity Audit
- **Default disposition under uncertainty:** **State indeterminate (bounded)**

---

## 11. Misuse Prohibitions (Hard)

Invalid uses include:
- equating κ with intelligence or ignorance,
- assuming education alone restores κ,
- moralizing compressed cognition,
- inferring intent or bad faith from κ,
- treating κ collapse as permanent or costless.

Violations indicate **epistemic or attribution error**.

---

## 12. Reduction Check (Robustness Contract)

Reducing Δκ → 0 yields:

> κ is the bounded scalar governing how much complexity can be processed under stress.

All refinements collapse cleanly into a single state variable with unchanged semantics.

---

### END OF CANONICAL OBJECT FILE (v1.2)
