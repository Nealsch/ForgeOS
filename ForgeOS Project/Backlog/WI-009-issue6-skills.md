# WI-009 — Issue #6 Skill Gaps: Product/Improve Skills + Dangling-Ref Clusters

| Field | Value |
| --- | --- |
| Work Item | WI-009 |
| Origin | [issue #6](https://github.com/Nealsch/ForgeOS/issues/6) — skill-gaps #5–#7; plus skill-graph gaps #4–#7 (4 dangling refs) per handoff queue |
| Phase | Develop (Specify completed in-session with PO approval) |
| Status | Completed — pending PR review |
| Date | 2026-09-15 |

---

## Specify Decisions

| Q | Decision |
| --- | --- |
| Q1 | Dispositions approved by PO as proposed: **author 10 skills, amend 2 refs, pointer 3 capabilities**. Gaps #5: author Scope-Definition, Risk-Assessment (shared with #6), Glossary-Management (01-Product). Gap #6: author Technology-Evaluation (02-Architecture); Scalability & Performance Planning = pointer to Forge-Performance-Engineering + Forge-Solution-Architecture. Gap #7: author Product-Evaluation, Backlog-Refinement, Retrospective-Facilitation, Roadmap-Planning; Metrics Analysis = pointer to Forge-Repository-Metrics; Continuous Improvement = pointer (Technical-Debt-Assessment + Prioritisation + Retrospectives). |
| Q2 | Cluster decisions: Forge-Authentication authored in 03-Engineering (WI-006 Q4 precedent); Forge-Database-Design → ref renamed to Forge-Database-Implementation (boundary already owned by Data-Modelling + Database-Implementation); Forge-Deployment-Management → ref renamed to Forge-Release-Management (06-Delivery owns it); Forge-Project-Steward authored in 08-AI Assisted Engineering. |

---

## Deliverables

**10 new skills** (Surface-Review pattern: frontmatter, 10 required sections; posture A′ Tooling Landscape/Boundary where tool tension exists):

| Skill | Category | Phase |
| --- | --- | --- |
| Forge-Scope-Definition | 01-Product | Specify |
| Forge-Risk-Assessment | 01-Product | Specify + Design |
| Forge-Glossary-Management | 01-Product | Specify |
| Forge-Roadmap-Planning | 01-Product | Improve |
| Forge-Product-Evaluation | 01-Product | Improve |
| Forge-Backlog-Refinement | 01-Product | Improve |
| Forge-Retrospective-Facilitation | 01-Product | Improve |
| Forge-Technology-Evaluation | 02-Architecture | Design |
| Forge-Authentication | 03-Engineering | Develop |
| Forge-Project-Steward | 08-AI Assisted Engineering | Cross-phase |

**Ref amendments:** Forge-Data-Modelling relationship → `Forge-Database-Implementation`; Forge-Integration-Design relationship → `Forge-Release-Management`; AGENTS.md skill example `Forge-Database-Design` → `Forge-Data-Modelling`.

**README updates:** 01-Product (+7 rows, SDLC relationship updated), 02-Architecture (+1), 03-Engineering (+1), 08-AI Assisted Engineering (+Project-Steward section).

**Backlogs reconciled:** skill-gaps #5–#7 Closed with WI-009 notes; skill-graph #4–#7 Closed; both Recommended Order sections updated.

---

## Verification

| Check | Result |
| --- | --- |
| Structural audit (10/10 new skills) | frontmatter matches folder; all 10 sections present; all templates exist in `07-Templates/`; lines 122–144 | ✅ |
| Referential integrity | Audit re-run 2026-09-15: **66 authored skills, 67 distinct refs — zero real MISSING**; only known `forge-sitesmiths` false positive remains. All 4 dangling refs resolved. | ✅ |
| False-ref hygiene | Two incidental audit-regex matches in new prose (`Forge-Deployment-adjacent`, `Forge-Requirements-*`) found and reworded. | ✅ |
| Category READMEs | All new skills listed with links verified. | ✅ |

---

## Residual Notes

* Skill-graph backlog "Total" row remains historical (15 undefined at origin); per-cluster rows now show 0 remaining.
* Dangling-ref count framework-wide is now zero — issue #5 can be closed if still open.
* Remaining catalogue work: gap #10 (ADR-008 tooling evaluation) only.
* WI-005 (diagram refresh) still blocked on diagram source.

## References

* `ForgeOS Project/Backlog/skill-gaps-backlog.md` (gaps #5–#7)
* `ForgeOS Project/Backlog/skill-graph-gaps-backlog.md` (items #4–#7)
* `ForgeOS Project/Backlog/WI-006-security-skills.md` (Authentication category precedent, Q4)
* `Framework/05-Skills/03-Engineering/Forge-Secure-Coding/SKILL.md` (authoring pattern)
