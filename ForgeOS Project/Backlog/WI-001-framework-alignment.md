# Work Item — Framework Documentation Alignment (Decisions 1–13)

## Identification

| Field | Value |
| ----- | ----- |
| Work Item ID | WI-001 |
| Title | Align Framework documentation with Governance, Skills catalogue and session model (13 recorded decisions) |
| Work Item Type | Technical Debt |
| Status | In SDLC — Develop (all 13 decisions implemented 2026-09-07; pending Product Owner Quality Gate review) |

## Origin

| Field | Value |
| ----- | ----- |
| Source Platform | Manual (Product Owner session) |
| External Reference | None |
| Synchronisation Status | N/A |
| Reported By | Product Owner (via Cline codebase audit) |
| Date Imported | 2026-09-07 |

## Description

```text
What needs to be done:
Resolve 12 documentation inconsistencies identified in the Framework audit, plus a
13th decision codifying the engineering session model.

Why it is required:
The Framework contradicts itself on Governance's identity, authority hierarchy,
skill naming, agent naming and gate terminology. Workflow phase documents reference
skills that do not exist. The Product Owner role — the apex of the authority model —
is undefined. Runtime configuration promised by two READMEs is missing.

Value delivered:
Agents and contributors can trust a single, unambiguous source of engineering truth;
session continuity and gates behave deterministically.
```

## Validation

* Sufficient description: **Yes**
* Clear business objective: **Yes**
* Engineering relevance: **Yes**
* Reproducible: **Yes** (contradictions verified by direct document comparison)
* Conflicts identified: **Yes** — these ARE the conflicts
* Duplicate of: None
* Validation outcome: **Accepted**

## Engineering Impact

| Field | Value |
| ----- | ----- |
| Technical Risk | Low (documentation only; no runtime behaviour) |
| Implementation Complexity | Medium (~20 files, 3 new files, cross-references) |
| Security Impact | None |
| Affected Components | AGENTS.md, Framework (Workflow, Governance, Agents, Skills, Prompts, Collaboration Orchestration, Glossary), ForgeOS Project (ADRs, Backlog), .clinerules |

## The 13 Recorded Decisions

| # | Decision |
|---|----------|
| 1 | Governance = uniform lifecycle control model (not project-specific). Fix AGENTS.md, Workflow README, Standards README, Skills README. Project constraints belong to Project Documentation. |
| 2 | Single canonical authority hierarchy: Workflow → Standards → Governance within Framework; Project Rules demoted to Project Documentation layer; AGENTS.md "Standards Hierarchy" replaced. |
| 3 | Technology names banned from Skill examples; AGENTS.md examples corrected to capability names (e.g. Frontend Development, not React Development). |
| 4 | ADR-004 example agents amended in place to match real catalogue (Architect, QA Engineer, Codebase Analyst…), with editorial note. No new ADR. |
| 5 | AGENTS.md structure diagram corrected to post-ADR-006 reality (ForgeOS Project/ annotated incl. Scripts; no root scripts/). |
| 6 | Create `.clinerules/context-loading.md`, `response-format.md`, `tool-preferences.md` — runtime-only adaptations linking to Framework authority. |
| 7 | Create `Framework/11-Collaboration Orchestration/Product-Owner.md` — human counterpart to AI-Program-Manager; Product Owner = business owner, proactively informed of business-impacting issues; notification duty added to AI Program Manager; update reference sites. |
| 8 | Rewrite "Primary Skills" in all 7 workflow phase docs to real Forge-* skills; backlog genuinely missing capabilities. |
| 9 | Mark `06-Prompts/` as intentional placeholder with admission criteria; backlog entry. |
| 10 | Fix Decision-Making.md routing row: selection in Routing phase, based on intake recommendations, after Product Owner approval. |
| 11 | Standardise "Quality Gate" (Exit Criteria + Quality Gate review); update AGENTS.md; Glossary entries for both terms. |
| 12 | Title Case wins for agent folders; fix 04-Agents/README.md example. |
| 13 | Session model codified: session = container, task = workflow owner; gates attach to tasks not sessions; session structure = resume → propose → approve → execute (repeatable); session end = save/commit/push to GitHub + handoff recording in-flight task gate positions. Update Forge-Session-Management/SKILL.md; session-end proactive offer goes into .clinerules/response-format.md. |

## ForgeOS Routing Recommendations

| Field | Value |
| ----- | ----- |
| Recommended Lead Agent | Technical Writer |
| Supporting Agents | Architect (ADR-004 amendment), Security Engineer (none required — docs only, confirm at gate) |
| Required Skills | Forge-Documentation-Generation, Forge-Session-Management (item 13) |
| Applicable Standards | Documentation Standards |
| Required Templates | Work-Item, session-handoff, Architecture-Decision-Record |
| Recommended Initial SDLC Phase | Develop (decisions already made in Specify/Design during grilling session) |

## Priority

| Field | Value |
| ----- | ----- |
| Recommended Priority | High |
| Rationale | Contradictions actively mislead AI agents loading framework context; Product Owner definition is the largest hole in the authority model. |
| Outstanding Decisions | Execution order approval (presented in session). |

## Session-Record Location (gap noted during simulation)

Session handoffs for ForgeOS itself will be recorded under `ForgeOS Project/Sessions/` (to be created at session end), pending Product Owner confirmation.
