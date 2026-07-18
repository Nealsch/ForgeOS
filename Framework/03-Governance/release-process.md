# Release Process

## Purpose

Defines the authoritative end-to-end process for releasing software under ForgeOS governance.

This document is the **single source of truth** for the release workflow. It applies to every ForgeOS project, including ForgeOS-the-framework itself (see `Framework/03-Governance/README.md` → Scope).

The version-numbering scheme used during release is defined separately in `Version/README.md`.

---

## Release Principles

* **No unreleased scope.** A release contains only work that has passed its Workflow exit gate.
* **Product Owner authority.** The Product Owner approves the release scope and the release itself.
* **Human-gated.** No release is performed without explicit approval.
* **Traceable.** Every release is linked to its Git commit, version tag and release notes.
* **One process.** The same process applies to ForgeOS itself and to consuming projects.

---

## Release Gates

Before a release may proceed, **all** of the following must be true:

| Gate | Requirement |
| --- | --- |
| Scope approved | Product Owner has approved the set of Work Items included in the release. |
| Work complete | Every included Work Item has passed the Workflow exit gate for its phase. |
| Standards met | Applicable `Framework/02-Standards/` have been satisfied. |
| Tests pass | Automated and manual test requirements have been met. |
| Documentation updated | Documentation affected by the release has been updated. |
| Compatibility assessed | The compatibility impact has been classified per `compatibility.md` and reflected in the version number. |
| Decision records linked | Any ADRs affecting the release are referenced from the release notes. |

A release that fails any gate is blocked until the gate is satisfied or the scope is changed and re-approved.

---

## Release Workflow

```text
1. Confirm release scope          (Product Owner)
2. Verify release gates           (Engineering / QA)
3. Update framework/project docs  (Engineering)
4. Update release notes           (Engineering / Technical Writer)
5. Create the release record      (Engineering)
6. Commit changes                 (Engineering)
7. Tag the release                (Engineering)
8. Update roadmap for next cycle  (Product Owner)
9. Synchronise external trackers  (Work Item Management, per ADR-005)
```

### 1. Confirm release scope

The Product Owner confirms which Work Items are included in the release, based on the Engineering Backlog and priority decisions.

### 2. Verify release gates

Each gate in the table above is verified. Any failure returns the release to scope confirmation or to the originating Work Items.

### 3. Update framework/project documentation

Documentation affected by the release is updated. For ForgeOS-the-framework, this includes Framework documents. For consuming projects, this includes project-specific documentation.

### 4. Update release notes

Release notes are written (or updated) in the project's release notes location:

* ForgeOS-the-framework → `ForgeOS Project/Release Notes/`
* Consuming projects → the project's release notes location.

### 5. Create the release record

A release record is created that captures:

* Version number (per `Version/README.md`).
* Git commit hash at the point of release.
* Scope (Work Items and/or change summary).
* Compatibility impact classification.
* Linked ADRs.

### 6. Commit changes

All release-related changes are committed to version control.

### 7. Tag the release

The release commit is tagged with the version number. The tag is the immutable reference to the released state.

### 8. Update the roadmap

The roadmap is updated to reflect the completed release and the focus for the next cycle.

### 9. Synchronise external trackers

External work-tracking platforms are updated so that completed Work Items are marked done/closed on their originating platform. This is performed by Work Item Management (Orchestration Lifecycle stage 9 — External Synchronisation, per **ADR-005**).

---

## Emergency Releases

An emergency release (e.g. a critical security fix) follows the same gates and workflow, but may:

* Compress the scope to a single Work Item.
* Expedite review and approval.
* Bypass non-essential documentation updates, provided they are captured in the next regular release.

Emergency releases must still be Product Owner approved, tagged and recorded.

---

## Pre-release vs Release vs Post-release

| Phase         | Ownership                 | Output                                    |
| ------------- | ------------------------- | ----------------------------------------- |
| Pre-release   | Product Owner + Engineering | Confirmed scope, satisfied gates          |
| Release       | Engineering               | Tagged commit, release record, notes      |
| Post-release  | Product Owner + Work Item Management | Roadmap updated, external trackers synced |

---

## Authority

This process is governance and is authoritative for all releases. Project-specific deviations must be documented as an exception and approved by the Product Owner; they do not modify this document.

---

## Related Documents

* `Framework/03-Governance/README.md` — governance scope and principles.
* `Framework/03-Governance/compatibility.md` — compatibility classification used at the version-numbering gate.
* `Framework/03-Governance/Version/README.md` — version-numbering scheme.
* `Framework/03-Governance/change-management.md` — how the changes inside a release were proposed and approved.
* `Framework/11-Collaboration Orchestration/Work-Item-Management.md` — Work Item approval and external synchronisation.