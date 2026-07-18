# Scripts

## Purpose

This folder holds **repository automation scripts** for the ForgeOS project itself.

These scripts automate the development, maintenance and release of the ForgeOS *repository*. They are an implementation concern of this project — **not** part of the reusable ForgeOS Framework and **not** a Tooling integration.

Per **ADR-006**, the ForgeOS Framework must remain fully functional without this directory. The scripts exist solely to improve developer experience and repository hygiene.

---

## Scope

| Belongs here                                                | Does not belong here                                   |
| ----------------------------------------------------------- | ------------------------------------------------------ |
| Repository validation (broken links, empty files, orphans)  | Engineering standards                                  |
| Documentation generation / index generation                 | Skills, Templates, Examples                            |
| Template scaffolding                                        | Collaboration Orchestration                            |
| Release preparation (changelog rollup, version bump)        | Platform integrations (those live in `Tooling/`)       |
| Migration utilities for framework restructures              | Project technology implementations                     |
| Routine repository maintenance tasks                        | Anything a *consuming* project needs at runtime        |

If a script encodes engineering knowledge, that knowledge belongs in the Framework, not here.

---

## Why Scripts Live Here (not at the repo root)

Earlier versions of ForgeOS kept scripts at the repository root. ADR-006 relocated them to `ForgeOS Project/Scripts/` so that:

* The top-level repository structure reflects the architecture (Framework, Tooling, Project).
* Scripts are clearly project implementation, not an architectural component.
* Consuming projects are not tempted to copy these scripts as if they were part of the framework.

See `ForgeOS Project/ADRs/ADR-006.md` for the full decision.

---

## Contents

This folder is currently a placeholder. As automation is introduced, scripts should be organised by purpose:

* `validate/` — repository and documentation validation.
* `generate/` — index, TOC and documentation generation.
* `scaffold/` — template scaffolding.
* `release/` — release preparation helpers.
* `migrate/` — one-off migration utilities.

Each script should:

* Be runnable standalone (no hidden dependencies on other scripts).
* Document its inputs, outputs and exit codes.
* Fail loudly on error rather than silently producing bad output.
* Avoid modifying Framework content in ways that bypass the change process.

---

## Authority and Boundaries

* Scripts **may read** any part of the repository.
* Scripts **may write** only to locations permitted by the Framework change process — they do not bypass Governance.
* Scripts **must not** define or override engineering standards, workflow, or process.
* Scripts **must not** introduce new platform integrations.

A script that appears to require any of the above is a signal that the Framework itself needs the capability, not that the script should grow.

---

## Relationship to Other Components

| Component | Relationship |
| --- | --- |
| `Framework/` | Scripts may validate or index Framework content; Framework is authoritative. |
| `Tooling/` | Scripts are not tooling integrations; they do not touch AI platform APIs. |
| `ForgeOS Project/ADRs/` | ADRs record decisions that scripts may automate (e.g. restructure migrations). |
| `ForgeOS Project/Release Notes/` | Release scripts may roll up content into release notes. |

---

## Related Documents

* `ForgeOS Project/ADRs/ADR-006.md` — the decision to relocate scripts here.
* `Framework/03-Governance/change-management.md` — the change process scripts must respect.
* `Framework/03-Governance/release-process.md` — the release flow scripts may assist with.