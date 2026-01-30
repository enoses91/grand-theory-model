# O.2.RLM.EXIT_LOCKIN

## COR OBJECT HEADER

- **O_ID:** O.2.RLM.EXIT_LOCKIN
- **Name:** Exit–Lock-In (Masking vs Repression Mechanism)
- **Order:** 2nd
- **Kind:** Regime-Local Mechanism (RLM)
- **Role:** Regime-bounded mechanism describing how the availability or suppression of exit (X) determines whether binding structural stress is expressed as silent disengagement (masking) or as overt instability, repression, or violence, strictly within manifold 𝓜 at scale σ.
- **Status:** Canonical
- **Version:** 1.2
- **Changelog:**
  - v1.0: Canonical RLM formalization; distinguishes exit masking from lock-in/repression pathways; integrates with B_COR.PHI and B_C.
  - **v1.2:** Reconciled to explicitly reference **σ, 𝓜, Π_k, U_k, W_{G→U}**, and bounded forcing semantics **J_z(·)**; removed residual agency language; aligned fully with Field/Bound/RLM discipline.

---

## 0. Indexing, Non-Agency, and RLM Form

**Indexing**
- **Manifold:** 𝓜
- **Scale:** σ (effective coordination scale; EXIT–LOCK-IN is undefined without explicit σ, defined in `OCF.DOMAIN.SCALE`)
- **Topology:** 𝒢(σ,t), defined in `COR.STATE.G`

**Non-Agency Constraint (hard)**
- EXIT–LOCK-IN is a **mechanism**, not an actor or strategy.
- It contains **no intent, no preference, no optimization, and no ideology**.
- It does not create stress; it only determines **how existing stress is expressed**.
- Observed repression, protest, or disengagement **must not be attributed to intent** absent Technique-level evidence.

---

## 1. Base Definition (O⁰)

**EXIT–LOCK-IN is a regime-local mechanism in which exit availability (X) determines whether binding structural stress is expressed as:**

- **Exit masking** (stress routed into disengagement and depletion), or
- **Lock-in dynamics** (stress converted into overt contestation, repression, or violence).

Formally:

- Given binding feasibility constraints (e.g., `BOUNDS.B_C`, `BOUNDS.B_X`, `BOUNDS.B_PHI`),
- High effective exit \(X^{eff}\) routes stress into **masking**,
- Low or suppressed \(X^{eff}\) routes stress into **lock-in**.

EXIT–LOCK-IN introduces **no new causes**.
It specifies the **expression channel** of stress, conditional on `COR.X` and regime state.

---

## 2. Formal Structure (Mechanism Mapping)

Let:

- \(S(\sigma)\): aggregate structural stress (from binding Bounds)
- \(X^{eff}(\sigma)\): effective exit availability (channel-weighted)
- \(X^*(\sigma)\): regime- and scale-dependent threshold
- \(\Pi_X\): exit propagation operator (routing, depletion, substitution)
- \(U_X\): exit-relevant control surfaces (mobility rules, enforcement, barriers)

Then:

\[
\text{Expression}(S) =
\begin{cases}
\text{Exit Masking} & \text{if } X^{eff}(\sigma) > X^*(\sigma) \\
\text{Lock-In / Contestation} & \text{if } X^{eff}(\sigma) \le X^*(\sigma)
\end{cases}
\]

Where \(X^{eff}\) evolves as:

\[
\partial_t X^{eff}
= \Pi_X(X;\mathcal{G},\sigma)
+ A_X(U_X)
- D_X(h,\theta)
\]

Stress is **rerouted**, not eliminated.

---

## 3. Canonical Modes (ΔO)

### 3.1 Mode A — Exit Masking

**Conditions**
- \(X^{eff}\) high and credible
- Exit channels asymmetric across class/skill
- Governance tolerates or ignores exit

**Dynamics**
- Structural failure persists but is hidden
- `COR.PHI` erosion is delayed and uneven
- `COR.THETA` degrades quietly as load concentrates on immobile actors
- E_m and E_τ drain through exit

**Outcome**
- Apparent stability with institutional hollowing
- Later collapse is sharper and harder to reverse

---

### 3.2 Mode B — Lock-In / Repression

**Conditions**
- \(X^{eff}\) low or forcibly suppressed
- Exit is punished, blocked, or made infeasible
- Structural stress remains unresolved

**Dynamics**
- Pressure converts into overt contestation
- `COR.PHI` collapses rapidly and visibly
- `COR.THETA` is consumed by enforcement and crisis response
- `COR.KAPPA` compresses; `COR.H` hardens; Violence Field activates

**Outcome**
- Open instability, repression, or violence
- Faster recognition of failure at higher immediate cost

---

## 4. Dependencies and Conditioning Variables

### 4.1 Required upstream objects

- **`COR.X`** — exit availability
- **`BOUNDS.B_X`** — exit feasibility
- **`BOUNDS.B_C`** — coordination overload
- **`BOUNDS.B_PHI`** — legitimacy feasibility
- **`COR.THETA`** — execution capacity
- **`COR.KAPPA`**, **`COR.H`** — amplification states
- **`COR.STATE.G`(σ,t)** — topology enabling or constraining exit
- **W_{G→U} (`OCF.OPERATOR.WEIGHTED_ACCESS`)** — group-weighted access to exit-relevant control surfaces

EXIT–LOCK-IN is **inactive** absent binding stress.

---

## 5. Forcing-Term Couplings (Operator-Safe)

EXIT–LOCK-IN induces **bounded forcing** into downstream variables, conditional on mode:

### 5.1 Exit Masking X (`COR.X` high)

- **Effective surplus E (`COR.E`):**
\[
\partial_t E = \ldots + J_E^{(-)}(\Pi_X;\sigma)
\]
(human capital and capital drain)

- **Institutional capacity θ (`COR.THETA`):**
\[
\partial_t \theta = \ldots + J_\theta^{(-)}(\Pi_X;\sigma)
\]
(hollowing, service load concentration)

- **Legitimacy φ (`COR.PHI`):**
\[
\partial_t \phi = \ldots + J_\phi^{(-)}(\Pi_X;\sigma)
\]
(delayed, uneven erosion)

---

### 5.2 Lock-In / Repression X (`COR.X` low)

- **Cognitive compression κ (`COR.KAPPA`):**
\[
\partial_t \kappa = \ldots + J_\kappa^{(+)}(\Pi_X;\sigma)
\]

- **Boundary hardness h (`COR.H`):**
\[
\partial_t h = \ldots + J_h^{(+)}(\Pi_X;\sigma)
\]

- **Violence activation V (`FIELDS.VIOLENCE`):**
\[
\partial_t \rho_V = \ldots + J_V^{(+)}(\Pi_X;\sigma)
\]

- **Legitimacy φ (`COR.PHI`):**
\[
\partial_t \phi = \ldots + J_\phi^{(-)}(\Pi_X;\sigma)
\]

All \(J_z(\cdot)\) terms are **bounded, non-agentic, and regime-conditioned**.

---

## 6. Asymmetry and Class Effects (Hard Constraint)

EXIT–LOCK-IN is typically **class- and skill-asymmetric**:

- High-E / high-skill actors exit first
- Low-X populations absorb coordination and enforcement load
- Asymmetry accelerates φ fragmentation and h hardening

Aggregate exit metrics **systematically understate** binding risk.

---

## 7. Activation Conditions (Regime-Local)

The mechanism becomes operative when:

1. At least one structural Bound is binding
2. \(X^{eff}\) crosses \(X^*(\sigma)\)
3. Exit channels are materially asymmetric
4. Governance responses alter \(U_X\) (raise or lower exit costs)

EXIT–LOCK-IN is **not universal**; it is regime- and scale-specific.

---

## 8. Observable Signatures (Diagnostic, Not Proof)

### Exit Masking
- Rising out-migration or capital flight
- Declining participation without protest
- Service degradation concentrated on immobile groups
- Stable narratives with worsening fundamentals

### Lock-In
- Rapid escalation of protests, strikes, unrest
- Increased enforcement and emergency powers
- Sharp drops in φ indicators
- Discourse compression and tolerance loss (COR.KAPPA↑)

Signatures identify **expression mode**, not cause.

---

## 9. Scale and Time Properties

- **Scale:** group → system (explicit σ required)
- **Time constants:**
  - exit masking: slow burn, long latency
  - lock-in: fast onset, high volatility
- **Hysteresis:** prolonged masking increases later lock-in severity; repression raises future exit costs

---

## 10. MGA Integration

- **Used in:** MGA-B, MGA-C
- **Critical phases:**
  - MGA-B Phase 6 (Mechanism Identification)
  - MGA-B Phase 7 (Failure Mode Analysis)
  - MGA-C Temporal Feasibility Gate
- **Required audits:**
  - Mechanism vs Pattern Audit
  - Exit Asymmetry Audit
  - Scale Consistency Audit
- **Default disposition:** **Bound** unless exit data supports activation

---

## 11. Misuse Prohibitions (Strict)

Invalid uses include:
- Treating exit masking as system health
- Moralizing exit or repression
- Assuming suppressing exit restores COR.PHI or COR.THETA
- Ignoring class- or skill-weighted exit access
- Treating EXIT–LOCK-IN as a universal law

Violations indicate **expression–cause conflation**.

---

## 12. Reduction Check (Robustness Contract)

As ΔO → 0:

> Structural stress expresses as either silent exit or overt conflict depending on exit availability.

Mechanism semantics preserved.
Object passes robustness, boundedness, and regime-local requirements.

---

### END OF CANONICAL OBJECT FILE (v1.2)

