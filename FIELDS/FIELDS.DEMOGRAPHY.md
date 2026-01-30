# FIELDS.DEMOGRAPHY.md

## COR OBJECT HEADER

- **O_ID:** FIELDS.DEMOGRAPHY
- **Name:** Demography Field
- **Order:** 2nd
- **Kind:** Field
- **Role:** Encodes population structure and its evolution over time as a coordination-constraining field over topology 𝒢 (`COR.STATE.G`); governs cohort replacement, dependency ratios, migration, assimilation, and variance effects that bound surplus (E, `COR.E`), capacity (θ, `COR.THETA`), legitimacy (φ `COR.PHI`), and feasible regime trajectories without encoding preferences or intent.
- **Status:** Canonical
- **Version:** 1.2
- **Changelog:**
  - v1.0: Canonical field formalization; demographic state distribution, transitions, control surfaces, and failure modes.
  - v1.1: Clarified assimilation lag τ, variance dominance, and irreversibility; strengthened couplings to `COR.THETA`, `COR.KAPPA`, `COR.H`, and B_D (`BOUNDS.B_D`).
  - v1.2: Reconciled to explicitly reference **Π_k, U_k, σ, 𝓜**; removed implied agency; aligned transition language to OCF-safe operator form.

---

## 0. Indexing, Non-Agency, and Object Form

**Indexing**
- **Manifold:** 𝓜
- **Scale:** σ (population/system scale only; no individual-level agency, defined in `OCF.DOMAIN.SCALE`)
- **Topology:** 𝒢(σ,t), defined in `COR.STATE.G`

**Non-Agency Constraint (hard)**
- The Demography Field is an **operator over population distributions and rates**.
- It contains **no agents, no intentions, no preferences, and no ideology**.
- Observed demographic outcomes (aging, migration, fertility change) **do not imply choice or design**; they arise from Π_D (`OCF.OPERATOR.PI_FIELD`) and U_D (`OCF.CONTROL_SURFACE.U`) under biological, temporal, and structural constraints.

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

The field encodes **population structure and timing**, not values or policy goals.

---

## 2. Field State Distribution (ρ_D)

### 2.1 Canonical representation

The fine-grained demographic state is:

\[
\rho_D \equiv n_r(a, x, s, t)
\]

Where:
- \(a\): age
- \(x\): latent trait / skill / productivity position
- \(s\): spatial or network location
- \(r\): origin/group index (used only for distance and variance calculations)

This distribution is rarely used directly; analysis relies on structured coarse-graining.

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
- drift governed by incentives, exposure, and institutional capacity
- diffusion governed by cultural distance ΔC and segregation Seg
- τ (assimilation lag) is a **hard constraint**, not a policy choice

