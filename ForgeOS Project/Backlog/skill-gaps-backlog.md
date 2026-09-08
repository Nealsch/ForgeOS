# Skill Catalogue Gaps Backlog

## Purpose

Tracks ForgeOS Skills that are referenced by the Workflow phase documents but do not yet exist in the Skills catalogue (`Framework/05-Skills/`). Identified during WI-001 (Framework Documentation Alignment) while aligning the seven SDLC phase documents to the real Forge-* catalogue.

This backlog follows the ForgeOS Work Item lifecycle (Imported → Validated → Enriched → Prioritised → Approved → In SDLC → Completed → Synchronised → Closed) per **ADR-005**.

---

## Priority Legend

| Priority | Meaning |
| --- | --- |
| 🔴 Critical | An entire SDLC phase lacks its primary capabilities. |
| 🟠 High | A phase is partially uncovered. |
| 🟡 Medium | Capability improves consistency but workarounds exist. |

---

## Gaps

| # | Phase | Missing Skill / Capability | Priority | Status | Notes |
| --- | --- | --- | --- | --- | --- |
| 1 | Release, Operate | Delivery category is empty (`05-Skills/06-Delivery/`) — Build Automation, Release Management, CI/CD Pipeline Execution, Infrastructure as Code, Environment Configuration, Version Management, Rollback Planning, Deployment Verification, Operational Readiness | 🔴 Critical | Closed | Closed 2026-09-08 via WI-003: category populated with 7 skills (consolidated from 9 capabilities — Version Management inside Forge-Release-Management, Environment Configuration inside Forge-Infrastructure-as-Code). |
| 2 | Operate | Production Monitoring, Incident Management, Log Analysis, Infrastructure Management, Backup and Recovery, Performance Monitoring, Capacity Planning, Security Monitoring, Root Cause Analysis, Change Management | 🔴 Critical | Closed | Closed 2026-09-08 via WI-003: NEW `05-Skills/09-Operations/` category with 6 skills (consolidated from 10 capabilities — Performance Monitoring + Capacity Planning inside Forge-Production-Monitoring, Root Cause Analysis inside Forge-Incident-Management). Security Monitoring deferred to gap #8 (`05-Security/`). |
| 3 | Verify | Test Execution and Reporting, Defect Management, Regression Testing, Performance Testing, Release Readiness Assessment | 🟠 High | Open | Only Test Strategy/Planning and Security-Surface-Review exist. |
| 4 | Develop | Automated Test Authoring, Performance Optimisation, Secure Coding | 🟠 High | Open | `Forge-Performance-Optimisation` named in AGENTS.md examples but not in catalogue. |
| 5 | Specify | Scope Definition, Risk Assessment, Glossary Management | 🟡 Medium | Open | Product/Skills categories partially cover. |
| 6 | Design | Technology Evaluation, Scalability and Performance Planning, Risk Assessment | 🟡 Medium | Open | Partially covered by Forge-Solution-Architecture. |
| 7 | Improve | Product Evaluation, Backlog Refinement, Retrospective Facilitation, Metrics Analysis, Roadmap Planning, Continuous Improvement | 🟡 Medium | Open | Forge-Prioritisation and Forge-Technical-Debt-Assessment partially cover. |
| 8 | Cross-phase | Security skills coverage is thin — only `Forge-Security-Surface-Review` exists in `05-Security/` | 🟠 High | Open | Threat Modelling exists in Architecture; Secure Code Review, Dependency Vulnerability Assessment, Secrets Management capabilities absent. |
| 9 | Design (baseline) | Skills invoked by the Codebase Analyst Agent per ADR-007 — Architecture Analysis, Dependency Analysis, Technical Debt Assessment, Migration Assessment, Repository Metrics — are not in the catalogue | 🟠 High | Open | Blocks the existing-codebase adoption path (WI-002, Scenario B / gap G7). Agent exists (ADR-007); its capabilities are aspirational. **Implementation note:** when populating, evaluate open-source codebase graphing/analysis tools as implementations of the ADR-008 Codebase Analysis Capability Contract alongside Graphify — candidates include CodeQL (semantic code graph + queries), Joern (code property graph), Glean (Meta's code indexing system), SCIP (Sourcegraph's indexers), and tree-sitter (AST extraction). Contract discipline applies: any tool is pluggable; none may leak into the Framework layer. |

---

## Recommended Order

1. ~~Populate the **Delivery category** (gaps #1–#2) — unblocks Release and Operate phases.~~ **Done** (WI-003, 2026-09-08).
2. Expand **Quality** (gap #3) — completes the Verify phase.
3. Add **Develop** coding-phase skills (gap #4).
4. Expand **Security** (gap #8).
5. Add **Codebase Analyst Agent skills** (gap #9) — required before the existing-codebase adoption path (WI-002) is fully operational.
6. Product/Improve skills (gaps #5–#7) — lowest urgency.

---

## Status Values

`Open` → `In Progress` → `Completed` → `Verified` → `Closed`

(Aligns with the ForgeOS Work Item lifecycle in **ADR-005**.)
