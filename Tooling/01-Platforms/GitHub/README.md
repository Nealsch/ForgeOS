# GitHub Platform Adapter

## Purpose

This adapter integrates GitHub with ForgeOS for work tracking. It is the **reference implementation** of the Platform Adapter Contract defined in `Tooling/README.md` (per **ADR-005**).

It translates between GitHub Issues and the platform-independent ForgeOS Work Item model so that Work Item Management can validate, enrich and prioritise work, and Collaboration Orchestration can subsequently route it, without either having any knowledge of GitHub.

---

## Scope

This adapter covers GitHub-specific concerns only:

* Reading open and closed GitHub Issues.
* Mapping GitHub Issue fields onto ForgeOS Work Item fields.
* Mapping GitHub labels onto ForgeOS Work Item Types.
* Normalising GitHub issue relationships into ForgeOS relationship types.
* Writing status changes back to GitHub Issues when Work Item Management triggers external synchronisation.

It does **not** perform validation, enrichment, duplicate detection, prioritisation, routing or approval. Validation, enrichment, duplicate detection, prioritisation and approval are owned by Work Item Management; routing (Agent, Skill, Standard and Template selection) is owned by the rest of Collaboration Orchestration. All of these live in the Framework layer, never in the adapter.

---

## Field Mapping: GitHub Issue → ForgeOS Work Item

| GitHub Issue Field                     | ForgeOS Work Item Field        | Notes                                                                 |
| -------------------------------------- | ------------------------------ | -------------------------------------------------------------------- |
| Repository + Issue number / URL        | `External Reference`           | Full URL preferred for traceability.                                 |
| `"GitHub"`                             | `Source Platform`              | Constant.                                                            |
| `title`                                | `Description` → Title portion  | Adapter prefixes the Work Item title.                                |
| `body` + comments                      | `Description` → Body           | Comments appended in chronological order.                            |
| `labels` (see type mapping below)      | `Work Item Type`               | Normalised to the ForgeOS type set.                                  |
| `user` (reporter)                      | `Reported By`                  | GitHub login.                                                        |
| `created_at`                           | `Date Imported`                | ISO-8601.                                                            |
| `priority`/`severity` custom fields    | Recorded in metadata **only**  | **Never used as ForgeOS priority** — ForgeOS computes its own.       |
| `milestone`                            | Optional metadata              | Recorded for reference; not authoritative for sequencing.            |
| `assignees`                            | Optional metadata              | Recorded for reference; ForgeOS uses Required Agents, not assignees. |
| Linked issues / `blocked-by` etc.      | `Relationships`                | Normalised to ForgeOS relationship types.                            |
| `state` (`open`/`closed`)              | `Synchronisation Status`       | Drives inbound filtering and outbound updates.                       |

### Label → Work Item Type Mapping

| GitHub Label (example) | ForgeOS Work Item Type |
| ---------------------- | ---------------------- |
| `bug`                  | Bug                    |
| `enhancement`          | Enhancement            |
| `feature` / `feature request` | Feature          |
| `tech-debt` / `technical debt` | Technical Debt   |
| `security`             | Security Finding       |
| `documentation` / `docs` | Documentation        |
| `maintenance`          | Maintenance            |
| `infrastructure`       | Infrastructure         |
| `refactor`             | Refactoring            |
| `spike` / `research`   | Research / Spike       |
| `performance`          | Performance            |
| `compliance`           | Compliance             |
| _(unlabelled or unmapped)_ | Feature (default)   |

Projects may override this mapping in their adapter configuration.

---

## Outbound: ForgeOS → GitHub

When Work Item Management marks a Work Item `Completed` (Orchestration Lifecycle stage 9 — External Synchronisation), the adapter:

1. Transitions the linked GitHub Issue to `closed`.
2. Optionally applies a project-configured completion label (e.g. `done`, `released`) where the GitHub workflow expects it.
3. Reports `Synchronisation Status = Synchronised` → `Closed` back to Work Item Management.

The adapter performs the write. Work Item Management decides *when* the write occurs.

---

## Relationship to Existing Tooling

The Cline `nb-issue-sync` skill historically performed GitHub Issue synchronisation as a platform-specific capability. Under **ADR-005**, that capability is repositioned:

* The **ForgeOS Work Item abstraction** is owned by the Framework (`Work-Item-Management.md`, `Work-Item-template.md`).
* The **GitHub-specific synchronisation mechanics** live in this adapter.
* No orchestration logic is duplicated between the two.

`nb-issue-sync` should be treated as the concrete mechanism behind this adapter, not as a Framework concept.

---

## Adapter Boundary (no duplication)

| Owned by this adapter            | Owned by the Framework (Work Item Management)        |
| ------------------------------- | ---------------------------------------------------- |
| GitHub REST/GraphQL API calls   | Validation                                           |
| Authentication (token, App)     | Enrichment                                           |
| Field mapping (above)           | Duplicate detection                                  |
| Label → type normalisation      | Relationship identification                          |
| Rate limiting / pagination      | Prioritisation (via Forge-Prioritisation)            |
| Native status transitions       | Product Owner approval                               |
|                                 | Agent / Skill / Standard / Template selection        |

Adding GitHub-specific behaviour must never require changes to `Work-Item-Management.md`, the Orchestration Lifecycle, or any ForgeOS Standard.

---

## Configuration

Adapter configuration is project-specific and stored with the project, not in the Framework. Typical configuration includes:

* Repository identifier (`owner/repo`).
* Authentication credentials (handled via project secrets, never stored in the Framework).
* Label mapping overrides.
* Completion label policy.

---

## Related Documents

* `Tooling/README.md` — Platform Adapter Contract (authoritative).
* `Framework/11-Collaboration Orchestration/Work-Item-Management.md` — the intake process this adapter feeds.
* `Framework/07-Templates/01-Product/Work-Item-template.md` — the target Work Item model.
* `Framework/11-Collaboration Orchestration/Orchestration-Lifecycle.md` → stage 9 (External Synchronisation) — when outbound writes occur.
* **ADR-005** — Introduce Platform-Independent Work Item Management.