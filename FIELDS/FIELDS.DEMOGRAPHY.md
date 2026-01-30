# FIELDS.DEMOGRAPHY.md

## COR OBJECT HEADER

- **O_ID:** FIELDS.DEMOGRAPHY
- **Name:** Demography Field
- **Order:** 2nd
- **Kind:** Field
- **Role:** Encodes population structure and its evolution over time as a coordination-constraining field over topology 𝒢 (`COR.STATE.G`); governs cohort replacement, dependency ratios, migration, assimilation, and variance effects that bound surplus (E, `COR.E`), capacity (θ, `COR.THETA`), legitimacy (φ, `COR.PHI`), and feasible regime trajectories without encoding preferences, intent, or welfare.
- **Status:** Canonical
- **Version:** 1.3
- **Changelog:**
  - v1.0: Canonical field formalization; demographic state distribution, transitions, control surfaces, and failure modes.
  - v1.1: Clarified assimilation lag τ, variance dominance, and irreversibility; strengthened couplings to `COR.THETA`, `COR.KAPPA`, `COR.H`, and B_D (`BOUNDS.B_D`).
  - v1.2: Reconciled to explicitly reference Π_k, U_k, σ, 𝓜; removed implied agency; aligned transition language to OCF-safe operator form.
  - v1.3: Added explicit eco-geographic displacement pathways (`BOUNDS.ECO_GEO`) and tightened bound/field symmetry.

---

## 0. Indexing, Non-Agency, and Object Form

**Indexing**
- **Manifold:** 𝓜
- **Scale:** σ (population / system scale only; no individual-level agency)
- **Topology:** 𝒢(σ,t), defined in `COR.STATE.G`

**Non-Agency Constraint (hard)**
- The Demography Field is an **operator over population distributions and rates**.
- It contains **no agents, no intentions, no preferences, and no ideology**.
- Observed demographic outcomes (aging, migration, fertility change, displacement) **do not imply choice or design**; they arise endogenously from Π_D (`OCF.OPERATOR.PI_FIELD`) and U_D (`OCF.CONTROL_SURFACE.U`) under biological, temporal, and structural constraints.

---

## 1. Base Definition (O⁰)

**The Demography Field is a second-order operator describing how population structure evolves across 𝓜 at scale σ and constrains coordination through cohort replacement, dependency ratios, variance structure, cultural distance, and assimilation timing.**

Formally, for field index k = D:

\[
F_D \equiv \langle \rho_D(x,\sigma,t),\ \Pi_D,\ U_D \rangle
\]

Where:
- \(x \in \mathcal{M}\)
- \(\rho_D(x,\sigma,t)\): distribution of population across age, productivity/skill traits, cultural distance, and spatial/network position
- \(\Pi_D \equiv \Pi_k|_{k=D}\): demographic transition operator (births, deaths, migration, assimilation)
- \(U_D \equiv U_k|_{k=D}\): control-surface family acting on demographic rates and integration pathways

The field encodes **population structure and timing**, not values, intent, or policy goals.

---

## 2. Field State Distribution (ρ_D)

### 2.1 Canonical fine-grained representation

\[
\rho_D \equiv n_r(a, x, s, t)
\]

Where:
- \(a\): age
- \(x\): latent trait / skill / productivity position
- \(s\): spatial or network location
- \(r\): origin / group index (used only for distance and variance calculations)

This distribution is rarely used directly; feasibility analysis relies on structured coarse-graining.

### 2.2 Canonical coarse-graining operator

\[
\pi_D:\ n_r(a,x,s,t) \rightarrow (N,\ \pi,\ \Delta C,\ \mathrm{Seg},\ \tau,\ \mathrm{Var}(P))
\]

Where:
- **N:** population size
- **π:** age structure / dependency ratio
- **ΔC:** cultural distance in trait space
- **Seg:** spatial or network segregation
- **τ:** time-to-positive-contribution (assimilation lag)
- **Var(P):** variance in productivity/contribution

**Variance and lag dominate means** in feasibility analysis.

---

## 3. Propagation / Transition Operator (Π_D ≡ Π_k|_{k=D})

### 3.1 Core transition equation

\[
\partial_t \rho_D
= \Pi_D(\rho_D;\mathcal{G}(\sigma,t),\mathcal{M})
= B - M + I - O + A
\]

Where:
- **B:** births
- **M:** mortality
- **I:** in-migration
- **O:** out-migration
- **A:** assimilation drift–diffusion in trait space

All components are **rate-limited, time-lagged, and path-dependent**.

### 3.2 Assimilation dynamics (non-negotiable)

Assimilation follows a drift–diffusion process:
- drift governed by incentives, exposure, and institutional capacity (`COR.THETA`)
- diffusion governed by cultural distance ΔC and segregation Seg
- τ (assimilation lag) is a **hard constraint**, not a policy choice

Assimilation speed cannot exceed execution and coordination capacity.

### 3.3 Eco-geographic displacement (structural modifier)

Eco-geographic constraints (`BOUNDS.ECO_GEO`) act as upstream modifiers of migration terms:

- hazard exposure, land or water degradation, and infrastructure loss can activate **I** and **O**
- such flows are **structurally induced**, not preference-expressive
- displacement effects are σ-local and aggregate non-linearly across scales

Eco-geo-driven migration typically **increases variance and lag**, even when net population change is modest.

---

## 4. Control Surfaces (U_D ≡ U_k|_{k=D})

### 4.1 Canonical demographic control surfaces

\(U_D\) modulates rates and pathways, including:

- immigration and emigration rules
- asylum and displacement handling
- family policy and fertility incentives
- integration and credentialing systems
- housing and spatial access constraints
- education and training throughput
- labor-market access gates

Control surfaces affect **rates and sequencing**, not demographic intent.

### 4.2 Neutral vs destabilizing control (diagnostic)

- **Neutral:** integration capacity matched to inflows; predictable rules; spatial dispersion
- **Destabilizing:** inflows exceeding τ and θ; spatial concentration; delayed or symbolic integration

Destabilization is structural, not moral.

---

## 5. Dependencies and Couplings (Operator-Safe)

### 5.1 Upstream dependencies

- **`COR.THETA`:** integration, education, and service throughput
- **`COR.E`:** surplus buffering assimilation and dependency costs
- **`COR.KAPPA`:** cognitive load shaping salience and misattribution
- **`COR.H`:** boundary hardness affecting segregation and ΔC
- **`BOUNDS.B_X`:** exit feasibility shaping migration asymmetry
- **`BOUNDS.ECO_GEO`:** hazard- and environment-driven displacement pressure

### 5.2 Bounded forcing into metrics and states

Demographic dynamics inject bounded forcing into:

- **Surplus (`COR.E`):**
\[
\partial_t E = \ldots + J_E(\rho_D;\sigma)
\]
(dependency ratios, productivity variance)

- **Capacity (`COR.THETA`):**
\[
\partial_t \theta = \ldots + J_\theta(\rho_D;\sigma)
\]
(service load, integration backlog)

- **Cognitive compression (`COR.KAPPA`):**
\[
\partial_t \kappa = \ldots + J_\kappa(\rho_D;\sigma)
\]
(salience, threat perception under variance)

- **Boundary hardness (`COR.H`):**
\[
\partial_t h = \ldots + J_h(\rho_D;\sigma)
\]
(segregation, moralization under stress)

All injections are **bounded, non-agentic, and scale-indexed**.

---

## 6. Activation Conditions & Canonical Failure Modes

### 6.1 High-risk regimes

Demography becomes destabilizing when:
- τ exceeds planning horizons
- variance dominates mean contribution
- inflows/outflows exceed θ-adapt
- eco-geo displacement is clustered and persistent
- segregation Seg rises faster than integration capacity

### 6.2 Canonical failure modes

- **Lag Overhang:** assimilation lag dominates, producing long-run strain despite positive averages
- **Variance Shock:** productivity or dependency variance overwhelms surplus buffers
- **Segregation Trap:** spatial concentration increases ΔC and h, slowing assimilation
- **Displacement-Induced Variance Spike:** eco-geo-driven migration raises variance and τ simultaneously
- **Hollowing Feedback:** out-migration removes high-capacity cohorts, accelerating θ and E decline

No failure mode implies intent.

---

## 7. Scale and Time Properties

- **Scale:** local → national → system (explicit σ required)
- **Time constants:**
  - fertility change: very slow
  - migration: fast
  - assimilation (τ): slow
  - recovery from variance shocks: slowest
- **Irreversibility:** cohort loss and missed integration windows cannot be rapidly undone

---

## 8. Measurement Notes (σ-Aware)

Diagnostics include:
- age and dependency ratios
- migration and displacement flows
- spatial segregation metrics
- assimilation lag proxies (employment, language, credentialing)
- productivity variance measures

Means alone are insufficient.

---

## 9. MGA Integration

- **Used in:** MGA-A, MGA-B, MGA-C
- **Required audits:**
  - Scale Consistency Audit
  - Variance vs Mean Audit
  - Lag Feasibility Audit
  - Attribution Audit (no preference inference)
- **Default disposition:** **Bound** when τ or variance dominates

---

## 10. Misuse Prohibitions (Non-Negotiable)

Invalid uses include:
- treating migration as preference revelation
- assuming demographic change is reversible on political timelines
- inferring intent from demographic outcomes
- ignoring τ or variance dominance
- collapsing eco-geo displacement into ideology

Violations indicate agency smuggling or feasibility blindness.

---

## 11. Reduction Check (Robustness Contract)

Reducing refinements ΔO → 0 yields:

> Population structure evolves under biological, temporal, and structural constraints, shaping feasibility through lag and variance.

All refinements collapse to generic demographic transition dynamics with semantics preserved.

---

### END OF CANONICAL OBJECT FILE (v1.3)
