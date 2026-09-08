# Work Item — Delivery & Operate Skill Categories

## Identification

| Field | Value |
| ----- | ----- |
| Work Item ID | WI-003 |
| Title | Populate the Delivery skill category and establish Operate-phase skill coverage (skill-gaps #1–#2) |
| Work Item Type | Feature |
| Status | In SDLC — Design (Specify Gate passed 2026-09-08; consolidation mapping approved) |

## Origin

| Field | Value |
| ----- | ----- |
| Source Platform | Manual (Product Owner session) |
| External Reference | `ForgeOS Project/Backlog/skill-gaps-backlog.md` gaps #1–#2 |
| Synchronisation Status | N/A |
| Reported By | WI-001 (phase README alignment exposed catalogue holes) |
| Date Imported | 2026-09-08 |

## Description

```text
What needs to be done:
The Skills catalogue has no Delivery category content (05-Skills/06-Delivery/ is
empty) and no Operate-phase coverage. The Release and Operate workflow phase
documents reference Forge-* skills that do not exist, so those phases cannot
route work to real capabilities.

Gap #1 (Delivery): Build Automation, Release Management, CI/CD Pipeline
Execution, Infrastructure as Code, Environment Configuration, Version
Management, Rollback Planning, Deployment Verification, Operational Readiness.

Gap #2 (Operate): Production Monitoring, Incident Management, Log Analysis,
Infrastructure Management, Backup and Recovery, Performance Monitoring,
Capacity Planning, Security Monitoring, Root Cause Analysis, Change Management.

Value delivered:
Release and Operate — two full SDLC phases — gain real catalogue coverage;
workflow Primary Skills references resolve; the Forge- capability model is
complete for the delivery half of the lifecycle.
```

## Validation

* Sufficient description: **Yes**
* Clear business objective: **Yes**
* Engineering relevance: **Yes**
* Reproducible: **Yes** (empty category verified; phase READMEs reference absent skills)
* Conflicts identified: **Yes** — gap #2 overlaps #1 (both delivery-half); no Operate category folder exists
* Duplicate of: None
* Validation outcome: **Accepted**

## Engineering Impact

| Field | Value |
| ----- | ----- |
| Technical Risk | Low (additive catalogue content; no existing contracts changed) |
| Implementation Complexity | Medium (up to 19 SKILL.md files, or fewer with consolidation; category structure decision; README updates) |
| Security Impact | None direct — Security Monitoring capability must defer to `05-Security/` authority and gap #8 |
| Affected Components | `Framework/05-Skills/06-Delivery/`, possibly a new Operations category folder, `Framework/05-Skills/README.md`, Release/Operate phase README cross-check |

## Key Specify Questions

| # | Question |
|---|----------|
| Q1 | Where do Operate skills live — inside `06-Delivery`, or a new category folder? **Resolved 2026-09-08 (Product Owner):** new category **`Framework/05-Skills/09-Operations/`** — folders 07 (`Documentation and Knowledge`) and 08 (`AI Assisted Engineering`) already exist. Adding a category folder is additive and does not touch the protected Framework top-level numbering. |
| Q2 | One SKILL.md per capability (up to 19 files), or consolidated skills covering related capabilities (e.g. one Forge-Release-Management covering Rollback Planning + Deployment Verification)? Catalogue precedent favours capability-grained skills. |
| Q3 | Security Monitoring: new skill in Delivery/Operations, or defer to `05-Security/` expansion (gap #8) with a pointer? Avoid duplicating security authority. |

## ForgeOS Routing Recommendations

| Field | Value |
| ----- | ----- |
| Recommended Lead Agent | Technical Writer |
| Supporting Agents | DevOps Engineer (domain authority for capability definitions), Architect (category structure) |
| Required Skills | Forge-Documentation-Generation, Forge-Knowledge-Management |
| Applicable Standards | Documentation Standards |
| Required Templates | Work-Item; existing SKILL.md structure as the in-catalogue pattern |
| Recommended Initial SDLC Phase | Specify (Q1–Q3 need decisions before authoring) |

## Priority

| Field | Value |
| ----- | ----- |
| Recommended Priority | High |
| Rationale | Only remaining 🔴 Critical backlog item; two SDLC phases lack their primary capabilities; recommended order item 1 in skill-gaps-backlog. |
| Outstanding Decisions | Product Owner approval of WI-003; Q1–Q3 resolved during Specify. |

## Related

* skill-gaps-backlog gaps #1, #2 (and boundary with #8 Security Monitoring)
* WI-001 — phase README alignment that exposed the gaps
* WI-002 — closed; its Release/Operate-adjacent artifacts (binding, upgrades) assume these capabilities exist
* Framework/05-Skills/README.md — catalogue structure and naming rules
