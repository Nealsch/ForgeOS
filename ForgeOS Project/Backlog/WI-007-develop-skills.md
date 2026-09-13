# Work Item — Develop-Phase Skills (Gap #4 Remainder: Automated Test Authoring + Secure Coding)

## Identification

| Field | Value |
| ----- | ----- |
| Work Item ID | WI-007 |
| Title | Author the two remaining Develop-phase skills — Forge-Automated-Test-Authoring (04-Quality) and Forge-Secure-Coding (03-Engineering); close skill-gaps #4 / issue #2 |
| Work Item Type | Feature |
| Status | **Completed / Closed** — Quality Gate passed 2026-09-13 (record below) |

## Specify Decisions (Product Owner, 2026-09-13)

| # | Decision |
|---|----------|
| Q1 | **Two new skills.** `Forge-Automated-Test-Authoring` in `04-Quality` (between Test-Planning and Test-Execution); `Forge-Secure-Coding` in `03-Engineering` (Develop-phase security discipline; verification stays with Forge-Security-Review/Testing). |
| Q2 | **Posture A′ — capability + selection criteria + non-normative tool landscape.** Skills define capability and selection criteria; tools named only as marked-illustrative pattern exemplars; language-specific rule sets (e.g. SEI CERT) delegated to Project Documentation; no new Framework standards (existing OWASP set consumed); no changes to `Tooling/` (gap #10 remains the only Tooling-layer tooling work). PO query "isn't this what Tooling is for?" resolved: Tooling owns contracts/profiles for tools *ForgeOS agents invoke*; test/security dev-tooling is used by the project-under-development, so its selection criteria are Skill-level engineering guidance. |
| Q3 | **Scope boundaries approved.** Test-Authoring: translate plans into automated tests — sizes/flavours, hermeticity, meaningful values, property-based/contract/throwaway-environment patterns, mutation-scored quality feedback; does not plan, execute, or regress. Secure-Coding: implement securely against Proactive Controls C1–C10 + Cheat Sheets + ASVS + Top 10; does not review, test, threat-model, or manage secrets lifecycle. |

## Origin

| Field | Value |
| ----- | ----- |
| Source Platform | GitHub ([issue #2](https://github.com/Nealsch/ForgeOS/issues/2)) |
| External Reference | `ForgeOS Project/Backlog/skill-gaps-backlog.md` gap #4 (High) |
| Synchronisation Status | N/A |
| Reported By | skill-gaps-backlog (identified during WI-001) |
| Date Imported | 2026-09-13 |

## Description

```text
What needs to be done:
Gap #4 (Develop phase) after WI-004 covered Performance Optimisation:
- Automated Test Authoring — no skill translates test plans into
  automated tests (Test-Planning decides what; Test-Execution runs).
- Secure Coding — no skill applies the OWASP standards at the
  implementation moment (review/testing skills verify afterwards).

Best-of-breed inputs (researched 2026-09-13):
- Testing: Google test-size/hermeticity/value principles (tech-agnostic),
  property-based testing (Hypothesis/fast-check/jqwik/FsCheck/rapidcheck),
  mutation testing (Stryker/PIT/mutmut), Testcontainers, Pact.
- Secure coding: OWASP Proactive Controls C1-C10 (already a ForgeOS
  standard), Cheat Sheet Series, ASVS; SEI CERT language-specific rule
  sets kept at Project Documentation level (tech-independence).

Out of scope (explicit):
- Performance Optimisation (already Forge-Performance-Engineering, WI-004).
- No new standards in 02-Standards; no Tooling-layer changes.
- 03-Engineering category README (missing) — issue #7 doc-gaps WI.

Value delivered:
Develop phase gains its coding skills; the plan->author->execute quality
chain is complete; AGENTS.md stale example name corrected; gap #4 and
issue #2 close.
```

## Validation

* Sufficient description: **Yes**
* Clear business objective: **Yes** (Develop is the last major phase without its own skills)
* Engineering relevance: **Yes**
* Reproducible: **Yes** (catalogue contents verified 2026-09-13)
* Conflicts identified: **Yes** — boundary with Test-Planning/Test-Execution; boundary with Security-Review/Testing/Secrets-Management; tool-naming tension with technology-independence principle (resolved via Q2 posture A′)
* Duplicate of: None
* Validation outcome: **Imported**

## Engineering Impact

| Field | Value |
| ----- | ----- |
| Affected Phases | Develop (primary), Verify |
| Affected Categories | `05-Skills/03-Engineering/`, `05-Skills/04-Quality/` |
| Standards Touched | `02-Standards/05-Security/README.md` (skills-mapping table extended) |
| Other Docs Touched | `AGENTS.md` (example name corrected), `04-Quality/README.md`, `skill-gaps-backlog.md` |

## Deliverables

* `Framework/05-Skills/04-Quality/Forge-Automated-Test-Authoring/SKILL.md` — 169 lines, Surface-Review pattern
* `Framework/05-Skills/03-Engineering/Forge-Secure-Coding/SKILL.md` — 174 lines, Surface-Review pattern
* `Framework/05-Skills/04-Quality/README.md` — skills table + SDLC-relationship updated
* `Framework/02-Standards/05-Security/README.md` — Forge-Secure-Coding standards-mapping row
* `AGENTS.md` — `Forge-Performance-Optimisation` example corrected to `Forge-Performance-Engineering`
* `ForgeOS Project/Backlog/skill-gaps-backlog.md` — gap #4 Closed

## Verification Summary — Quality Gate Record (2026-09-13)

Gate criteria adapted from the Verify phase for documentation work, per the WI-003/WI-004/WI-006 precedent.

| Gate Criterion | Evidence | Result |
| --- | --- | --- |
| Deliverables exist | 2 SKILL.md files authored as specified | ✅ |
| Standards applied | Both skills follow the Surface-Review pattern: frontmatter, Purpose, Responsibility (+ not-responsible), When To Use / When Not To Use, Inputs, Method, Outputs, Standards Applied, Interaction With Other Skills, Success Criteria; Tooling Boundary + non-normative Tooling Landscape per Q2 posture A′ | ✅ |
| Structural audit | Frontmatter `skill` name matches folder name (56/56 framework-wide); all 10 required sections present (2/2 new); all referenced templates exist in `07-Templates/` subfolders; line counts 169/174 | ✅ |
| Referential integrity | Audit re-run 2026-09-13 (`Scripts/wi006-audit.ps1`): 56 authored skills, 61 distinct `Forge-*` refs — **no new dangling refs**; MISSING unchanged at 4 real refs (`Forge-Authentication`, `Forge-Database-Design`, `Forge-Deployment-Management`, `Forge-Project-Steward`) + known `forge-sitesmiths` false positive | ✅ |
| Specify decisions honoured | Q1: two skills in the approved categories; Q2: posture A′ implemented (illustrative-only tool names, language rules → Project Documentation, no new standards, no Tooling/ changes); Q3: scope boundaries as approved (not-responsible lists match) | ✅ |
| Backlogs reconciled | skill-gaps #4 Closed with WI-007 note; `Forge-Performance-Optimisation` AGENTS.md stale example corrected (the last item named in gap #4's original notes) | ✅ |
| Documentation updated | GitHub issue #2 resolves on merge (`Closes #2`); standards mapping table extended | ✅ |

### Residual Risks / Handoffs

* `03-Engineering` has no category README — add to the issue #7 doc-gaps WI (same gap exists for `02-Architecture`).
* Tooling Landscape sections mention tool families that will become stale over time; review at framework release checkpoints (non-normative by design, so staleness is low-risk).
* Remaining catalogue gaps: Engineering cluster (`Forge-Authentication`, `Forge-Database-Design`, `Forge-Deployment-Management`), Product cluster (`Forge-Project-Steward`), and product/improve skills (gaps #5–#7, issue #6); issue #7 doc gaps; gap #10 tooling evaluation; WI-005 blocked on diagram source.

## References

* [GitHub issue #2](https://github.com/Nealsch/ForgeOS/issues/2) — public tracking
* `ForgeOS Project/Backlog/skill-gaps-backlog.md` gap #4
* WI-004 — precedent: Performance Optimisation consolidation
* WI-006 — precedent: Surface-Review skill pattern, reusable audit script, tooling-boundary discipline
* `Framework/02-Standards/05-Security/README.md` — OWASP standards consumed by Forge-Secure-Coding
* `Tooling/03-Capabilities/Codebase-Analysis-Capability.md` (ADR-008) — the boundary discipline mirrored by both skills