# Grand Theory Model



This repository contains the **Grand Theory** coordination model: a formal, modular framework for analyzing social, political, economic, and institutional dynamics under explicit feasibility constraints.



The project is structured to support:



* **Canonical definitions** (stable, audited objects)

* **Working / provisional analysis** (iterative, exploratory)

* **Inventory-driven automation** (generation, linting, validation)

* **Programmatic access** by tools and agents



The goal is not narrative exposition, but **structural clarity, falsifiability, and reuse**.



---

---

## Epistemic Status (read before using or extending)

**This model is descriptive, not predictive.** It is a structured ontology and analytical methodology for coordination dynamics — not (yet) an estimated or empirically fitted model.

1. **Formalism is logical pseudocode.** Mathematical notation (bounded scalars, inequalities, functionals) encodes *structure, direction, and constraint logic* — not measurement. No functional forms, units, or estimation procedures are defined. Agents and tools **must not** operationalize, estimate, or "fill in" the math without an explicit MGA-T routed change.

2. **Empirical linkage is tracked per object.** Every entry in `COR.yaml` carries an `empirical_linkage` field: `linkable` (a proxy/instrument path plausibly exists but is not built) or `structural` (definitional/analytic; linkage not expected). No object currently holds status `linked`; that requires a validated measurement construction.

3. **Evidence provenance.** The model was developed across several months of intensive analytical sessions (ChatGPT-4/5 era) including many worked case studies and an evidence base for the HEXACO/basin substrate. **That evidence did not survive the transfer to this repository.** Inventory entries marked `promoted` with provenance citations of the form "Saved memory: ..." rest on pre-transfer work not present in this corpus, and are slated for re-validation against rebuilt Evidence Records (EVR) before being treated as gated promotions.

4. **Acronym disambiguation.** `OCF/` in this repository contains **operators and control-surface definition anchors**. The *evidence layer* of worked case files — previously also called OCF in process rules — is now designated **EVR (Evidence Records)**; the `EVR/` directory will be created when case work begins.

5. **Subcomponent rule.** Latent subcomponents (e.g., CI_store/CI_access/CI_load, θ_exec/θ_adapt, φ_sac/φ_proc/φ_exp, κ_load) are defined and live **inside their parent object files only**. They are not independently registered in `COR.yaml` and must not be referenced as standalone objects.

6. **Validation.** `tools/validate_model.py` enforces mechanical coherence (YAML validity, registry↔disk referential integrity, status enums, linkage fields). Run it before any commit; CI runs it on every push.



## Core Design Principles



1\. **Ontology before narrative**

   All concepts are defined as explicit objects with scope, bounds, and couplings. Narrative explanations are secondary.



2\. **Canonical vs working separation**

   Stable, audited definitions are separated from provisional patterns, hypotheses, and causal chains.



3\. **Inventory-driven model**

   YAML inventories are the authoritative source for what exists in the model. Markdown files are rendered views, not the source of truth.



4\. **Automation-first layout**

   The repo is designed to support linting, regeneration, packaging, and agentic workflows without manual file juggling.



---



## Repository Structure



### Canonical Objects (Markdown)



These folders contain **canonical, stable definitions**. Each object has a single authoritative MD file.



```

AXIS/          # Psychological / trait axes

BOUNDS/        # Feasible bounds and constraints

COR/           # Core metric and state variables

FIELDS/        # Emergent coordination fields

MEASUREMENT/   # Measurement operators and indices

OBJECT/        # Individuals, groups, classes, regimes, etc.

OCF/           # Operators and control surfaces

RLM/           # Regime-local mechanisms

MGA/           # Meta-analytic guardrails and methodology

```



Canonical objects are:



* versioned

* intentionally conservative to change

* referenced by inventories and automation



---



### Patterns & Chains (Canonical + Working)



#### DPI — Dynamic Pattern Inventory



```

DPI/

  DPI.<PATTERN>.md        # Canonical patterns (one per file)

  dpi.yaml                # Working / provisional patterns

  DPI.WORKING.md          # Generated view of working patterns

```



* **MD files** = canonical patterns

* **`dpi.yaml`** = provisional / working patterns

* **`DPI.WORKING.md`** = generated, non-canonical synthesis



#### CCFI — Causal Chain Function Inventory



```

CCFI/

  ccfi.yaml               # Working / provisional causal chains

  CCFI.WORKING.md         # Generated view of working chains

```



Causal chains are treated as **hypotheses**, not primitives, until promoted.



---



### Ideological Basins



```

IBR/

  ibr.yaml                # Ideological basin registry

```



Basins are coordination equilibria, not belief systems, and are inventory-driven.



---



### Root Inventory



```

COR.yaml

```



This file is the **index of record** for the model:



* what objects exist

* where canonical definitions live

* which inventories are authoritative

* what is eligible for automation



Automation should treat `COR.yaml` as the entry point.



---



## Canonical vs Working Status



| Artifact type | Canonical | Editable | Source of truth |

| ------------- | --------- | -------- | --------------- |

| Object MD     | Yes       | Rarely   | Markdown        |

| DPI MD        | Yes       | Rarely   | Markdown        |

| DPI YAML      | No        | Yes      | YAML            |

| CCFI YAML     | No        | Yes      | YAML            |

| WORKING MD    | No        | No       | Generated       |



**Rule:**



> YAML → generates MD, never the reverse.



---



## Automation (Planned / In Progress)



The structure is designed to support:



* Linting inventories against canonical objects

* Regenerating `*.WORKING.md` views

* Building “packs” for LLMs or analysis tools

* Detecting drift between YAML and MD



Planned entry point:



```

tools/model.ps1

```



---



## What This Is *Not*



* Not a political ideology

* Not a moral framework

* Not a historical narrative

* Not a policy wishlist



The model is **agnostic to goals and moral truth**. It evaluates **feasibility, dynamics, and failure modes** conditional on chosen goals.



---



## Status



* Core ontology: **stable**

* Inventories: **active**

* Automation: **under construction**

* Empirical grounding: **ongoing**



Breaking changes will be deliberate and rare.



---



## License / Use



License and citation guidance to be added once the public interface stabilizes.



---



### Next steps (internal)



* Add automation scripts (`model.ps1`)

* Add inventory lint rules

* Add GitHub Action for consistency checks

