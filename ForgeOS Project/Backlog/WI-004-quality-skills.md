# Work Item — Quality Skill Category Expansion

## Identification

| Field | Value |
| ----- | ----- |
| Work Item ID | WI-004 |
| Title | Expand the Quality skill category — complete Verify-phase coverage (skill-gaps #3) |
| Work Item Type | Feature |
| Status | Completed / Closed (Quality Gate passed 2026-09-13; PRs #13 `32269df`, #14 `75bd453`) |

## Origin

| Field | Value |
| ----- | ----- |
| Source Platform | GitHub ([issue #1](https://github.com/Nealsch/ForgeOS/issues/1)) |
| External Reference | `ForgeOS Project/Backlog/skill-gaps-backlog.md` gap #3; overlaps issue #5 (skill-graph cluster) |
| Synchronisation Status | N/A |
| Reported By | skill-gaps-backlog (identified during WI-001) |
| Date Imported | 2026-09-13 |

## Description

```text
What needs to be done:
The Quality category (Framework/05-Skills/04-Quality/) currently holds only
Forge-Technical-Debt-Assessment, Forge-Test-Planning and Forge-Test-Strategy.
The Verify phase references capabilities that do not exist, so Verify cannot
route work to real skills.

Missing capabilities (gap #3):
- Test Execution and Reporting
- Defect Management
- Regression Testing
- Performance Testing
- Release Readiness Assessment

Overlap with skill-graph gaps (issue #5) — Quality/Testing cluster, 9 dangling
Forge-* references:
Forge-Test-Design, Forge-Test-Case-Design, Forge-Test-Automation,
Forge-Quality-Assurance, Forge-Quality-Control, Forge-Defect-Management,
Forge-Test-Reporting, Forge-Testing (+ Forge-Test-Strategy consumer list).
Forge-Defect-Management and Forge-Test-Reporting map directly onto gap #3
capabilities; the remainder must be resolved (author, rename, remove, or defer)
in the same pass to avoid widening the graph gap.

Value delivered:
The Verify phase gains full catalogue coverage; the quality standards table in
Framework/02-Standards/05-Security/README.md resolves; the largest skill-graph
gap cluster is closed or explicitly descoped.
```

## Validation

* Sufficient description: **Yes**
* Clear business objective: **Yes** (Verify is the only SDLC phase without primary capability coverage)
* Engineering relevance: **Yes**
* Reproducible: **Yes** (catalogue contents verified 2026-09-13)
* Conflicts identified: **Yes** — overlap with issue #5 cluster; possible redundancy among proposed skill names (see Q2–Q4)
* Duplicate of: None
* Validation outcome: **Imported**

## Engineering Impact

| Field | Value |
| ----- | ----- |
| Technical Risk | Low (additive catalogue content; no existing contracts changed) |
| Implementation Complexity | Medium (4–6 new SKILL.md files depending on consolidation; updates to standards table and cross-references) |
| Security Impact | None direct — security-testing skills belong to gap #8 / issue #3, not this WI |
| Affected Components | `Framework/05-Skills/04-Quality/`, `Framework/02-Standards/05-Security/README.md` (quality standards table), `Forge-Test-Strategy/SKILL.md` consumer list, skill-gaps + skill-graph backlogs |

## Specify Decisions (Product Owner, 2026-09-13)

| # | Decision |
|---|----------|
| Q1 | **One skill per capability.** 5 new SKILL.md files → 8 skills total in Quality. |
| Q2 | **Author where natural, rename the rest.** Forge-Defect-Management authored; Forge-Test-Reporting renamed onto Forge-Test-Execution (per Q1, Reporting is inside Execution); Forge-Test-Design → Forge-Test-Strategy; Forge-Test-Case-Design → Forge-Test-Planning; Forge-Testing / Forge-Quality-Assurance / Forge-Quality-Control covered by category README intro text. Target: zero MISSING in the referential-integrity audit. |
| Q3 | **No QA/QC skills** — resolved by Q2; covered by the Quality category intro. |
| Q4 | **Combined.** A single Forge-Performance-Engineering skill (Verify testing + Develop optimisation) in Quality; gap #4 partially closed. |
| Q5 | **Quality.** Forge-Release-Readiness-Assessment is the Verify→Release gate skill. |

**Agreed new skills:** Forge-Test-Execution · Forge-Defect-Management · Forge-Regression-Testing · Forge-Performance-Engineering · Forge-Release-Readiness-Assessment

## Key Specify Questions

| # | Question |
|---|----------|
| Q1 | Consolidation level: one skill per capability (5 new files), or consolidated (e.g. Forge-Test-Execution covering Test Execution *and* Reporting; Forge-Regression-Testing inside Test Execution)? Catalogue precedent (WI-003 consolidated 19 capabilities into 13 skills) favours consolidation. |
| Q2 | How are the 8 non-mapping dangling refs resolved — author (Forge-Test-Case-Design? Forge-Test-Automation?), rename onto new/existing skills (Forge-Testing → Forge-Test-Strategy?), or defer? Every resolution must leave the referential-integrity audit closer to zero MISSING. |
| Q3 | Forge-Quality-Assurance vs Forge-Quality-Control: author one/both, or treat QA/QC as covered by the category itself? Names suggest overlap with Forge-Test-Strategy's role. |
| Q4 | Performance Testing (gap #3) vs Forge-Performance-Optimisation (gap #4, named in AGENTS.md): one skill spanning both, or separate Verify vs Develop concerns? Placement decision needed before authoring. |
| Q5 | Release Readiness Assessment: Quality category, or Delivery (where WI-003 put Deployment Verification / Operational Readiness)? Boundary decision required. |

## ForgeOS Routing Recommendations

| Field | Value |
| ----- | ----- |
| Recommended Lead Agent | Quality Engineer |
| Supporting Agents | Technical Writer (SKILL.md authoring), Architect (category boundaries), DevOps Engineer (Release Readiness boundary) |
| Required Skills | Forge-Test-Strategy (guides the cluster shape), Forge-Documentation-Generation |
| Applicable Standards | Documentation Standards |
| Required Templates | Existing SKILL.md structure as the in-catalogue pattern |
| Recommended Initial SDLC Phase | Specify (Q1–Q5 need Product Owner decisions before authoring) |

## Priority

| Field | Value |
| ----- | ----- |
| Recommended Priority | High |
| Rationale | Verify is the only SDLC phase lacking primary capability coverage; top item in the skill-gaps recommended order; highest-priority public roadmap issue. |
| Outstanding Decisions | Product Owner approval of WI-004; Q1–Q5 resolved during Specify. |

## Related

* [GitHub issue #1](https://github.com/Nealsch/ForgeOS/issues/1) — public tracking (closed 2026-09-13)
* [GitHub issue #5](https://github.com/Nealsch/ForgeOS/issues/5) — skill-graph cluster overlap (Quality/Testing cluster resolved)
* `ForgeOS Project/Backlog/skill-gaps-backlog.md` gap #3
* `ForgeOS Project/Backlog/skill-graph-gaps-backlog.md` Quality/Testing cluster
* WI-003 — Delivery/Operations population; the consolidation precedent and boundary with Release Readiness (Q5)
* `Framework/05-Skills/04-Quality/` — target category

## Verification Summary — Quality Gate Record (2026-09-13)

Gate criteria adapted from the Verify phase (04-Verify/README.md) for documentation work, following the WI-003 precedent.

| Gate Criterion | Evidence | Result |
| --- | --- | --- |
| Deliverables exist | 5 SKILL.md files + `04-Quality/README.md` merged via PR #13 (`32269df`) | ✅ |
| Standards applied | All 5 skills follow the `Forge-Test-Strategy` pattern: frontmatter, Purpose, Responsibility, When To Use / When Not To Use, Inputs, Principles, Operating Procedure, Outputs, Templates, Interaction With Other Skills, Standards Applied, Success Criteria, ForgeOS Principle | ✅ |
| Structural audit | Frontmatter `skill` name matches folder name (5/5); all required sections present (5/5); all referenced templates exist in `07-Templates/` (incl. `README.md`); line counts 198–207 (no truncation of the two-part-written files) — 0 failures | ✅ |
| Referential integrity | Audit re-run 2026-09-13: 51 authored skills, 59 distinct `Forge-*` refs — **zero MISSING** in the Quality/Testing cluster; remaining MISSING limited to still-Open clusters (#4–#10) plus one lowercase URL false-positive | ✅ |
| Specify decisions honoured | Q1–Q5 implemented as recorded; see mapping note below | ✅ |
| Backlogs reconciled | skill-gaps #3 Closed, #4 partially addressed; skill-graph items #1–#3, #11–#15 Closed (PR #14, `75bd453`) | ✅ |
| Documentation updated | GitHub issue #1 closed with delivery summary; issue #5 annotated with cluster-resolution note | ✅ |

### Q2 Final Rename Mapping (gate note)

The implemented mapping refines the Q2 decision text; outcome is equivalent (zero MISSING) and this record is authoritative:

| Dangling reference | Recorded in Q2 | Implemented (authoritative) |
| --- | --- | --- |
| `Forge-Test-Design` | → Forge-Test-Strategy | → **Forge-Test-Planning** (Acceptance-Criteria context) |
| `Forge-Test-Case-Design` | → Forge-Test-Planning | → Forge-Test-Planning ✅ |
| `Forge-Testing` | category README | → **Forge-Test-Strategy** (API-Design context) |
| `Forge-Quality-Assurance` | category README | → **Forge-Test-Execution** (security standards table) |
| `Forge-Quality-Control` | category README | entry removed (category-level) ✅ |

### Residual Risks / Handoffs

* Gap #4 remains partially open (Automated Test Authoring, Secure Coding) — tracked in issue #2.
* Remaining skill-graph clusters (Security #8–#10, Engineering #4–#6, Product #7) remain Open in issue #5.
