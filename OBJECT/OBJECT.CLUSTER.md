# OBJECT.CLUSTER

## COR OBJECT HEADER

- **O_ID:** OBJECT.CLUSTER
- **Name:** Cluster
- **Order:** 3rd
- **Kind:** Domain Object (Salience / Alignment Object)
- **Role:** Encodes a **scale-indexed, non-agentic pattern of correlated alignment** (beliefs, identities, behaviors, preferences) that achieves salience through field propagation on manifold 𝓜 without governance, intent, or execution capacity.
- **Status:** Canonical
- **Version:** 1.2
- **Changelog:**
  - v1.0: Canonical cluster definition; non-agency and salience focus.
  - **v1.2:** Reconciled to explicitly reference **σ, 𝓜**, field propagation **Π_k**, and measurement discipline; removed residual proto-agency language; aligned with RLM and Pattern layers.

---

## 0. Indexing, Non-Agency, and Object Form

**Indexing**
- **Manifold:** 𝓜
- **Scale:** σ (clusters are undefined without explicit σ, defined in `OCF.DOMAIN.SCALE`)
- **Topology (indirect):** 𝒢(σ,t) via Information / Culture field propagation, defined in `COR.STATE.G`

**Non-Agency Constraint (hard)**
- A Cluster has **no intent, no preferences, no decision procedure, no governance, no access weights, and no execution capacity**.
- A Cluster **cannot act**, even indirectly.
- Any claim assigning agency, strategy, or responsibility to a cluster is invalid unless routed through Groups (`OBJECT.GROUP`) and Γ_G (`COR.G`).

---

## 1. Base Definition (O⁰)

**A Cluster is a scale-indexed statistical pattern of correlated alignment among individuals that becomes salient through field-level amplification, without possessing agency or coordination capacity.**

Clusters answer:

> *Which correlated alignments exist and are salient at scale σ?*

They do **not** answer:
- who decided,
- who coordinated,
- who acted,
- who is responsible.

Clusters are **descriptive analytic objects**, not causal actors.

---

## 2. Formal Representation

At scale σ, a cluster \(C\) is defined as:

\[
C(\sigma,t)
=
\{\, i \in \mathcal{P}_\sigma \mid d(i,\mu_C) \le \epsilon \,\}
\]

Where:
- \(d(\cdot)\): distance metric in latent space (beliefs, traits, behaviors)
- \(\mu_C\): centroid
- \(\epsilon\): tolerance / thickness
- \(\mathcal{P}_\sigma\): population at scale σ

Clusters are **fuzzy, overlapping, and non-exclusive**.
Membership is probabilistic, not categorical.

---

## 3. What Clusters Carry (and What They Do Not)

### 3.1 May exhibit correlation across
- ideological positions
- identity labels
- behavioral traits
- media exposure
- consumption patterns
- voting correlations (descriptive only)

### 3.2 Do *not* carry
- intent
- goals
- χ (coherence, `COR.CHI`)
- Γ_G (`COR.G`)
- W (access weights, `OCF.OPERATOR.WEIGHTED_ACCESS`)
- norms or obligations
- enforcement capacity

Correlation ≠ coordination.

---

## 4. Salience as a Field-Mediated Property

Clusters become analytically relevant when **salience** exceeds threshold:

\[
\text{Salience}_C
=
f\!\left(
\rho_I,\ \Pi_I,\ \rho_C,\ \Pi_C,\ \mathcal{G},\ \sigma
\right)
\]

Where:
- \(\rho_I, \rho_C\): Information and Culture/Identity field states
- \(\Pi_I, \Pi_C\): propagation operators
- 𝒢: topology governing amplification

Salience is **externally induced**, not internally generated.

---

## 5. Interaction with Fields (Passive Only)

Clusters interact with fields **only as substrates**, never as operators:

- **Information Field (`FIELDS.INFORMATION`):** amplifies visibility and apparent convergence
- **Culture / Identity Field (`FIELDS.CULTURE_IDENTITY`):** provides labels and symbolic boundaries
- **Market Field (`FIELDS.MARKET`):** responds with segmentation and targeting
- **Governance Field (`FIELDS.GOVERNANCE`):** may reference clusters rhetorically or statistically
- **Violence Field (`FIELDS.VIOLENCE`):** clusters may be *targets* of coercion, never wielders

Clusters do not inject forcing terms.

---

## 6. Relationship to RLMs and Patterns

### 6.1 RLM interaction (non-causal)

Clusters are **inputs** to:
-`RLM.INFORMATION_TOPOLOGY`
- `RLM.EXIT_LOCKIN` (via salience-conditioned perception)

But do not constitute mechanisms themselves.

---

### 6.2 Pattern activation

Clusters can participate in higher-order patterns, e.g.:

- **`DPI.SALIENCE_DRIVEN_BASIN_HARDENING`**

Only when:
- salience is sustained,
- `COR.KAPPA` and `COR.H` are elevated,
- topology supports reinforcement.

The **pattern** is causal; the cluster remains descriptive.

---

## 7. Scale Discipline (Non-Negotiable)

- Clusters are always σ-indexed.
- A cluster at σ₁ ≠ the “same” cluster at σ₂.
- Aggregation across σ without **T-operators** is invalid.

Clusters do not persist automatically across scales.

---

## 8. Time Dynamics

### 8.1 Time constants (typical)
- formation: medium
- salience spikes: fast
- decay: medium
- memory fade: slow

### 8.2 Drift

Centroids drift via:
- cohort replacement
- narrative shifts
- shocks
- demographic change

Clusters exhibit **low hysteresis** relative to Groups or Regimes.

---

## 9. Measurement Operator (𝓜-Gated)

Measurement operator:

\[
\mathcal{M}_C:
O_C
\rightarrow
\hat{C}(\sigma,t)
\]

Primary evidence:
- surveys (bias-corrected)
- behavioral traces
- network clustering metrics
- correlation structure stability

Low-grade evidence:
- discourse labels
- pundit taxonomies
- anecdotal grouping

---

## 10. Distinction from Adjacent Objects (Locked)

| Object   | Key Difference |
|--------|----------------|
| Individual | Carrier of traits |
| Group | Has χ, Γ_G, governance, and agency |
| Class | Material ordering; no beliefs implied |
| Regime | System configuration |
| Ideology | Normative system; clusters may partially overlap |

Inferring agency or ideology from clusters is invalid.

---

## 11. Common Analytic Errors Prevented

- attributing intent to clusters
- mistaking salience for coordination (MCI error)
- treating clusters as proto-groups
- collapsing clusters into classes
- assuming cluster stability across σ

---

## 12. MGA Integration

- **Used in:** MGA-A, MGA-B
- **Critical phases:**
  - Population & Alignment Mapping
  - Dynamic Pattern Detection
- **Required audits:**
  - Attribution Audit
  - Scale Consistency Audit
  - Mechanism vs Pattern Audit
- **Default disposition:** **Descriptive only**

---

## 13. Aliases and Lineage

- **Aliases:** alignment cluster, salience cluster
- **Supersedes:** vague “demographic group” usage
- **Superseded by:** none

---

## 14. Reduction Check (Robustness Contract)

As ΔO → 0:

> Individuals can exhibit correlated positions that become salient without coordinating.

All refinements collapse to scale-indexed correlation with unchanged semantics.
Object passes robustness, boundedness, and reduction tests.

---

### END OF CANONICAL OBJECT FILE (v1.2)

