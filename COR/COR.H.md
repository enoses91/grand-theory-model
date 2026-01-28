# O.1.STATE.H.md

## COR OBJECT HEADER

* **O_ID:** `O.1.STATE.H`
* **Name:** h (Boundary Hardness / Identity Hysteresis)
* **Order:** 1st
* **Kind:** State Variable
* **Status:** Canonical
* **Version:** 1.2
* **Changelog:**
  * v1.0: Scalar boundary hardness and persistence definition; coupling to κ, φ, topology.
  * v1.1: Integrated latent internal substructure (structural, moral, enforcement hardness); formalized asymmetric hardening/softening dynamics.
  * **v1.2:** Reconciled with OCF anchors: (i) explicit σ (scale) conditioning, (ii) clarified separation from ideology, groups, and legitimacy, (iii) formal linkage to κ-driven salience and Π_field propagation without agency, (iv) upgraded measurement discipline to OCF.OPERATOR.MEASUREMENT, (v) aligned hysteresis and reversibility claims with scale-transition rules.

**OCF References:**  
- `OCF.DOMAIN.SCALE` (σ validity)  
- `OCF.OPERATOR.MEASUREMENT` (𝓜 discipline)  
- `OCF.OPERATOR.PI_FIELD` (salience and identity propagation, non-agency)  
- `OCF.CONTROL_SURFACE.U` (boundary enforcement vs consent)  
- `OCF.OPERATOR.SCALE_TRANSITION` (cross-σ boundary claims)

---

## 1. Base Definition (O⁽⁰⁾)

**h is the state variable capturing the rigidity, persistence, and hysteresis of boundaries separating populations, identities, groups, or ideological basins.**

h measures **how difficult boundaries are to cross, blur, or dissolve once established**.

h is **not**:
- ideology or belief content,
- legitimacy (φ),
- execution capacity (θ),
- group coherence (χ),
- or formal borders alone.

It encodes **boundary persistence under stress**, not moral correctness or intent.

---

## 2. Formal Representation

h is defined as a bounded scalar:

\[
h(\sigma,t) \in [0,1]
\]

where:
- h = 0 indicates soft, permeable, easily crossed boundaries,
- h = 1 indicates rigid, durable, and actively reinforced boundaries.

**Default rule:** analyses operate on **scalar h**.  
Internal structure is invoked **only when scalar h fails to explain persistence, violence substitution, or reintegration failure**.

---

## 3. Scale Discipline (σ)

Boundary hardness is **scale-indexed** per `OCF.DOMAIN.SCALE`.

- h at σ_individual differs from h at σ_group or σ_system.
- Hard boundaries in one domain do not imply universal polarization.
- Claims that “society is polarized” require explicit **scale-transition logic**.

Illicit scale jumps are a hard error.

---

## 4. Latent Internal Substructure (Δh)

### 4.1 Decomposition (Latent, non-agentic)

Empirical dynamics show that *how* boundaries harden matters as much as *how hard* they are.

Accordingly:

\[
h
=
h_{\text{struct}}
+
h_{\text{moral}}
+
h_{\text{enf}},
\qquad
\sum_i h_i \le 1
\]

Where:

- **h_struct — Structural / topological hardness**  
  Rigidity produced by:
  - network segregation,
  - loss of bridging ties,
  - spatial separation,
  - institutional compartmentalization.

- **h_moral — Moralized / sacral hardness**  
  Rigidity produced by:
  - identity fusion,
  - moral non-negotiability,
  - taboo enforcement,
  - framing boundary crossing as betrayal or evil.

- **h_enf — Enforcement / punitive hardness**  
  Rigidity produced by:
  - social sanctions,
  - economic penalties,
  - legal exclusion,
  - violence or threat thereof.

These subcomponents:
- have **no agency**,
- are **not freely substitutable**,
- cannot raise h above its scalar bound,
- but strongly shape **reversibility, violence coupling, and collapse mode**.

---

### 4.2 Invocation Rule (Strict)

Subcomponents are **not tracked by default**.

They are invoked only when:
- boundaries persist despite restored φ or θ,
- coercion substitutes for legitimacy unexpectedly,
- exit sorting accelerates segregation,
- contact fails to soften divisions.

This prevents moral reification and narrative overfitting.

---

## 5. Hardening, Softening, and Hysteresis

### 5.1 Asymmetric dynamics (canonical)

h exhibits **strong directional asymmetry**:

- **Hardening:** fast, shock-driven, salience-amplified  
- **Softening:** slow, cumulative, contact- and stability-dependent

Formally:

\[
\dot{h}
=
A_h(\kappa,\ \text{salience},\ \text{threat},\ \mathcal{G})
-
R_h(\text{contact},\ \phi,\ \theta)
-
\epsilon_h
\]

Where:
- \(A_h\) is steep under κ collapse and moralization,
- \(R_h\) is shallow and time-gated,
- \(\epsilon_h\) reflects hysteresis once h is high.

---

### 5.2 Hysteresis (core property)

Once h crosses a regime-dependent threshold:
- boundary persistence becomes self-reinforcing,
- removal of the original stressor does not restore permeability,
- recovery may require generational time or regime change.

This explains systematic failure of “return to normal” strategies.

---

## 6. Interaction With Other Core Objects

### 6.1 κ (Cognitive Compression)
- κ collapse accelerates binary sorting and identity salience.
- κ is a primary upstream driver of h_moral formation.

---

### 6.2 φ (Legitimacy)
- Declining φ shifts boundary maintenance from consent to coercion.
- φ_sac strongly couples to h_moral persistence.

---

### 6.3 X (Exit)
- High X enables sorting that reduces cross-boundary contact,
  indirectly increasing h_struct.
- Low X converts hard boundaries into overt conflict.

---

### 6.4 θ (Execution Capacity)
- High h increases enforcement and coordination load.
- θ decline under high h amplifies coercive substitution.

---

## 7. Fields and Propagation (Non-Agency)

h conditions **how identity and narrative fields propagate via Π_k**, but has no agency.

- High h increases field correlation length within groups.
- Low h allows diffusion across boundaries.
- No coordinated intent is implied by h-mediated propagation.

---

## 8. Canonical Failure Modes

- **Hardening Trap:**  
  Attempts to impose conformity increase resentment and rigidity.

- **Contact Collapse:**  
  Loss of bridging ties prevents softening after stabilization.

- **Moral Lock-In:**  
  h_moral persists despite restored performance or fairness.

- **Exit-Reinforced Segregation:**  
  Sorting reduces everyday mixing, accelerating h_struct.

- **Violence Substitution:**  
  Under high h_moral and low φ, coercion normalizes.

---

## 9. Measurement Discipline (OCF-Compliant)

Measurement operator:

\[
\mathcal{M}_{h} : O_{h} \rightarrow \langle \hat{h}, E_d, C \rangle
\]

Proxy bundles (scale-specific, ordered by reliability):
1. Network segregation metrics (modularity, broker mass)
2. Cross-boundary contact frequency
3. Sanction severity for boundary crossing
4. Institutional exclusion artifacts
5. Affective surveys (lowest reliability)

h is **not directly observable**; confidence must be explicitly bounded.

---

## 10. MGA Integration

- **Used in:** MGA-A, MGA-B, MGA-C
- **Critical phases:**
  - State snapshot (κ and h jointly)
  - Pattern detection (e.g., SDBH implies h↑)
  - Feasibility gating (softening requires long τ)
- **Required audits:**
  - Scale Consistency Audit
  - Measurement Validity Audit
- **Default disposition under uncertainty:** **Bound**

---

## 11. Misuse Prohibitions (Hard)

Invalid uses include:
- treating h as ideology or extremism,
- collapsing h into φ or θ,
- assuming messaging alone can soften boundaries,
- ignoring hysteresis and time constants,
- ascribing intent to “society” or “the system.”

Violations indicate **state–metric conflation or hysteresis denial**.

---

## 12. Reduction Check (Robustness Contract)

Reduccing Δh → 0 yields:

> h is a bounded state variable governing persistence and rigidity of social boundaries.

All refinements collapse cleanly with unchanged semantics.

---

### END OF CANONICAL OBJECT FILE (v1.2)
