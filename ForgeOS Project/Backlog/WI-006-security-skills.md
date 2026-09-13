# Work Item — Security Skill Cluster (Gap #8 + Dangling Refs #8–#10)

## Identification

| Field | Value |
| ----- | ----- |
| Work Item ID | WI-006 |
| Title | Expand the Security skill category — Secure Code Review, Dependency Vulnerability Assessment, Secrets Management; resolve dangling Security refs (skill-gaps #8, skill-graph #8–#10) |
| Work Item Type | Feature |
| Status | **Completed / Closed** — Quality Gate passed 2026-09-13 (record below) |

## Specify Decisions (Product Owner, 2026-09-13)

| # | Decision |
|---|----------|
| Q1 | **Author two, rename one.** Author `Forge-Security-Review` and `Forge-Security-Testing`; rename `Forge-Security-Assessment` → `Forge-Security-Surface-Review` (Data-Modelling context). Category becomes 4 skills incl. Surface Review. |
| Q2 | **Consolidate review-shaped work.** `Forge-Security-Review` covers Secure Code Review + Dependency Vulnerability Assessment; `Forge-Secrets-Management` separate (operational, cross-phase). 2 new skills total. |
| Q3 | **Category README** with boundary definitions and deference rules (WI-004 QA/QC pattern). |
| Q4 | **Scope guards confirmed.** Secure Coding stays in gap #4 / issue #2 (README pointer added); `Forge-Authentication` stays with the Engineering cluster; no new security standards. |

## Origin

| Field | Value |
| ----- | ----- |
| Source Platform | GitHub ([issue #3](https://github.com/Nealsch/ForgeOS/issues/3)) |
| External Reference | `ForgeOS Project/Backlog/skill-gaps-backlog.md` gap #8; overlaps [issue #5](https://github.com/Nealsch/ForgeOS/issues/5) rows #8–#10 (Security cluster) |
| Synchronisation Status | N/A |
| Reported By | skill-gaps-backlog (identified during WI-001) |
| Date Imported | 2026-09-13 |

## Description

```text
What needs to be done:
The Security skill category (Framework/05-Skills/05-Security/) holds only
Forge-Security-Surface-Review. Security coverage is thin across the SDLC.

Missing capabilities (gap #8):
- Secure Code Review
- Dependency Vulnerability Assessment
- Secrets Management

Dangling references (skill-graph #8-#10, issue #5 Security cluster):
- Forge-Security-Assessment  <- Forge-Data-Modelling/SKILL.md:349
- Forge-Security-Review      <- Forge-Threat-Modelling/SKILL.md:367
- Forge-Security-Testing     <- Forge-Threat-Modelling/SKILL.md:373
All three carry overlap-risk warnings against Forge-Security-Surface-Review
and Forge-Threat-Modelling; audit notes "clarify boundary before authoring".

Out of scope (explicit):
- Secure Coding (Develop phase) belongs to gap #4 / issue #2.
- Forge-Authentication (skill-graph #4, Engineering/Security boundary)
  stays with the Engineering cluster decision.
- OWASP security standards already exist in 02-Standards/05-Security/ and
  are consumed by skills — no new standards in this WI.

Value delivered:
Security stops being the thinnest category; the security-standards mapping
table in 02-Standards/05-Security/README.md gains rows for the new skills;
the issue #5 Security cluster closes.
```

## Validation

* Sufficient description: **Yes**
* Clear business objective: **Yes** (Security is the highest-priority remaining category per the recommended order)
* Engineering relevance: **Yes**
* Reproducible: **Yes** (catalogue contents verified 2026-09-13)
* Conflicts identified: **Yes** — heavy overlap risk among the three dangling names and Forge-Security-Surface-Review; Secure Coding boundary with gap #4
* Duplicate of: None
* Validation outcome: **Imported**

## Engineering Impact

| Field | Value |
| ----- | ----- |
| Technical Risk | Low (additive catalogue content) |
| Implementation Complexity | Medium (2–5 new SKILL.md files depending on consolidation; rename vs author decisions on 3 dangling refs; standards-table rows; category README) |
| Security Impact | Positive — closes the largest security-coverage gap |
| Affected Components | `Framework/05-Skills/05-Security/`, `Framework/02-Standards/05-Security/README.md` (skills→standards table), `Forge-Data-Modelling/SKILL.md`, `Forge-Threat-Modelling/SKILL.md`, skill-gaps + skill-graph backlogs |

## Key Specify Questions

| # | Question |
|---|----------|
| Q1 | Dangling-three resolution: author `Forge-Security-Assessment`, `Forge-Security-Review`, `Forge-Security-Testing` as real skills, or rename the references onto `Forge-Security-Surface-Review` / `Forge-Threat-Modelling` / a new skill? (WI-004 precedent: rename where intent is covered, author where natural.) |
| Q2 | Gap #8 consolidation: one `Forge-Security-Review` covering Secure Code Review + Dependency Vulnerability Assessment (review-shaped work), with `Forge-Secrets-Management` separate? Or three distinct skills? |
| Q3 | Category README: define Security Review vs Security Testing vs Surface Review boundaries in a category-level intro (WI-004 QA/QC pattern), instead of separate skills? |
| Q4 | Scope guard: confirm Secure Coding stays out (gap #4 / issue #2) and Forge-Authentication stays with the Engineering cluster. |

## ForgeOS Routing Recommendations

| Field | Value |
| ----- | ----- |
| Recommended Lead Agent | Security Engineer |
| Supporting Agents | Technical Writer (SKILL.md authoring), Architect (category boundaries), Backend Engineer (dependency/secrets mechanics) |
| Required Skills | Forge-Security-Surface-Review (existing pattern), Forge-Documentation-Generation |
| Applicable Standards | Security Standards (OWASP ASVS, WSTG, Proactive Controls, Cheat Sheets, Top 10) |
| Required Templates | Existing SKILL.md structure (Forge-Test-Strategy pattern, as used in WI-003/WI-004) |
| Recommended Initial SDLC Phase | Specify (Q1–Q4 need Product Owner decisions before authoring) |

## Priority

| Field | Value |
| ----- | ----- |
| Recommended Priority | High |
| Rationale | Top remaining item in the skill-gaps recommended order; Security is referenced from the standards mapping table (implies standards obligations the current catalogue cannot route). |
| Outstanding Decisions | Product Owner approval of WI-006; Q1–Q4 to resolve during Specify. |

## Related

* [GitHub issue #3](https://github.com/Nealsch/ForgeOS/issues/3) — public tracking
* [GitHub issue #5](https://github.com/Nealsch/ForgeOS/issues/5) — rows #8–#10 (Security cluster)
* `ForgeOS Project/Backlog/skill-gaps-backlog.md` gap #8
* WI-004 — precedent for rename-vs-author pattern and category README (QA/QC)
* `Framework/02-Standards/05-Security/README.md` — security standards hierarchy
* Framework/05-Skills/05-Security/ — target category
* Framework/02-Standards/05-Security/README.md — security-standards mapping table (extended)
* Framework/05-Skills/02-Architecture/Forge-Data-Modelling/SKILL.md — dangling ref renamed
* ForgeOS Project/Scripts/wi006-audit.ps1 — reusable audit script (frontmatter/folder check, section check, template existence, referential integrity)

## Verification Summary — Quality Gate Record (2026-09-13)

Gate criteria adapted from the Verify phase (04-Verify/README.md) for documentation work, per the WI-003/WI-004 precedent.

| Gate Criterion | Evidence | Result |
| --- | --- | --- |
| Deliverables exist | 3 SKILL.md files (Forge-Security-Review, Forge-Security-Testing, Forge-Secrets-Management) + rewritten `05-Security/README.md` merged via PR #17 (`312a68a`) | ✅ |
| Standards applied | All 3 skills follow the `Forge-Security-Surface-Review` pattern: frontmatter, Purpose, Responsibility (+ not-responsible), When To Use / When Not To Use, Inputs, Method, Outputs, Standards Applied, Interaction With Other Skills, Success Criteria; OWASP standards mapped per skill; Tooling boundary respected (Secrets-Management policy-only) | ✅ |
| Structural audit | Frontmatter `skill` name matches folder name (54/54 framework-wide); all 10 required sections present (3/3 new + 1/1 existing); all referenced templates exist in `07-Templates/` subfolders; line counts 129–136 | ✅ |
| Referential integrity | Audit re-run 2026-09-13 (`Scripts/wi006-audit.ps1`): 54 authored skills, 60 distinct `Forge-*` refs — **zero MISSING in the Security cluster**. Remaining MISSING limited to Engineering/Product clusters (#4–#7) plus two false positives: `forge-sitesmiths` (lowercase URL) and `Forge-Test` (regex backtracking artifact from a trailing underscore in `Work-Item-template.md:123`, fixed in PR #18) | ✅ |
| Specify decisions honoured | Q1: 2 authored + 1 rename implemented as recorded; Q2: Security-Review consolidates code review + dependency assessment, Secrets-Management separate; Q3: category README with boundary/deference tables; Q4: Secure Coding deferred with README pointer, Forge-Authentication untouched, no new standards | ✅ |
| Backlogs reconciled | skill-gaps #8 Closed; skill-graph rows #8–#10 Closed with per-item notes; Security cluster summary line updated (PR #17) | ✅ |
| Documentation updated | GitHub issue #3 closed automatically by PR #17 ("Closes #3"); issue #5 Security cluster rows resolved (title staleness — "15 dangling" — noted as follow-up) | ✅ |

### Rename Mapping (as implemented)

| Dangling reference | Resolution |
| --- | --- |
| `Forge-Security-Assessment` | → **Forge-Security-Surface-Review** (rename; Data-Modelling context) |
| `Forge-Security-Review` | → **authored** at `05-Skills/05-Security/Forge-Security-Review/SKILL.md` |
| `Forge-Security-Testing` | → **authored** at `05-Skills/05-Security/Forge-Security-Testing/SKILL.md` |

### Residual Risks / Handoffs

* Dangling count now **4** real refs (Engineering `Forge-Authentication`, `Forge-Database-Design`, `Forge-Deployment-Management`; Product `Forge-Project-Steward`) — issue #5 title should be updated from "15" to 4.
* Secure Coding remains deferred to gap #4 / issue #2 (README pointer documents the interim boundary).
* `Forge-Authentication` boundary decision owned by the future Engineering cluster WI.