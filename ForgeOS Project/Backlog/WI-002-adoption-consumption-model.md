# Work Item — Adoption & Consumption Model

## Identification

| Field | Value |
| ----- | ----- |
| Work Item ID | WI-002 |
| Title | Define how projects consume the Framework: deployment/binding model, bootstrap procedure, folder-structure policy, and the existing-codebase adoption path |
| Work Item Type | Feature / Technical Debt |
| Status | In SDLC — Develop complete (all FR-1…FR-7 implemented 2026-09-08; G3 audit closed) — awaiting Product Owner Quality Gate review |

## Origin

| Field | Value |
| ----- | ----- |
| Source Platform | Manual (Product Owner session) |
| External Reference | None |
| Synchronisation Status | N/A |
| Reported By | Product Owner (adoption simulation session, 2026-09-07) |
| Date Imported | 2026-09-07 |

## Description

```text
What needs to be done:
Operationalise how a project binds to the ForgeOS Framework. Two scenarios were
simulated and both work conceptually but nothing operationalises the binding:

  Scenario A — new project: create project folder, scaffold from the Project
  Template, attach the Framework (do NOT copy it), bootstrap project state,
  open Session 1.
  Scenario B — existing codebase: attach Framework without restructuring the
  repo, run the Codebase Analyst Agent to baseline, bootstrap a minimal docs
  set, declare a legacy/Standards compatibility policy, route all new work
  through intake.

Cross-cutting requirement (Product Owner direction): the canonical project
FOLDER STRUCTURE must be treated as a first-class deliverable. Folders give a
codebase consistency and rigidity and make it easier for a human to consume.
For new projects the full template scaffold is created up front — folders may
exist empty, allowing the project to grow into them. For existing codebases
the structure is mapped onto the repo incrementally rather than imposed.

Value delivered:
Any human or AI can start a ForgeOS project (greenfield or brownfield) and get
an identical, predictable structure and binding; no version drift between
project and Framework.
```

## Validation

* Sufficient description: **Yes**
* Clear business objective: **Yes**
* Engineering relevance: **Yes**
* Reproducible: **Yes** (gaps verified against current Framework/Onboarding/Template contents)
* Conflicts identified: **Yes** — see gap table below
* Duplicate of: None (complements WI-001; G7 relates to skill-gaps-backlog #9)
* Validation outcome: **Accepted**

## Engineering Impact

| Field | Value |
| ----- | ----- |
| Technical Risk | Medium (defines the mechanism every future project depends on; getting binding wrong causes version drift) |
| Implementation Complexity | Medium (new Framework docs + template audit; no code runtime changes) |
| Security Impact | None |
| Affected Components | `Framework/09-Onboarding/`, `Framework/07-Templates/09-Project Template/`, `Framework/01-Workflow/`, `Framework/03-Governance/`, `ForgeOS Project/Scripts/`, `skill-gaps-backlog.md` |

## Gaps & Recorded Decisions (priority order)

| # | Gap | Decision / Direction |
|---|-----|----------------------|
| G1 | No documented consumption model — how a project binds to the Framework (submodule vs sibling clone vs copy) and how the version pin is recorded. | Choose and document the sanctioned binding (recommendation: sibling clone + pointer pinned to a Framework release tag; copy/fork forbidden). Location: Onboarding or a new ADR. |
| G5 | No adoption path for existing codebases — the Workflow starts at Specify (greenfield); no "Baselining" entry point despite ADR-007/008 supplying the machinery. | Document an Existing-Codebase Adoption path: attach → Codebase Analyst baseline → minimal docs bootstrap → legacy compatibility policy → route all new work through intake. |
| G2 | No bootstrap procedure — no "create project → attach framework → open Session 1" walkthrough; `first-session.md` is a listed placeholder. | Author `09-Onboarding/first-session.md` with two variants: **new project** (full scaffold, folders exist empty and the project grows into them) and **existing codebase** (incremental mapping, mandatory vs optional template pieces). Optionally a `forge init` script in `ForgeOS Project/Scripts/` (per ADR-006). |
| G6 | No standard for partial Standards applicability to legacy code — Standards read as universal; legacy code cannot comply retroactively. | Add a Governance/Standards note defining how a project declares legacy scope exemptions (project rules may tighten but never relax Framework requirements; exemptions are scoped, declared in project docs, and burn down as legacy code is touched). |
| FS1 | **Canonical project folder structure** — the template scaffold exists but is not stated as *mandatory and complete-from-day-one*, and its mandatory/optional pieces are undefined for brownfield adoption. | Declare the template structure canonical for new projects: all folders created at init, empty where unused, so the project grows into a predictable shape (consistency, rigidity, human consumability). Define which pieces are mandatory vs optional when adopting an existing repo. Feeds G2 authoring. |
| G3 | Project Template platform configs (`.ai`/`.github`/`.vscode`) unverified against the `.clinerules` runtime pattern established in WI-001. | Audit template platform configs; align with `.clinerules/context-loading.md`, `response-format.md`, `tool-preferences.md` patterns. |
| G4 | No project→Framework version pin mechanism (compatibility Governance covers framework↔framework only). | Add a Framework-version record to the Project Template (e.g. metadata in `docs/PROJECT-DEFINITION.md`). |
| G7 | Codebase Analyst Agent's Skills (ADR-007) are not in the catalogue. | Logged as skill-gaps-backlog gap #9; resolved by that backlog, not this WI. When populating, evaluate open-source codebase graphing tools (e.g. CodeQL, Joern, Glean, SCIP, tree-sitter) as implementations of the ADR-008 Codebase Analysis Capability Contract — pluggable, never leaking into the Framework layer. |

## ForgeOS Routing Recommendations

| Field | Value |
| ----- | ----- |
| Recommended Lead Agent | Technical Writer |
| Supporting Agents | Architect (binding model + adoption path are architectural), Codebase Analyst (Scenario B baseline validation) |
| Required Skills | Forge-Documentation-Generation, Forge-Solution-Architecture |
| Applicable Standards | Documentation Standards, Governance (compatibility policy) |
| Required Templates | Architecture-Decision-Record (binding decision), Work-Item |
| Recommended Initial SDLC Phase | Specify (decisions G1/FS1/G6 need specifying before authoring) |

## Priority

| Field | Value |
| ----- | ----- |
| Recommended Priority | High |
| Rationale | Every future project hits this on day one; without G1 the read-only/independent-versioning rule is unenforceable, and without G5/FS1 adoption is ad hoc per project. |
| Outstanding Decisions | None — Product Owner approved WI-002 and confirmed the G1 binding mechanism (sibling clone + pointer pinned to a Framework release tag; copy/fork forbidden) on 2026-09-08. |

## Related

* WI-001 — Framework Documentation Alignment (runtime config patterns referenced by G3) — **Completed/Closed 2026-09-08**
* Specify-phase deliverable — `ForgeOS Project/Requirements/WI-002-adoption-consumption-model-requirements.md` (requirements baseline FR-1…FR-7, NFR-1…NFR-4, CR-1…CR-2)
* ADR-005 — Platform-Independent Work Item Management
* ADR-006 — ForgeOS Project folder & scripts
* ADR-007 / ADR-008 — Codebase Analyst Agent & Graphify capability (Scenario B machinery)
* `ForgeOS Project/Backlog/skill-gaps-backlog.md` — gap #9
