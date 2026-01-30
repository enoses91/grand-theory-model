# BOUNDS.B_X.md

## COR OBJECT HEADER

- **O_ID:** BOUNDS.B_X
- **Name:** B_X (Exit / Mobility Feasible Bound)
- **Order:** 2nd
- **Kind:** Bound
- **Role:** Constrains the extent to which exit, mobility, or substitution can absorb structural stress at scale σ on manifold 𝓜 without triggering capacity loss (COR.THETA), legitimacy collapse (COR.PHI), coordination lock-in, or destabilizing depletion dynamics, independent of intent.
- **Status:** Canonical
- **Version:** 1.1
- **Changelog:**
  - v1.0: Canonical exit feasibility bound; formalizes ceilings, asymmetry, depletion effects, and interaction with EXIT–LOCK-IN and other bounds.
  - v1.1: Reconciled to explicitly reference **σ, 𝓜**, and **Field forcing terms J_z(·)**; removed implied agency; aligned structure with B_C.

---

## 0. Indexing, Non-Agency, and Object Form

**Indexing**
- **Manifold:** 𝓜
- **Scale:** σ (effective coordination scale; B_X is undefined without explicit σ, as defined in `OCF.DOMAIN.SCALE`)

**Non-Agency Constraint (hard)**
- B_X is a **structural feasibility constraint**, not a choice set.
- It contains **no agents, no preferences, no optimization, and no intent**.
- Exceeding B_X produces degradation **regardless of ideology, motivation, or awareness**.

---

## 1. Base Definition (O⁰)

**B_X is the feasibility bound that limits how much structural stress a system can route through exit before exit itself becomes destabilizing.**

Formally:

- B_X defines a feasible region \(\mathcal{R}_X(\sigma,\mathcal{M})\) over exit rates, channels, and asymmetries.
- If effective exit pressure \(\Delta X \notin \mathcal{R}_X\), downstream degradation is **structurally forced**.
- Exit cannot indefinitely substitute for:
  - legitimacy repair (`COR.PHI`),
  - capacity repair (`COR.THETA`),
  - or complexity reduction (B_C).

B_X governs **how much exit is sustainable**, not whether exit is legal, moral, or desirable.

---

## 2. Refinements (ΔO)

### 2.1 What counts as exit under the bound

B_X applies to all channels aggregated into X, including:

- Geographic exit (migration, emigration)
- Economic exit (capital flight, firm relocation)
- Institutional exit (jurisdictional arbitrage)
- Social exit (withdrawal, parallel institutions)
- Informational exit (epistemic enclaves, attention withdrawal)

Channels are **not interchangeable**; B_X constrains their **combined and interacting effects**.

---

### 2.2 Depletion and asymmetry (non-negotiable)

Exit exhibits **depletion effects**:

- Loss of **E_m** (material surplus)
- Loss of **E_τ** (time, skill, attention)
- Loss of institutional memory and brokerage mass
- Increased coordination and service load on remaining participants

Exit is typically **class- and skill-asymmetric**, tightening B_X faster than aggregate exit metrics suggest.

---

## 3. Mathematical Structure (schematic)

Let:

- \(S(\sigma)\): structural stress (from B_C, B_D, B_COR.PHI)
- \(X(\sigma)\): effective exit availability
- \(L_X\): depletion and load effects induced by exit

Feasibility requires:

\[
\Delta X(\sigma) \le f\!\left(\theta, E, \mathcal{G}, CI, h\right)
\]

If:

\[
\Delta X(\sigma) > f(\cdot)
\quad \Rightarrow \quad
\begin{cases}
\partial_t \theta = \ldots + J_\theta^{(-)}(\cdot) \\
\partial_t E^{eff} = \ldots + J_E^{(-)}(\cdot) \\
\partial_t \phi = \ldots + J_\phi^{(-)}(\cdot) \\
\text{lock-in probability rises}
\end{cases}
\]

Exit **routes stress**; it does not remove it.

---

## 4. Field Couplings via Explicit Forcing Terms

B_X binds through **field-induced forcing**, not direct action.

### 4.1 Primary tightening channels

- **Market (`FIELDS.MARKET`) / Technology (`FIELDS.TECHNOLOGY`) / Violence (`FIELDS.VIOLENCE`) Fields → `COR.X`**
\[
\partial_t X = \ldots + J_X(\rho_M,\rho_T,\rho_V;\sigma)
\]
(capital mobility, remote work, displacement, coercion-driven flight)

- **Governance Field (`FIELDS.GOVERNANCE`) → `COR.THETA`**
\[
J_\theta^{(-)}(\rho_G,\Pi_G,U_G;\sigma)
\]
(service hollowing, execution overload, fiscal erosion)

- **Information (`FIELDS.INFORMATION`) / Culture (`FIELDS.CULTURE_IDENTITY`) Fields → `COR.PHI`**
\[
J_\phi^{(-)}(\rho_I,\rho_C;\sigma)
\]
(perceived unfairness, abandonment narratives, legitimacy loss)

- **Demography (`FIELDS.DEMOGRAPHY`) Field → effective `COR.X`**
\[
J_X^{(+)}(\rho_D,\Pi_D,U_D;\sigma)
\]
(age-, skill-, and cohort-weighted exit asymmetry)

All \(J_z(\cdot)\) terms are **bounded, non-agentic, and scale-conditioned**.

---

## 5. Dependencies and Cross-Bound Interactions

### 5.1 Upstream dependencies

- **`COR.THETA`:** capacity to absorb exit-induced load
- **`COR.E`:** buffers against depletion
- **`COR.CI`:** accumulated structure magnifying exit sensitivity
- **`COR.STATE.G`:** alternative networks enabling or constraining exit
- **`COR.H`:** boundary hardness raising exit costs and asymmetry

### 5.2 Cross-bound effects

- Binding **B_X → activates EXIT–LOCK-IN**
- Binding **B_X → tightens B_φ** (visible hollowing, perceived unfairness)
- Binding **B_X + B_C → delayed but sharper collapse**
- Binding **B_X + exit suppression → rapid lock-in and conflict**

---

## 6. Activation Conditions & Failure Modes

### 6.1 Conditions that tighten B_X

- Sustained high out-migration or capital flight
- Exit concentrated among high-skill or high-E cohorts
- Exit substituting for reform rather than triggering it
- High `COR.CI` amplifying hollowing effects
- Boundary hardening that traps low-X populations

### 6.2 Canonical failure modes

- **Hollowing-out:** institutions persist but lose competence and legitimacy
- **Asymmetric burden trap:** immobile populations absorb coordination load → COR.PHI collapse
- **Exit exhaustion:** marginal exit costs rise; remaining exit becomes catastrophic
- **Repression pivot:** suppressing exit after B_X binds triggers lock-in instability

No failure mode implies intent.

---

## 7. Scale and Time Properties

- **Scale:** group → system only (explicit σ required)
- **Time constants:**
  - exit onset: fast
  - depletion effects: lagged
  - recovery: slow and uncertain
- **Hysteresis:** lost human, social, and institutional capital may not return

---

## 8. Measurement Notes (σ, 𝓜 Aware)

B_X is **not directly observable**.

Indicators that B_X is binding include:
- persistent net outflows despite rising exit costs
- skill- or class-weighted exit accelerating faster than headcount exit
- declining service quality in immobile regions/groups
- abrupt shifts from exit tolerance to exit suppression

Measurements must be paired with **distributional (class/skill) decomposition**.

---

## 9. MGA Integration

- **Used in:** MGA-B, MGA-C
- **Critical phases:**
  - MGA-B Phase 2 (Regime & Bound Identification)
  - MGA-B Phase 7 (Failure Mode Analysis)
- **Required audits:**
  - Exit Asymmetry Audit
  - Feasible Bound Enumeration
  - Exit–Substitution Fallacy Check
- **Default disposition:**
  If B_X is binding → **Reject** exit-substitution strategies

---

## 10. Misuse Prohibitions (Non-Negotiable)

Invalid uses include:
- treating exit as an infinite safety valve
- assuming suppressing exit restores stability
- ignoring class- or skill-weighted exit effects
- treating low protest as system health
- extrapolating local exit success to system scale

Violations indicate **exit fallacy**.

---

## 11. Reduction Check (Robustness Contract)

Reducing ΔO → 0 yields:

> There are hard limits to how much exit can absorb system stress before exit itself becomes destabilizing.

Asymmetry and depletion collapse to generic exit exhaustion with semantics preserved.
Object passes robustness, boundedness, and dominance requirements.

---

### END OF CANONICAL OBJECT FILE

