# ForgeOS Platforms

## Purpose

This folder contains per-platform profiles and adapters for the external systems ForgeOS integrates with.

Platforms fall into two categories:

1. **AI Platforms** — IDEs and coding assistants that implement the AI Program Manager role (e.g. Cline, Claude Code, Cursor).
2. **External Work-Tracking Platforms** — issue trackers and project management tools integrated via Work Item Management adapters (e.g. GitHub, Jira, Azure DevOps, GitLab).

---

## AI Platforms

Each AI platform profile describes how that platform implements the architectural role defined in `Framework/11-Collaboration Orchestration/AI-Program-Manager.md` (per **ADR-003**).

| Platform      | Profile                  | Status      |
| ------------- | ------------------------ | ----------- |
| Cline         | `Cline/README.md`        | ✅ Active   |
| VS Code Agent | `VS Code Agent/README.md`| ✅ Active   |
| Claude Code   | `Claude Code/README.md`  | 🟡 Stub — populate when adopted |
| Codex         | `Codex/README.md`        | 🟡 Stub — populate when adopted |
| Cursor        | `Cursor/README.md`       | 🟡 Stub — populate when adopted |
| Gemini CLI    | `Gemini CLI/README.md`   | 🟡 Stub — populate when adopted |

AI platform profiles do not redefine ForgeOS engineering responsibilities. They only describe how the platform fulfils the AI Program Manager role and any platform-specific runtime configuration.

### Maintenance Policy

ForgeOS does **not** require every supported platform to be fully profiled before the framework is usable. Platform profiles are expanded as platforms are actually adopted on projects.

* **Active** profiles are fully documented and reflect real usage.
* **Stub** profiles record only the platform's identity, expected role and the fact that it is not yet in use. They exist so the platform matrix is discoverable and so the folder structure does not change when a platform is later adopted.
* When a stub platform is adopted, its profile is expanded in the same pull request that introduces its runtime configuration.

Profiles for discontinued platforms are removed (not retained as stubs). For example, the former `Roo/` profile was removed when the platform was discontinued.

---

## Work-Tracking Platforms

Each work-tracking platform provides an adapter conforming to the Platform Adapter Contract defined in `Tooling/README.md` (per **ADR-005**).

| Platform      | Adapter               | Status     |
| ------------- | --------------------- | ---------- |
| GitHub        | `GitHub/README.md`    | Reference implementation |
| Jira          | _Placeholder_         | Candidate  |
| Azure DevOps  | _Placeholder_         | Candidate  |
| GitLab        | _Placeholder_         | Candidate  |

The GitHub adapter is the current reference implementation. Other platforms follow the same contract; only the field mapping and API mechanics differ.

---

## Adapter Boundary Reminder

Every adapter in this folder:

* Translates between the platform's native work-item model and the ForgeOS Work Item model.
* **Does not** define validation, enrichment, duplicate detection, prioritisation, routing or approval.
* **Does not** introduce platform terminology into the Framework layer.

See `Tooling/README.md` → "Platform Adapter Contract" for the authoritative specification.

---

## Related Documents

* `Tooling/README.md` — Tooling layer purpose and adapter contract.
* `Framework/11-Collaboration Orchestration/Work-Item-Management.md` — the intake process adapters feed.
* `Framework/11-Collaboration Orchestration/AI-Program-Manager.md` — the role AI platforms implement.
* `Framework/07-Templates/01-Product/Work-Item-template.md` — the target model adapters translate to.