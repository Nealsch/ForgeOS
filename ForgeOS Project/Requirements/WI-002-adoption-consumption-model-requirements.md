# Requirements Specification — WI-002 Adoption & Consumption Model

## Purpose

Define the analysed requirements for operationalising how a project binds to and consumes the ForgeOS Framework, with clarity, traceability, and acceptance context. This document is the Specify-phase deliverable for WI-002 and the primary input to the Design phase.

## Overview

ForgeOS concepts work, but nothing operationalises adoption. Two scenarios were validated conceptually during the 2026-09-07 simulation:

* **Scenario A — new project:** create project folder, scaffold from the Project Template, attach the Framework (do **not** copy it), bootstrap project state, open Session 1.
* **Scenario B — existing codebase:** attach the Framework without restructuring the repo, baseline via the Codebase Analyst, bootstrap a minimal docs set, declare a legacy compatibility policy, route all new work through intake.

**Product Owner decisions confirmed (2026-09-08):**

* WI-002 approved.
* **G1 binding mechanism: sibling clone + pointer pinned to a Framework release tag. Copy/fork of the Framework into a project is forbidden.**
* The canonical project folder structure is a first-class deliverable: for new projects the full template scaffold is created up front (folders may exist empty — the project grows into them); for existing codebases the structure is mapped incrementally, never imposed.

**In scope:** G1 (binding model), G5 (existing-codebase adoption path), G2 (bootstrap procedure / first-session walkthrough), G6 (legacy Standards applicability), FS1 (canonical folder structure policy), G3 (template platform-config audit), G4 (project→Framework version pin).

**Out of scope:** G7 (Codebase Analyst skills catalogue population — owned by skill-gaps-backlog gap #9); any runtime code changes; changes to Framework versioning/compatibility Governance itself (only its *consumption* is specified here).

## Requirement Categories

* Functional Requirements
* Non-Functional Requirements
* Compliance Requirements (Governance alignment)

## Requirement Details

### Functional Requirements

| ID | Title | Description | Priority | Acceptance Criteria | Related Gaps | Dependencies |
|----|-------|-------------|----------|---------------------|--------------|--------------|
| FR-1 | Sanctioned binding model | Document the sanctioned mechanism by which a project binds to the Framework: sibling clone with a pointer pinned to a Framework release tag; copy/fork forbidden. Location: Onboarding doc and/or new ADR. | Must | Binding model documented; copy/fork explicitly prohibited; pin location defined; alternatives (submodule, copy) recorded with rationale in an ADR | G1 | None |
| FR-2 | Version pin record | A project records the Framework release tag it is bound to (e.g. metadata in the Project Template's project-definition doc). | Must | Pin field exists in the Project Template; documented update procedure exists | G4 | FR-1 |
| FR-3 | Canonical folder structure policy | The template scaffold is declared canonical for new projects: all folders created at init, empty where unused. Mandatory vs optional pieces are defined for existing-codebase adoption. | Must | Policy document declares the structure canonical; mandatory/optional matrix exists for brownfield | FS1 | None |
| FR-4 | New-project bootstrap procedure | A walkthrough: create project → scaffold full structure → attach Framework → record version pin → bootstrap project state → open Session 1. Optionally a `forge init` script under `ForgeOS Project/Scripts/` (per ADR-006). | Must | Walkthrough (first-session doc) exists with the new-project variant; each step is executable without ambiguity | G2 | FR-1, FR-3 |
| FR-5 | Existing-codebase adoption path | Document the brownfield entry point: attach → Codebase Analyst baseline → minimal docs bootstrap → legacy compatibility policy declaration → route all new work through intake. | Must | Adoption path documented with the same step rigour as FR-4; entry point referenced from the Workflow | G5 | FR-1, FR-3 |
| FR-6 | Legacy Standards applicability standard | A Governance/Standards note defining how a project declares scoped legacy exemptions: project rules may tighten but never relax Framework requirements; exemptions are scoped, declared in project docs, and burn down as legacy code is touched. | Must | Governance or Standards note exists; burn-down mechanism defined | G6 | FR-5 |
| FR-7 | Template platform-config alignment | Audit Project Template platform configs (`.ai`/`.github`/`.vscode`) against the WI-001 `.clinerules` runtime patterns and align them. | Should | Audit recorded; configs aligned or deviations documented | G3 | WI-001 (closed) |

### Non-Functional Requirements

| ID | Title | Description | Priority | Acceptance Criteria |
|----|-------|-------------|----------|---------------------|
| NFR-1 | No version drift | A project must always be able to state exactly which Framework release it consumes; updates are an explicit, recorded action. | Must | Pin mechanism verifiable by inspection |
| NFR-2 | Framework read-only | The Framework must remain unmodified by projects (no in-place edits); project-specific constraints live in Project Documentation. | Must | Binding model enforces/documents read-only consumption |
| NFR-3 | Predictability | Any human or AI starting a ForgeOS project (greenfield or brownfield) reaches an identical, predictable structure and binding. | Must | Two adoption walkthroughs produce equivalent states |
| NFR-4 | Documentation only | Implementation is documentation, templates and (optionally) scripts; no runtime behaviour changes. | Must | Deliverables are docs/templates/scripts only |

### Compliance Requirements

| ID | Title | Description |
|----|-------|-------------|
| CR-1 | Governance alignment | The binding and update model must comply with Framework compatibility/versioning Governance; the Framework layer must never absorb project-specific rules. |
| CR-2 | Authority hierarchy | All new documents must respect Workflow → Standards → Governance and the AGENTS.md authority hierarchy; runtime/platform concerns stay in Tooling/runtime config. |

## Constraints

* The Framework is versioned and released independently; projects pin to release tags (currently v1.0.1).
* New documents belong in `Framework/09-Onboarding/`, `Framework/01-Workflow/`, `Framework/03-Governance/`, the Project Template, and `ForgeOS Project/Scripts/` (per ADR-006); the binding decision is recorded as an ADR in `ForgeOS Project/ADRs/`.
* `ForgeOS Project/Scripts/` scripts must be non-interactive and idempotent (ADR-006 discipline).

## Risks and Issues

| # | Risk | Mitigation |
|---|------|------------|
| R1 | Getting the binding model wrong causes version drift across all future projects (highest-leverage decision in the WI). | G1 decided up front (sibling clone + release-tag pin); validate against both scenarios before Design exits. |
| R2 | Brownfield "incremental mapping" could be read as permitting structure chaos. | Mandatory/optional matrix (FR-3) and legacy burn-down policy (FR-6) bound together. |
| R3 | `forge init` script adds maintenance burden. | Script is optional (FR-4); the walkthrough is the source of truth. |

## Traceability

* Work Item: `ForgeOS Project/Backlog/WI-002-adoption-consumption-model.md`
* Related: WI-001 (closed), ADR-005, ADR-006, ADR-007/ADR-008, skill-gaps-backlog #9 (G7)
* Decisions recorded: WI-002 approval + G1 binding mechanism (2026-09-08, this session)
