Process the ---
purpose: Capture a single unit of engineering work with the ForgeOS engineering metadata required for prioritisation, approval and entry into the Software Development Lifecycle.
when_used: When an imported request has been validated by Work Item Management and is ready to be enriched into a ForgeOS Work Item for the local engineering backlog.
produced_by: Work Item Management (Collaboration Orchestration capability)
consumed_by:
  - Forge-Prioritisation
  - Forge-Task-Routing
  - Forge-Context-Loading
  - Product Owner approval
  - Specialist ForgeOS Agents
category: 01-Product
template_type: primary
---

# Work Item

## Purpose

Capture a single, validated unit of engineering work together with the engineering metadata required to prioritise it, approve it and route it into the ForgeOS Software Development Lifecycle (SDLC).

A Work Item is the fundamental unit of engineering work within ForgeOS and is platform-independent. This template implements the enrichment model defined in `Framework/11-Collaboration Orchestration/Work-Item-Management.md` and **ADR-005**.

## When Used

Use this template after an imported request has passed Work Item Management validation and is being enriched for the local engineering backlog. A Work Item must be completed and approved before it enters the SDLC.

## Produced By

Work Item Management, a capability of Collaboration Orchestration.

## Consumed By

* Product Owner — reviews and approves priority and implementation order
* Forge-Prioritisation — ranks the Work Item against other candidates
* Forge-Task-Routing — routes the approved Work Item to the correct SDLC phase
* Forge-Context-Loading — loads context once the Work Item enters execution
* Specialist ForgeOS Agents — perform the engineering work after approval

## Template

### Identification

| Field | Value |
| ----- | ----- |
| Work Item ID | _Unique local identifier_ |
| Title | _Concise summary of the work_ |
| Work Item Type | _Feature / Enhancement / Bug / Technical Debt / Security Finding / Documentation / Maintenance / Infrastructure / Refactoring / Research-Spike / Performance / Compliance / Other_ |
| Status | _Imported / Validated / Enriched / Prioritised / Approved / In SDLC / Completed / Synchronised / Closed_ |

### Origin

| Field | Value |
| ----- | ----- |
| Source Platform | _GitHub / Jira / Azure DevOps / GitLab / Linear / Trello / Manual / Other_ |
| External Reference | _Native ID or URL on the originating platform_ |
| Synchronisation Status | _Pending / Synchronised / Closed Externally_ |
| Reported By | _Original requester (where available)_ |
| Date Imported | _ISO-8601 date_ |

### Description

State what needs to be done, why it is required, and the value it delivers. Include reproducibility details where applicable (for example, for bugs).

```text
What needs to be done:
Why it is required:
Value delivered:
Reproduction steps (if applicable):
```

### Validation

Record the outcome of Work Item Management validation before enrichment proceeds.

* Sufficient description: _Yes / No_
* Clear business objective: _Yes / No_
* Engineering relevance: _Yes / No_
* Reproducible (where applicable): _Yes / No / N/A_
* Conflicts identified: _Yes / No_
* Duplicate of: _Existing Work Item ID, or None_
* Validation outcome: _Accepted / Returned for clarification_

### Business Impact

| Field | Value |
| ----- | ----- |
| Business Value | _Low / Medium / High_ |
| User Impact | _Low / Medium / High_ |
| Customer Impact | _Low / Medium / High_ |
| Strategic Alignment | _Which objective, theme or roadmap item this supports_ |

### Engineering Impact

| Field | Value |
| ----- | ----- |
| Technical Risk | _Low / Medium / High_ |
| Implementation Complexity | _Low / Medium / High_ |
| Security Impact | _None / Low / Medium / High / Critical_ |
| Performance Impact | _None / Low / Medium / High_ |
| Compliance Impact | _None / Low / Medium / High_ |
| Affected Components | _Components, modules or services impacted_ |

### Relationships

List related Work Items and the nature of each relationship.

| Related Work Item | Relationship |
| ----------------- | ------------ |
| _Work Item ID_ | _Parent / Child / Depends On / Blocks / Blocked By / Relates To / Duplicate Of / Supersedes_ |

### Dependencies

Capture external dependencies or prerequisites that must be satisfied before this Work Item can enter the SDLC.

### ForgeOS Routing Recommendations

These fields are **recommendations** produced during enrichment. Actual Agent, Skill, Standard and Template selection is performed by Collaboration Orchestration once the Work Item is approved (see `Agent-Selection.md`, `Context-Loading.md`, `Standards-Loading.md`, `Template-Selection.md`).

| Field | Value |
| ----- | ----- |
| Recommended Lead Agent | _Architect / Backend Engineer / Frontend Engineer / QA Engineer / Security Engineer / DevOps Engineer / Technical Writer / Product Manager / Other_ |
| Supporting Agents | _Additional roles likely to be required_ |
| Required Skills | _Likely ForgeOS Skills, e.g. Forge-Backend-Development, Forge-Test-Strategy_ |
| Applicable Standards | _Relevant ForgeOS Standards categories_ |
| Required Templates | _Likely output templates, e.g. API Specification, Test Plan_ |
| Recommended Initial SDLC Phase | _Specify / Design / Develop / Verify / Release / Operate / Improve_ |

### Priority

Capture the recommended priority produced by Forge-Prioritisation. The Product Owner retains final authority.

| Field | Value |
| ----- | ----- |
| Recommended Priority | _Priority rank or score relative to other Work Items_ |
| Recommended Sequence | _Where this Work Item sits in the proposed implementation order_ |
| Rationale | _Business value, user impact, security impact, technical risk, dependencies, complexity, strategic importance_ |
| Outstanding Decisions | _Any prioritisation decisions requiring Product Owner input_ |

### Approval

Product Owner approval is the gate between Work Item Management (pre-SDLC) and engineering execution.

| Field | Value |
| ----- | ----- |
| Presented to Product Owner | _Date_ |
| Approved for SDLC | _Yes / No / Deferred_ |
| Approved Priority | _Final priority assigned by the Product Owner_ |
| Approved By | _Product Owner_ |
| Approval Date | _ISO-8601 date_ |
| Entered SDLC | _Date the Work Item entered the Workflow_ |

## Completion Criteria

* The Work Item has a unique local ID and clear title.
* Validation has been completed and the outcome recorded.
* Origin and external reference are captured for traceability.
* Business, engineering and ForgeOS routing metadata have been enriched.
* Relationships and dependencies are identified.
* A recommended priority and rationale have been recorded via Forge-Prioritisation.
* The Product Owner has approved (or deferred) the Work Item and its priority.
* The approval decision and SDLC entry date are recorded.