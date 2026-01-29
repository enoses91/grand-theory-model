\# Grand Theory Model



This repository contains the \*\*Grand Theory\*\* coordination model: a formal, modular framework for analyzing social, political, economic, and institutional dynamics under explicit feasibility constraints.



The project is structured to support:



\* \*\*Canonical definitions\*\* (stable, audited objects)

\* \*\*Working / provisional analysis\*\* (iterative, exploratory)

\* \*\*Inventory-driven automation\*\* (generation, linting, validation)

\* \*\*Programmatic access\*\* by tools and agents



The goal is not narrative exposition, but \*\*structural clarity, falsifiability, and reuse\*\*.



---



\## Core Design Principles



1\. \*\*Ontology before narrative\*\*

&nbsp;  All concepts are defined as explicit objects with scope, bounds, and couplings. Narrative explanations are secondary.



2\. \*\*Canonical vs working separation\*\*

&nbsp;  Stable, audited definitions are separated from provisional patterns, hypotheses, and causal chains.



3\. \*\*Inventory-driven model\*\*

&nbsp;  YAML inventories are the authoritative source for what exists in the model. Markdown files are rendered views, not the source of truth.



4\. \*\*Automation-first layout\*\*

&nbsp;  The repo is designed to support linting, regeneration, packaging, and agentic workflows without manual file juggling.



---



\## Repository Structure



\### Canonical Objects (Markdown)



These folders contain \*\*canonical, stable definitions\*\*. Each object has a single authoritative MD file.



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



\* versioned

\* intentionally conservative to change

\* referenced by inventories and automation



---



\### Patterns \& Chains (Canonical + Working)



\#### DPI — Dynamic Pattern Inventory



```

DPI/

&nbsp; DPI.<PATTERN>.md        # Canonical patterns (one per file)

&nbsp; dpi.yaml                # Working / provisional patterns

&nbsp; DPI.WORKING.md          # Generated view of working patterns

```



\* \*\*MD files\*\* = canonical patterns

\* \*\*`dpi.yaml`\*\* = provisional / working patterns

\* \*\*`DPI.WORKING.md`\*\* = generated, non-canonical synthesis



\#### CCFI — Causal Chain Function Inventory



```

CCFI/

&nbsp; ccfi.yaml               # Working / provisional causal chains

&nbsp; CCFI.WORKING.md         # Generated view of working chains

```



Causal chains are treated as \*\*hypotheses\*\*, not primitives, until promoted.



---



\### Ideological Basins



```

IBR/

&nbsp; ibr.yaml                # Ideological basin registry

```



Basins are coordination equilibria, not belief systems, and are inventory-driven.



---



\### Root Inventory



```

COR.yaml

```



This file is the \*\*index of record\*\* for the model:



\* what objects exist

\* where canonical definitions live

\* which inventories are authoritative

\* what is eligible for automation



Automation should treat `COR.yaml` as the entry point.



---



\## Canonical vs Working Status



| Artifact type | Canonical | Editable | Source of truth |

| ------------- | --------- | -------- | --------------- |

| Object MD     | Yes       | Rarely   | Markdown        |

| DPI MD        | Yes       | Rarely   | Markdown        |

| DPI YAML      | No        | Yes      | YAML            |

| CCFI YAML     | No        | Yes      | YAML            |

| WORKING MD    | No        | No       | Generated       |



\*\*Rule:\*\*



> YAML → generates MD, never the reverse.



---



\## Automation (Planned / In Progress)



The structure is designed to support:



\* Linting inventories against canonical objects

\* Regenerating `\*.WORKING.md` views

\* Building “packs” for LLMs or analysis tools

\* Detecting drift between YAML and MD



Planned entry point:



```

tools/model.ps1

```



---



\## What This Is \*Not\*



\* Not a political ideology

\* Not a moral framework

\* Not a historical narrative

\* Not a policy wishlist



The model is \*\*agnostic to goals and moral truth\*\*. It evaluates \*\*feasibility, dynamics, and failure modes\*\* conditional on chosen goals.



---



\## Status



\* Core ontology: \*\*stable\*\*

\* Inventories: \*\*active\*\*

\* Automation: \*\*under construction\*\*

\* Empirical grounding: \*\*ongoing\*\*



Breaking changes will be deliberate and rare.



---



\## License / Use



License and citation guidance to be added once the public interface stabilizes.



---



\### Next steps (internal)



\* Add automation scripts (`model.ps1`)

\* Add inventory lint rules

\* Add GitHub Action for consistency checks

