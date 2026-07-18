# Change Management

## Purpose

Defines how changes are proposed, classified, reviewed and approved under ForgeOS governance.

Change management is the **intake-to-approval** control that runs *before* the release process (see `release-process.md`). Together, the two govern the full change lifecycle: change management decides *whether* a change is made; the release process decides *how* it ships.

---

## Scope

This document applies to all engineering changes in any ForgeOS project, including ForgeOS-the-framework itself (see `Framework/03-Governance/README.md` → Scope).

---

## Change Lifecycle

```text
Proposed
   ↓
Validated (Work Item Management)
   ↓
Classified (change type + compatibility impact)
   ↓
Enriched (engineering metadata)
   ↓
Prioritised (recommended)
   ↓
Approved (Product Owner)
   ↓
Released (see release-process.md)
```

The intake stages (Proposed → Approved) are performed by Work Item Management per **ADR-005**. Change management owns the *classification* and *approval policy* that govern those stages.

---

## Change Classification

Every change is classified along two dimensions.

### By Change Type

| Type             | Examples                                              |
| ---------------- | ----------------------------------------------------- |
| Feature          | New capability.                                       |
| Enhancement      | Improvement to an existing capability.                |
| Bug              | Defect fix.                                           |
| Technical Debt   | Internal quality work with no user-facing change.     |
| Security Finding | Vulnerability or security improvement.               |
| Documentation    | Documentation-only change.                            |
| Refactoring      | Restructuring without behaviour change.               |
| Maintenance      | Dependency updates, housekeeping.                     |
| Infrastructure   | Build, deploy or environment change.                  |
| Compliance       | Change required to satisfy a compliance obligation.   |

Change type is recorded on the Work Item and is used by Work Item Management during enrichment.

### By Compatibility Impact

Compatibility impact is classified using `compatibility.md`. The classification determines the version-number impact and the review path:

| Impact      | Version effect          | Review path                                |
| ----------- | ----------------------- | ------------------------------------------ |
| Breaking    | Major version bump      | Architect + Product Owner approval         |
| Additive    | Minor version bump      | Lead engineer + Product Owner approval     |
| Compatible  | Patch version bump      | Lead engineer approval                     |
| None        | No version impact       | Standard Work Item approval                |

---

## Proposal

Any stakeholder may propose a change. Proposals enter Work Item Management as Work Items (per **ADR-005**) and are validated before classification.

A proposal must include:

* What is being changed and why.
* The value or problem addressed.
* Any known alternatives considered.

Proposals do not need to specify the implementation; that is produced during enrichment and design.

---

## Review

Review considers:

* Alignment with the roadmap and backlog.
* Standards implications (`Framework/02-Standards/`).
* Compatibility impact and the review path it triggers.
* Security implications.
* Architectural impact.
* Availability of the right Agent and Skill set to deliver it.

Reviewers do not approve changes for release — that is the Product Owner's role. Reviewers ensure the change is *ready to be approved*.

---

## Approval Authority

| Change class               | Approval authority                         |
| -------------------------- | ------------------------------------------ |
| Breaking change            | Architect + Product Owner                  |
| Additive change            | Lead engineer + Product Owner              |
| Compatible change          | Lead engineer                              |
| Documentation / Maintenance | Lead engineer or delegate                 |
| Security-critical          | Security Engineer + Product Owner          |

All approvals are recorded on the Work Item. Approval moves the Work Item from "prioritised" to "approved" and makes it eligible to enter the SDLC.

---

## Architectural Changes

Changes that affect architecture must be accompanied by an Architecture Decision Record (ADR) before approval. ADRs live in the project's decisions location:

* ForgeOS-the-framework → `ForgeOS Project/ADRs/`
* Consuming projects → the project's decisions location.

Approval of a breaking architectural change requires the relevant ADR to be accepted.

---

## Exceptions

A Product Owner may approve an exception to this process. Exceptions are:

* Recorded against the Work Item.
* Time-bound or scope-bound.
* Not used as precedent to change this document.

Persistent process changes are made by updating this document (or an ADR), not by accumulating exceptions.

---

## Authority

This document is governance and is authoritative for change management across all ForgeOS projects. Project-specific deviations must be documented as an approved exception.

---

## Related Documents

* `Framework/03-Governance/README.md` — governance scope and principles.
* `Framework/03-Governance/compatibility.md` — compatibility classification used by the review paths.
* `Framework/03-Governance/release-process.md` — what happens after a change is approved.
* `Framework/11-Collaboration Orchestration/Work-Item-Management.md` — the intake process this document governs.
* `Framework/05-Skills/02-Architecture/Forge-Architecture-Decision-Records/` — ADR production for architectural changes.