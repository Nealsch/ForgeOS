# Requirements Specification — WI-003 Delivery & Operate Skill Categories

## Purpose

Define the analysed requirements for populating the Delivery skill category and establishing Operate-phase skill coverage (skill-gaps #1–#2). This document is the Specify-phase deliverable for WI-003 and the primary input to the Design phase.

## Overview

The Release and Operate SDLC phases reference Forge-* skills that do not exist: `05-Skills/06-Delivery/` is empty and no Operations category exists. This WI creates the missing skills following the existing catalogue pattern (capability-grained `SKILL.md` with JSON frontmatter, per `Forge-Test-Strategy` and siblings).

**Product Owner decisions (2026-09-08):**

* WI-003 approved.
* **Q1:** Operate skills go in a new **`Framework/05-Skills/09-Operations/`** category (07 and 08 are already taken).
* **Q2:** Consolidation approved where capabilities are naturally coupled — target ~14 skills total, not 19.
* **Q3:** Security Monitoring is **deferred to skill-gaps #8** (`05-Security/` expansion); Operate skills cross-reference it, never duplicate it.

**In scope:** the 14 skills below, two category READMEs, `05-Skills/README.md` category index update, cross-check of Release/Operate phase README "Primary Skills" references.

**Out of scope:** gaps #3–#9; any Security-category expansion; templates (skills reference existing templates only); any change to Workflow phase documents beyond referential consistency.

## Requirement Categories

* Functional Requirements (skill inventory)
* Non-Functional Requirements (catalogue conformance)
* Compliance Requirements

## Requirement Details

### Functional Requirements

| ID | Requirement | Acceptance Criteria |
|----|-------------|---------------------|
| FR-1 | `06-Delivery/` contains: Forge-Build-Automation, Forge-CI-CD-Pipeline-Execution, Forge-Release-Management (incl. Version Management), Forge-Infrastructure-as-Code (incl. Environment Configuration), Forge-Rollback-Planning, Forge-Deployment-Verification, Forge-Operational-Readiness — 7 skills | All 7 folders exist with conformant SKILL.md |
| FR-2 | `09-Operations/` contains: Forge-Production-Monitoring (incl. Performance Monitoring + Capacity Planning), Forge-Incident-Management (incl. Root Cause Analysis), Forge-Log-Analysis, Forge-Infrastructure-Management, Forge-Backup-and-Recovery, Forge-Operational-Change-Management — 6 skills | All 6 folders exist with conformant SKILL.md |
| FR-3 | Both categories have READMEs matching sibling category README structure | READMEs exist and follow the category-README pattern |
| FR-4 | `05-Skills/README.md` category index includes 09-Operations | Index row added; counts/structure consistent |
| FR-5 | Release and Operate phase README "Primary Skills" references resolve against the new catalogue | Every referenced skill exists; any name mismatch corrected |
| FR-6 | Security Monitoring capability is represented only as a cross-reference to the Security category (gap #8), recorded in the 09-Operations README | No Forge-Security-Monitoring skill created here; pointer documented |
| FR-7 | skill-gaps-backlog #1 and #2 updated to Completed/Closed | Backlog rows and Recommended Order updated |

### Non-Functional Requirements

| ID | Requirement |
|----|-------------|
| NFR-1 | Every skill is capability-focused and technology-independent (no CI-server, cloud or tool names in definitions; examples at most generic) |
| NFR-2 | Every SKILL.md follows the established structure: JSON frontmatter block (skill, category, purpose, primaryTemplates, supportingTemplates), then Purpose / Responsibility / When To Use / When Not To Use / Inputs / Activities / Outputs / Interaction With Other Skills / Standards Applied / Success Criteria / ForgeOS Principle |
| NFR-3 | Skills compose: explicit "Interaction With Other Skills" sections linking to existing catalogue skills (e.g. Forge-Test-Strategy at release readiness) |
| NFR-4 | Additive only: no existing skill, template or category is modified beyond index updates |

### Compliance Requirements

| ID | Requirement |
|----|-------------|
| CR-1 | Category folder numbering remains additive; no renaming of 01–08 (compatibility policy) |
| CR-2 | Skills never define workflow, standards or governance — capability guidance only |

## Constraints

* Template references must point to existing `Framework/07-Templates/` artefacts; if a needed template is missing, the skill references the closest existing template and notes the gap rather than creating templates in this WI.
* Naming: `Forge-<Capability>` Title Case, no technology names.

## Risks and Issues

| # | Risk | Mitigation |
|---|------|------------|
| R1 | Consolidation blurs capability boundaries (e.g. Version Management inside Release Management). | Each consolidated sub-capability gets an explicit Responsibility bullet; boundaries stated in When Not To Use. |
| R2 | Skills drift into tool-specific guidance (Terraform, Kubernetes, etc.). | NFR-1 review at the Quality Gate; technology names banned from definitions. |
| R3 | Phase README references may not exactly match new skill names. | FR-5 cross-check is an explicit deliverable. |

## Traceability

* Work Item: `ForgeOS Project/Backlog/WI-003-delivery-operate-skills.md`
* Backlog: `ForgeOS Project/Backlog/skill-gaps-backlog.md` #1, #2 (boundary: #8)
* Pattern reference: `Framework/05-Skills/04-Quality/Forge-Test-Strategy/SKILL.md`
