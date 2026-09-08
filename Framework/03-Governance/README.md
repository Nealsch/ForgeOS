# Governance

## Purpose

Governance defines the lifecycle constraints, approval gates and behavioural rules that control how a software project is changed, released and maintained.

Governance is **not** the same as Standards. Standards define *engineering quality* — how software should be built. Governance defines *lifecycle control* — when changes are permitted, who must approve them, and what must be true before work is released.

---

## Scope

ForgeOS Governance is **project-oriented**. It defines a single governance model that applies to every software project built on ForgeOS.

ForgeOS treats its own framework as a software product. Therefore **ForgeOS applies the same governance model to itself** that it asks of any other project.

```text
One governance model
        │
        ├── Applied to ForgeOS-the-project  (the framework itself)
        └── Applied to every consuming project
```

This keeps governance consistent. There is not one rule for the framework and a different rule for projects; there is one model, applied uniformly.

### What Governance owns

* Change management — how changes are proposed, reviewed and approved.
* Release process — the gates and steps that must be satisfied before a release.
* Compatibility policy — what breaking changes are permitted and how they are managed.
* Versioning strategy — how versions are numbered and communicated (see `Version/README.md`).

### What Governance does not own

* Engineering quality rules — owned by `Framework/02-Standards/`.
* Specialist engineering activities — owned by `Framework/04-Agents/` and `Framework/05-Skills/`.
* Project-specific living artefacts (roadmap, backlog, release notes) — owned by each project (per **ADR-002**); for ForgeOS itself these live in `ForgeOS Project/`.

---

## Relationship to the Framework

| Component     | Question it answers                  |
| ------------- | ------------------------------------ |
| Workflow      | *When* is work performed?            |
| Standards     | *What quality* is expected?          |
| **Governance**| *What controls and approvals* govern the lifecycle? |
| Agents        | *Who* performs the work?             |
| Skills        | *How* is the work performed?         |

Governance complements Standards. Standards describe how to engineer well; Governance describes the gates and approvals that control entry into and exit from each lifecycle state.

---

## Documents

| Document                | Purpose                                                                                  |
| ----------------------- | ---------------------------------------------------------------------------------------- |
| `change-management.md`  | How changes are proposed, classified, reviewed and approved.                             |
| `release-process.md`    | The authoritative end-to-end release workflow and the gates each release must satisfy.   |
| `compatibility.md`      | Backward and forward compatibility commitments, deprecation and breaking-change policy.  |
| `Standards-Applicability.md` | How projects declare scoped legacy-code exemptions that burn down (no requirement relaxation). |
| `Version/README.md`     | The version-numbering scheme (Semantic Versioning) used across releases.                 |

`release-process.md` is the authoritative source for the release workflow. `Version/README.md` owns only the version-numbering scheme and references the release process; it does not duplicate it.

---

## Design Principles

* **One model, uniformly applied.** The same governance applies to ForgeOS itself and to consuming projects.
* **Atomic documents.** Each governance concern lives in exactly one place. Duplication is actively removed.
* **Standards over process where possible.** Governance adds control only where engineering judgement alone is insufficient.
* **Human authority.** Releases, breaking changes and deprecations require Product Owner approval.
* **Traceability.** Every governance-relevant change is linked to a decision record (ADR) or backlog item.

---

## Authority

Governance is part of the ForgeOS Framework and sits above Project Documentation and Tooling in the authority hierarchy.

Runtime configuration (e.g. `.clinerules`) must never override Governance. If a conflict is detected, the Framework is authoritative and the runtime configuration must be corrected.

---

## Related Documents

* `Framework/02-Standards/` — engineering quality rules that complement Governance.
* `Framework/01-Workflow/` — the SDLC that Governance controls entry to and exit from.
* `Framework/03-Governance/Version/README.md` — version-numbering scheme.
* `ForgeOS Project/ADRs/` — architectural decisions affecting Governance (e.g. ADR-002 living documentation, ADR-005 Work Item Management).