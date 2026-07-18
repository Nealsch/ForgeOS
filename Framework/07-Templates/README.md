# ForgeOS Templates

## Purpose

This folder contains the reusable templates provided by the ForgeOS framework.

Templates define the standard starting point for new projects and other reusable artefacts. They ensure every project begins with a consistent structure, documentation and workflow that aligns with the ForgeOS standards.

Templates are blueprints—they are copied into a project and then become project-specific artefacts.

---

## Template Standards

Each ForgeOS template follows a consistent structure to make template usage predictable and easy to maintain.

A typical template includes:

* **Purpose** – Why the template exists and what it is intended to support.
* **When Used** – The situation or decision point where the template is applied.
* **Produced By** – The primary capability, role or skill responsible for generating the output.
* **Consumed By** – The downstream roles, activities or artefacts that depend on the output.
* **Template** – The template content or structure provided for reuse.
* **Completion Criteria** – The conditions that indicate the template has been sufficiently completed.

ForgeOS also recommends including machine-readable metadata in the template header to assist automation, discovery, and tooling. Templates may use a standard Markdown frontmatter format such as YAML or JSON. The metadata should capture key fields like `purpose`, `when_used`, `produced_by`, `consumed_by`, `category`, and `template_type`.

Template files should use the naming convention `name-of-the-template-template.md` so they are easy to identify and process.

When consuming templates, skills should preserve the template headings and use the guidance text as instructions for filling those sections. The instructional text between headings should be honoured during generation, but it should not remain in the final output once the template is filled.

These standard fields keep every template consistent and help teams understand both the template's intent and its expected outcome.

---

## Template Folder Structure

The `Framework/07-Templates` categories mirror the category layout in `Framework/05-Skills`:

* `01-Product`
* `02-Architecture`
* `03-Engineering`
* `04-Quality`
* `05-Security`
* `06-Delivery`
* `07-Documentation and Knowledge`
* `08-AI Assisted Engineering`

The folder structure is intentionally aligned with skill categories, but template usage is not restricted to matching folder names. A skill may rely on primary or supporting templates from any category when appropriate.

---

## Template Catalogue

The catalogue maps skills to their primary and supporting template outputs. This starting list is based on the documentation outputs implied by the `Framework/05-Skills` skill definitions.

| Skill / Capability             | Primary Template(s)              | Supporting Template(s)                     |
| ------------------------------ | -------------------------------- | ------------------------------------------ |
| Work Item Management           | Work Item                        | Prioritisation Matrix                      |
| Forge-Requirements-Elicitation | Requirements Discovery           | Stakeholder Register                       |
| Forge-Requirements-Analysis    | Requirements Specification       | Glossary                                   |
| Forge-User-Story-Definition    | User Story                       | Epic                                       |
| Forge-Acceptance-Criteria      | Acceptance Criteria              | Definition of Done                         |
| Forge-Prioritisation           | Prioritisation Matrix            | Roadmap                                    |
| Forge-Solution-Architecture    | Architecture Definition          | System Context / Component Model          |
| Forge-Data-Modelling           | Data Model                       | Entity Definitions                         |
| Forge-Integration-Design       | Integration Design               | Communication Flow / Data Exchange Summary |
| Forge-Threat-Modelling         | Threat Model                     | Risk Assessment                            |
| Forge-Architecture-Decision-Records | Architecture Decision Record | Decision Log                               |
| Forge-API-Design               | API Specification                | API Usage Documentation                    |
| Forge-Test-Strategy            | Test Strategy                    | Test Plan Template                         |
| Forge-Grill                   | Clarified Intent Summary         | Problem Statement                          |
| Forge-Session-Management       | Session Summary                  | Handoff Notes                              |
| Forge-Standards-Compliance     | Compliance Summary               | Review Checklist                           |

### Candidate Template Categories

These are additional documentation outputs implied by skills that may be supported by templates in the future.

* `Forge-Backend-Development` – supporting implementation documentation
* `Forge-Frontend-Development` – supporting implementation documentation
* `Forge-Database-Implementation` – supporting implementation documentation
* `Forge-Code-Review` – review summary / traceable review records
* `Forge-Debugging` – investigation findings / defect resolution records
* `Forge-Refactoring` – updated supporting documentation
* `Forge-Knowledge-Management` – project knowledge records, glossary, lessons learned
* `Forge-Task-Routing` – routing decision log, documentation improvement plan
* `Forge-Context-Loading` – context summary, documentation audit

### 01-Project Template

The default template used when creating a new ForgeOS project.

It contains the standard project folder structure, documentation, work management files and supporting folders required by the ForgeOS Software Development Lifecycle (SDLC).

A new project is created by duplicating this entire folder into the project's root directory before development begins.

---

## Relationship to the Framework

Templates implement the ForgeOS Standards.

Projects are created from Templates.

Projects may evolve independently after creation, but new projects should always begin from the latest approved template.

**Collaboration Orchestration** selects the appropriate Templates for each engineering activity based on the Skill being applied and the deliverable required. The **AI Program Manager** invokes Collaboration Orchestration to ensure that the correct Templates are used to structure each output.

```text
Task
↓
Skill
↓
Standards
↓
Templates
↓
Project Documents
```

---

## Design Principles

* Templates define the initial project structure.
* Templates contain no project-specific information.
* Templates are maintained by the ForgeOS framework.
* Projects are created by copying templates, not by modifying them in place.
* Improvements to templates benefit all future ForgeOS projects.
