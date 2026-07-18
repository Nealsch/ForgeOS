# Compatibility

## Purpose

Defines ForgeOS's compatibility commitments: what changes are considered breaking, how breaking changes are managed, and the deprecation expectations that protect consumers.

Compatibility classification is consumed by:

* `change-management.md` — to select the correct review path.
* `release-process.md` — to determine the version-number impact at the release gate.
* `Version/README.md` — to map compatibility impact onto Semantic Versioning.

---

## Scope

This policy applies to every ForgeOS project, including ForgeOS-the-framework itself (see `Framework/03-Governance/README.md` → Scope).

For ForgeOS-the-framework, "consumers" are projects that depend on a specific framework version. For consuming projects, "consumers" are the users and integrations of that project's software.

---

## Compatibility Tiers

| Tier        | Version impact      | Definition                                                              |
| ----------- | ------------------- | ----------------------------------------------------------------------- |
| Breaking    | Major version bump  | A change that requires consumers to change their own software or configuration to continue functioning. |
| Additive    | Minor version bump  | A change that adds capability without affecting existing behaviour.     |
| Compatible  | Patch version bump  | A change that fixes or refines behaviour without adding or removing capability. |
| None        | No version impact   | A change with no consumer-visible effect (e.g. internal tooling, comments). |

A single change may be **downgraded** by pairing it with compatibility-preserving measures (see "Reducing Compatibility Impact" below).

---

## What Counts as Breaking

A change is **Breaking** if any of the following are true:

* It removes a public interface, document or artefact that consumers may depend on.
* It renames a public interface, file path, folder or identifier that consumers reference.
* It changes the semantics of an existing public interface in a way that alters observed behaviour.
* It restructures the repository, Framework folder layout or Workflow phases in a way that requires consumers to migrate.
* It changes a governance rule in a way that invalidates previously valid project configuration.
* It introduces a new mandatory step, artefact or approval that did not previously exist.

If unsure, classify **upwards** (treat as Breaking) until the Architect confirms otherwise.

---

## Deprecation Policy

Removals are not immediate. ForgeOS uses a deprecation window:

```text
Mark as deprecated  →  document replacement  →  minimum one minor release notice  →  removal in a Major release
```

A deprecated artefact or behaviour must:

* Remain functional during the deprecation window.
* Be clearly marked as deprecated in its documentation.
* Reference the replacement, where one exists.
* Be listed in the release notes of the release that deprecates it.

Removals are only permitted in a **Major** release and must be listed in that release's notes.

---

## Reducing Compatibility Impact

A proposed Breaking change can be reduced to Additive or Compatible by:

* Adding the new behaviour alongside the existing one.
* Providing automated or documented migration.
* Keeping the old path functional during a deprecation window.

The original Work Item should record both the original classification and the reduced classification, so the compatibility history remains traceable.

---

## Framework-Specific Commitments

For ForgeOS-the-framework specifically:

* **Authority hierarchy** (AGENTS.md → Framework → Project Documentation → Tooling → Runtime Configuration) is a stability commitment. Reordering this hierarchy is Breaking.
* **Framework folder names** (`01-Workflow`, `02-Standards`, … `12-Glossary`) are part of the public surface. Renaming or renumbering them is Breaking.
* **Work Item model and lifecycle** (per **ADR-005**) is a public commitment. Changing the Work Item fields, statuses or ownership boundaries in a way that invalidates existing Work Items is Breaking.
* **ADR-002 living documentation** locations (`ForgeOS Project/ADRs`, `Roadmap`, `Backlog`, `Release Notes`) are public commitments. Moving them is Breaking.

---

## Compatibility and Standards

Compatibility is a governance concern; Standards govern engineering quality. Where a Standards change alters public behaviour, the change is reclassified under this policy before release.

---

## Exceptions

A Product Owner may approve an exception (for example, an early removal for a security reason). Exceptions are recorded against the Work Item and noted in the release notes; they do not modify this document.

---

## Authority

This document is governance and is authoritative for compatibility decisions across all ForgeOS projects.

---

## Related Documents

* `Framework/03-Governance/README.md` — governance scope and principles.
* `Framework/03-Governance/change-management.md` — review paths that consume compatibility classification.
* `Framework/03-Governance/release-process.md` — release gate that enforces compatibility classification.
* `Framework/03-Governance/Version/README.md` — version-numbering scheme.
* `ForgeOS Project/ADRs/` — ADRs that establish public commitments (e.g. ADR-002, ADR-005).