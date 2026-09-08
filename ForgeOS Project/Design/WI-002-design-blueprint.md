# Design Blueprint — WI-002 Adoption & Consumption Model

## Purpose

Transform the approved requirements baseline (`ForgeOS Project/Requirements/WI-002-adoption-consumption-model-requirements.md`) into an implementation blueprint: the target artifacts, their locations, content design, and traceability. This is the Design-phase deliverable for WI-002 and the direct input to the Develop phase.

## Solution Architecture

The adoption model consists of five cooperating artifacts across three layers (per the AGENTS.md authority hierarchy):

```text
Framework layer (reusable truth)
  ├─ Onboarding: first-session walkthrough (new project + existing codebase)
  ├─ Onboarding: canonical folder-structure policy
  └─ Governance: Legacy Standards Applicability note

Project layer (per-project record)
  └─ Project Template: Framework binding record (release-tag pin)

ForgeOS Project layer (decisions)
  └─ ADR-009: Framework Binding & Consumption Model  ← AUTHORED (Accepted)
```

Design rule: each requirement is realised in exactly one owning artifact; other documents reference it rather than duplicate it.

## Component Design

| Req | Target Artifact | Location | Content Design | Priority |
|-----|-----------------|----------|----------------|----------|
| FR-1 | ADR-009 (done) + binding section in first-session doc | `ForgeOS Project/ADRs/ADR-009.md`; `Framework/09-Onboarding/first-session.md` | Sibling clone + release-tag pin; copy/fork forbidden; alternatives recorded. Onboarding doc gives the operational steps; ADR gives the rationale. | Must |
| FR-2 | Binding record section in Project Template `PROJECT-DEFINITION.md` | `Framework/07-Templates/09-Project Template/docs/PROJECT-DEFINITION.md` | New "Framework Binding" metadata block: bound release tag, pin date, upgrade history. Update procedure lives in the first-session doc. | Must |
| FR-3 | Canonical folder-structure policy | `Framework/09-Onboarding/canonical-project-structure.md` (new) | Declares the Project Template scaffold canonical and complete-from-day-one for new projects (empty folders allowed — project grows into them). Contains the **mandatory/optional matrix** for existing-codebase adoption (each template piece: mandatory / recommended / optional, with brownfield rationale). | Must |
| FR-4 | First-session walkthrough — new-project variant | `Framework/09-Onboarding/first-session.md` (replaces listed placeholder) | Steps: create project folder → scaffold full template structure → clone Framework as sibling at pinned tag → record pin in PROJECT-DEFINITION → bootstrap minimal project state → open Session 1. Optional `forge init` script note pointing to `ForgeOS Project/Scripts/`. | Must |
| FR-5 | First-session walkthrough — existing-codebase variant | `Framework/09-Onboarding/first-session.md` | Steps: attach Framework (sibling clone, no repo restructuring) → Codebase Analyst baseline (per ADR-007/008) → minimal docs bootstrap (mandatory pieces only, per FR-3 matrix) → declare legacy compatibility policy → route new work through intake. | Must |
| FR-6 | Legacy Standards Applicability note | `Framework/03-Governance/Standards-Applicability.md` (new) | Scope declarations for legacy code: exemptions are scoped, declared in project docs, never relax Framework requirements (tighten-only rule preserved), and burn down as legacy code is touched. Cross-referenced from the existing-codebase walkthrough. | Must |
| FR-7 | Template platform-config audit | Audit findings appended to this document (below); fixes applied to template configs | See G3 Audit section. | Should |

## G3 Audit — Project Template Platform Configs vs WI-001 Runtime Patterns

**Status: Complete (2026-09-08).**

| Area | Finding | Classification | Action |
|------|---------|----------------|--------|
| `.ai/` (knowledge, sessions, prompts, cache) | Structural slots with framework_authority frontmatter pointing at Framework Skills/templates — same pattern as WI-001 runtime configs (adapt, never replace authority). | Aligned | None |
| `.github/workflows/README.md` | Placeholder slot; no workflow logic shipping framework behaviour. | Aligned | None |
| `.vscode/` (`.gitkeep`) | Intentionally empty; per-platform need only. | Aligned (optional piece per canonical matrix) | None |
| Template `AGENTS.md` slot | Was a bare slot with no pointer to the WI-001 runtime-config patterns or the ADR-009 sibling-clone resolution path. | **Deviation** | Fixed — slot now carries adaptation guidance: runtime configs link to Framework authority; Framework references resolve via the Framework Binding pin (`docs/PROJECT-DEFINITION.md`). |
| `docs/PROJECT-DEFINITION.md` | Had no binding/version-pin record (gap G4/FR-2). | **Deviation** | Fixed — "Framework Binding" block added (tag, pin date, upgrade history). |

Deviations are closed in Develop; no structural template changes were required.

## Security Design

* Documentation-only change; no runtime, data, or trust-boundary impact (matches NFR-4).
* Scripts (if `forge init` is built) must be non-interactive, idempotent, and must never execute content from inside the Framework (ADR-009 principle).

## Technical Risk Assessment (updated register)

| # | Risk | Design Response | Residual |
|---|------|-----------------|----------|
| R1 | Binding model causes version drift | ADR-009: release-tag pin + explicit upgrade action | Low |
| R2 | Brownfield structure chaos | FR-3 mandatory/optional matrix + FR-6 burn-down, bound together in the walkthrough | Low |
| R3 | `forge init` maintenance burden | Script optional; walkthrough is source of truth | Low |
| R4 (new) | Sibling-path convention varies per machine | Document convention (`../ForgeOS` default) but all project records use the pin, not the path — path is local convenience only | Low |

## Traceability

* Requirements: `ForgeOS Project/Requirements/WI-002-adoption-consumption-model-requirements.md` (FR-1…FR-7, NFR-1…NFR-4, CR-1…CR-2)
* ADR: `ForgeOS Project/ADRs/ADR-009.md`
* Work Item: `ForgeOS Project/Backlog/WI-002-adoption-consumption-model.md`
