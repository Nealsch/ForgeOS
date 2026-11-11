# WI-010 — ADR-008 Tooling Evaluation (skill-gaps #10)

| Field | Value |
| --- | --- |
| Work Item | WI-010 |
| Origin | skill-gaps backlog #10 — evaluate open-source code-analysis tooling (CodeQL, Joern, Glean, SCIP, tree-sitter) as pluggable implementations of the ADR-008 Codebase Analysis Capability Contract alongside Graphify; document in Tooling without Framework leakage. Split from gap #9 on 2026-09-13. |
| Phase | Develop (Specify completed in-session with PO approval) |
| Status | Completed — merged (PR #23) |
| Date | 2026-11-11 |

---

## Specify Decisions

| Q | Decision |
| --- | --- |
| Q1 | Placement: evaluation authored at `Tooling/03-Capabilities/Codebase-Analysis-Tooling-Evaluation.md`, alongside the capability contract it evaluates (ADR-008 artefact pattern; no new Tooling subfolder). Cross-linked from the contract's Tooling Profiles section and `03-Capabilities/README.md`. |
| Q2 | Posture: **evaluation-only** — contract-fit matrix, per-tool findings, dispositions, re-evaluation triggers, adoption path. Graphify remains the sole preferred implementation; Joern recorded as future candidate with profile deliberately not authored; SCIP recorded as potential upstream input format; CodeQL excluded (proprietary license restricting private-code analysis + purpose mismatch); Glean not suitable (org-scale fact store); tree-sitter already absorbed inside Graphify. No Framework changes; no new tool profiles. |
| Q3 | Recording: this WI record; skill-gaps backlog #10 → Closed (all catalogue gaps now closed); WI-009 status reconciled to merged (PR #22). |

---

## Deliverables

| Deliverable | Location | Type |
| --- | --- | --- |
| Tooling evaluation | `Tooling/03-Capabilities/Codebase-Analysis-Tooling-Evaluation.md` | new (165 lines) |
| Contract cross-link | `Tooling/03-Capabilities/Codebase-Analysis-Capability.md` | edited (Tooling Profiles + Related Documents) |
| Capabilities README cross-link | `Tooling/03-Capabilities/README.md` | edited (Related Documents) |
| Backlog reconciliation | `ForgeOS Project/Backlog/skill-gaps-backlog.md` | edited (#10 → Closed; Recommended Order items 3–5 struck as done) |
| WI-009 status reconciliation | `ForgeOS Project/Backlog/WI-009-issue6-skills.md` | edited (status → merged, PR #22) |

---

## Verification

| Check | Result |
| --- | --- |
| Referential-integrity audit (`Scripts/wi006-audit.ps1`) | 66 authored skills, 67 distinct refs; only the known `forge-sitesmiths` lowercase false positive; **zero real MISSING refs** | ✅ |
| Structural checks (Security category; frontmatter-vs-folder, all categories) | all clean | ✅ |
| New evaluation document | 165 lines; no leftover authoring markers; cross-links resolve; no `Forge-*` tokens introduced in Tooling | ✅ |
| Framework-layer leakage check | No tool names added to Framework; evaluation lives in Tooling only | ✅ |

---

## Residual Notes

* Re-evaluation triggers recorded in the evaluation document (Graphify risk, Joern adapter, new native implementations, SCIP maturity).
* WI-005 (diagram refresh) remains blocked on diagram source — the only open work item.
* Issue #5 (dangling refs) can be closed if still open — zero real MISSING refs confirmed.

---

## References

* `ForgeOS Project/ADRs/ADR-008.md` — the capability contract ADR
* `Tooling/03-Capabilities/Codebase-Analysis-Capability.md` — the normative contract
* `Tooling/01-Platforms/Graphify/README.md` — the incumbent implementation profile
* `ForgeOS Project/Backlog/skill-gaps-backlog.md` — gap #10