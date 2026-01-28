# O.3.OBJECT.GROUP

## COR OBJECT HEADER

- **O_ID:** O.3.OBJECT.GROUP
- **Name:** Group
- **Order:** 3rd
- **Kind:** Domain Object (Actor Container)
- **Role:** Defines the minimal scale at which intentional, coherent action is admissible, conditional on coherence, governance, and weighted access to field control surfaces under regime-local execution constraints.
- **Status:** Canonical
- **Version:** 1.2
- **Changelog:**
  - v1.0: Canonical Group object; formalizes membership, boundaries, governance, coherence (χ), time constants, and derived governance operator Γ_G.
  - v1.1: Clarified distinction from clusters, classes, and regimes; enforced scale discipline.
  - **v1.2:** Reconciled to explicitly reference **σ, 𝓜, Γ_G, Π_k, U_k, W_{G→U}**, and regime-local execution mechanisms; removed residual agency leakage; aligned with RLM layer.

---

## 0. Indexing, Non-Agency, and Object Form

**Indexing**
- **Manifold:** 𝓜
- **Operational scale:** σ_G ⊆ σ (groups are defined at a specific effective coordination scale)
- **Topology:** 𝒢(σ_G,t)

**Agency Constraint (hard)**
- Groups are the **lowest-level objects permitted to carry intent**, but:
  - intent alone is never sufficient for action;
  - realized action is fully conditioned by regime-local mechanisms.
- No group outcome may be attributed to intent **without passing through Γ_G and execution artifacts**.

---

## 1. Base Definition (O⁰)

**A Group is a bounded organizational container that can express intentional external action only when internal coherence exceeds a threshold and when weighted access to relevant control surfaces exists within an executable regime.**

A Group is **not**:
- a cluster (salience without agency),
- a class (material ordering without intent),
- an ideology,
- a regime,
- an aggregate of individuals.

Groups are the **smallest admissible carriers of intent** in the COR, not guaranteed actors.

---

## 2. Formal Structure

A Group \(G\) is defined as the tuple:

\[
G \equiv \langle
M_G(t),\ 
\mathcal{B}_G,\ 
\Gamma_G^{int},\ 
\chi_G(t),\ 
\mathcal{P}_G,\ 
\sigma_G,\ 
\tau_G
\rangle
\]

Where:
- \(M_G(t)\): membership set (time-varying)
- \(\mathcal{B}_G\): boundary rules (entry, exit, authority, scope)
- \(\Gamma_G^{int}\): internal governance procedures
- \(\chi_G(t)\in[0,1]\): coherence (coordination capacity)
- \(\mathcal{P}_G\): regime recognition / legal personhood (nullable)
- \(\sigma_G\): operational scale
- \(\tau_G\): time constants (formation, governance, collapse, recovery)

---

## 3. Membership and Boundaries

### 3.1 Membership \(M_G(t)\)

Membership may be:
- formal (contracts, charters),
- role-based,
- customary or de facto.

Membership churn is governed by \(\tau_G^{mem}\).
High churn degrades \(\chi_G\) unless compensated by governance strength.

### 3.2 Boundary rules \(\mathcal{B}_G\)

Boundaries define:
- who may decide,
- who may speak for the group,
- who may bind the group externally,
- how authority is delegated and revoked.

Boundary ambiguity injects **negative forcing into χ_G**.

---

## 4. Internal Governance \(\Gamma_G^{int}\)

Internal governance specifies:
- decision procedures (vote, command, consensus),
- delegation chains,
- enforcement of internal rules,
- dispute resolution.

Governance stabilization requires:

\[
\Delta t \ge \tau_G^{gov}
\]

Internal governance **does not guarantee execution**.

---

## 5. Coherence χ_G (Tier-3 State)

### 5.1 Definition

\[
\chi_G \in [0,1]
\]

χ_G measures the group’s capacity to:
- reach binding decisions,
- enforce compliance internally,
- maintain trust and shared fate,
- present unified external behavior.

χ_G is **endogenous, bounded, and time-varying**.

### 5.2 Drivers of χ_G

- trust density and reciprocity
- clarity and enforcement of boundaries
- legitimacy of internal governance
- incentive alignment
- external pressure (may raise or fracture χ_G)

Groups with \(\chi_G < \chi^*\) are **nominal but non-acting**.

---

## 6. External Action: Derived Governance Operator Γ_G

### 6.1 Definition (Derived, Not Primitive)

**Γ_G is the group-indexed governance execution operator**, derived from regime-local execution constraints:

\[
\Gamma_G
=
f\!\left(
\underbrace{\mathcal{E}}_{\text{O.2.RLM.GOVERNANCE_EXECUTION}},
\ W_{G\rightarrow U},
\ \chi_G,
\ \mathcal{B}_G,
\ \tau_G^{gov},
\ \sigma_G
\right)
\]

Where:
- \(\mathcal{E}\): Governance Execution RLM
- \(W_{G\rightarrow U}\): weighted access to control surfaces
- \(\chi_G\): coherence gate
- \(\sigma_G\): operational scale

Γ_G **contains no intent**; it is a feasibility and distortion operator.

---

### 6.2 What Γ_G determines

Given a group decision:
- whether action occurs at all,
- execution delay and latency,
- distortion or selectivity,
- failure or null outcome.

High intent + low Γ_G ⇒ **no action**.

---

## 7. Access to Control Surfaces

Groups interact with Fields exclusively via **weighted access**:

\[
W_{G\rightarrow U_k} \in [0,1]
\]

Effective access is coherence-gated:

\[
W^{eff}_{G\rightarrow U_k}
=
\chi_G \cdot W_{G\rightarrow U_k}
\]

Access without coherence is inert.
Coherence without access is impotent.

---

## 8. Scale and Time Properties

### 8.1 Scale σ_G

Groups exist at a defined σ_G:
- local (firm, cell),
- regional (union local),
- national (party),
- transnational (NGO, cartel).

Cross-scale claims require explicit **T₂/T₃ operators**.

### 8.2 Time constants τ_G

Canonical asymmetry:
- formation: slow
- governance stabilization: medium
- collapse: fast
- recovery: slowest

Time asymmetry is non-negotiable.

---

## 9. Distinction from Adjacent Objects (Locked)

| Object   | Key Difference                                  |
|--------|--------------------------------------------------|
| Cluster | Salience without agency                          |
| Class   | Material ordering without intent                 |
| Regime  | System configuration; not an actor               |
| Actor   | Role abstraction; Group is a concrete container  |

Cross-object inference without operators is invalid.

---

## 10. Failure Modes (Group-Specific)

- **Low-coherence paralysis:** access exists, action does not
- **Boundary leakage:** unauthorized acts attributed to group
- **Factional capture:** χ maintained locally, collapses globally
- **Latency mismatch:** Γ_G delay exceeds feasibility window
- **Attribution laundering:** blaming regime limits to mask χ failure

No failure mode implies malign intent.

---

## 11. Measurement Discipline (𝓜-Gated)

Measurement operator:
\[
\mathcal{M}_{\chi}: G \rightarrow \hat{\chi}_G
\]

Primary observables:
- internal decision enforcement
- compliance rates
- trust and reciprocity proxies
- decision latency vs urgency
- defection and factionalism traces

Texts, branding, and mission statements are weak evidence.

---

## 12. MGA Integration

- **Used in:** MGA-B, MGA-C
- **Critical phases:**
  - Actor Identification
  - Incentive Gradient Derivation
  - Feasible Intervention Analysis
- **Required audits:**
  - Scale Consistency Audit
  - Attribution Audit
  - Measurement Validity Audit

Default disposition: **Bound** unless χ and W are evidenced.

---

## 13. Misuse Prohibitions (Strict)

Invalid uses include:
- attributing agency to clusters or classes,
- assuming elections create coherent groups,
- inferring intent from outcomes,
- treating rhetoric as action,
- collapsing legitimacy into coherence.

Violations indicate **scale, attribution, or execution error**.

---

## 14. Reduction Check (Robustness Contract)

As ΔO → 0:

> Groups are bounded containers that can act externally only when coherent and executable under regime constraints.

All refinements (χ, Γ_G, W, σ_G, τ_G) collapse cleanly.
Object passes robustness, boundedness, and reduction tests.

---

### END OF CANONICAL OBJECT FILE (v1.2)
