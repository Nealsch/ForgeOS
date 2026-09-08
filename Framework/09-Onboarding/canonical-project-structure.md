# Canonical Project Structure

## Purpose

Declares the `Framework/07-Templates/09-Project Template/` scaffold as the **canonical project structure**. The structure is a first-class deliverable: it gives a codebase consistency and rigidity and makes it consumable by humans and AI agents without exploration.

## Policy

* **New projects:** the full scaffold is created at init. Folders may exist **empty** (preserved by `.gitkeep` or a structural `README.md` slot) — the project grows into them. Pruning "unused" folders is not permitted; an empty canonical folder signals *not yet needed*, not *not applicable*.
* **Existing codebases:** the structure is **mapped incrementally, never imposed**. Only the mandatory pieces are created at adoption; the rest is adopted as the corresponding area of the codebase is touched.
* The Framework is not part of the project tree — it binds per **ADR-009** (sibling clone + release-tag pin).

---

## Mandatory / Optional Matrix (Existing-Codebase Adoption)

| Template piece | Classification | Brownfield rationale |
|----------------|----------------|----------------------|
| `AGENTS.md` | **Mandatory** | Runtime entry point for AI agents; points to the Framework as engineering truth. |
| `docs/PROJECT-DEFINITION.md` | **Mandatory** | Project purpose/scope + the **Framework Binding** pin record (ADR-009). |
| `docs/GLOSSARY.md` | **Mandatory** | Terminology alignment is the cheapest correctness win in a legacy codebase. |
| `docs/REQUIREMENTS.md` | **Mandatory** | All new work routes through intake; requirements need a home from day one. |
| `docs/DECISIONS.md` + `docs/decisions/` | **Mandatory** | New architectural decisions must be recorded immediately; history stays where it is. |
| `work/` (BACKLOG, PROJECT-STATE, etc.) | **Mandatory** | Work management starts with the first adopted Work Item. |
| `.ai/` (knowledge, sessions, prompts, cache) | **Recommended** | Adopt at the first AI-assisted session; strongly recommended from day one. |
| `docs/ARCHITECTURE.md` + `docs/architecture/` | **Recommended** | Seed from the Codebase Analyst baseline; complete incrementally as areas are touched. |
| `docs/testing/` (TEST-PLAN, TEST-CASES) | **Recommended** | Adopt when the first change to legacy code defines its test strategy. |
| `docs/deployment/` (DEPLOYMENT, RUNBOOK) | **Recommended** | Adopt when the first deployment-affecting change occurs. |
| `docs/CHANGELOG.md` | **Recommended** | Start recording from adoption; historical entries are not back-filled. |
| `docs/ROADMAP.md` | **Recommended** | Adopt when forward planning begins. |
| `src/`, `tests/`, `deploy/`, `scripts/`, `resources/`, `work/` subfolders | **Optional** | Map onto the existing tree only where the project's own structure lacks an equivalent; never move legacy code to satisfy the scaffold. |
| `.github/`, `.vscode/` | **Optional** | Adopt per platform need, aligned with the runtime-config patterns (WI-001/G3). |

---

## Related Documents

* `first-session.md` — the adoption walkthroughs that consume this matrix.
* `Framework/07-Templates/09-Project Template/README.md` — the scaffold itself.
* `ForgeOS Project/ADRs/ADR-009.md` — binding model.
* `Framework/03-Governance/Standards-Applicability.md` — legacy exemptions.
