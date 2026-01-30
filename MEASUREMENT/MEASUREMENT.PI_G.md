## 2. π_𝒢 — Topology Coarse-Graining Operator

This operationalizes 𝒢 and underpins COR.KAPPA, COR.H, and SDBH diagnostics.

---

# O.2.MEASUREMENT.PI_G.md

## COR OBJECT HEADER

* **O_ID:** `O.2.MEASUREMENT.PI_G`
* **Name:** π_𝒢 (Topology Coarse-Graining Operator)
* **Order:** 2nd
* **Kind:** MeasurementOperator
* **Role:** Maps raw interaction networks to a bounded topology summary suitable for system-level analysis
* **Status:** Canonical
* **Version:** 1.0

---

## 1. Base Definition

[
\pi_{\mathcal{G}}:\ \mathcal{G} \rightarrow \langle \bar{k}, C, M, B, \beta \rangle
]

Where:

* (\bar{k}): mean degree
* (C): clustering coefficient
* (M): modularity / segregation
* (B): bridging-edge density
* (\beta): broker mass (nodes connecting modules)

---

## 2. Observable Bundle

Preferred evidence:

* Communication graphs
* Transaction graphs
* Platform interaction networks
* Organizational reporting lines

Fallback:

* Aggregated interaction proxies (with Low confidence)

---

## 3. Interpretation Rules

* High M + low B ⇒ SDBH-permissive topology
* Falling β ⇒ broker collapse risk
* Unknown topology ⇒ **Bound**, not assumed neutral

---

## 4. MGA Integration

* Required for claims about polarization, diffusion, coordination
* Used in MGA-B Phase 3 & 4.5

---

### END OF CANONICAL OBJECT FILE


