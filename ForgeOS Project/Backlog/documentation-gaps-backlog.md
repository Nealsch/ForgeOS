# Documentation Gaps Backlog

## Purpose

Tracks missing and empty describing documents (READMEs and markdown files) identified during the codebase documentation audit.

This backlog is a living document. Update the **Status** column as items are picked up and completed. Items follow the ForgeOS Work Item lifecycle (Imported → Validated → Enriched → Prioritised → Approved → In SDLC → Completed → Synchronised → Closed) per **ADR-005**.

---

## Priority Legend

| Priority | Meaning |
| --- | --- |
| 🔴 Critical | Breaks framework navigation or standards-loading. |
| 🟠 High | Blocks a layer from being usable. |
| 🟡 Medium | Placeholder that misleads readers; needs content or a clear pointer. |
| 🟢 Low | Optional template-quality improvement. |
| 📁 Folder | Directory is empty and needs at least a README or `.gitkeep`. |

---

## 🔴 Critical — Framework Describing Documents

| # | Path | Status | Notes |
| --- | --- | --- | --- |
| 1 | `Framework/03-Governance/README.md` | ✅ Completed | Authored — governance scope (one model, applied to ForgeOS + projects), design principles, authority. |
| 2 | `Framework/03-Governance/change-management.md` | ✅ Completed | Authored — change lifecycle, classification, approval authority matrix. |
| 3 | `Framework/03-Governance/compatibility.md` | ✅ Completed | Authored — compatibility tiers, breaking-change definition, deprecation policy, framework-specific commitments. |
| 4 | `Framework/03-Governance/release-process.md` | ✅ Completed | Authored — release gates, 9-step workflow, emergency releases. Release workflow also removed from `Version/README.md` to eliminate duplication. |
| 5 | `Framework/06-Prompts/README.md` | ✅ Completed | Authored — prompts as Skill-supporting assets, belongs/does-not-belong, design principles. |
| 6 | `Framework/08-Examples/README.md` | ✅ Completed | Authored — examples as illustration (not standards), authority/conflict resolution. |
| 7 | `Framework/09-Onboarding/README.md` | ✅ Completed | Authored — role-based reading paths (developer / AI agent / Product Owner), recommended folder structure. |
| 8 | `Framework/10-Assets/README.md` | ✅ Completed | Authored — folder structure (Branding/Diagrams/Icons), conventions, authority. |
| 9 | `Framework/11-Collaboration Orchestration/Decision-Making.md` | ✅ Completed | Authored — "AI proposes, Product Owner disposes", decision class matrix, lifecycle, escalation. |
| 10 | `Framework/11-Collaboration Orchestration/Standards-Loading.md` | ✅ Completed | Authored — specialist mechanism for Context-Loading steps 5–6, catalogue, loading procedure, conflict resolution. |

---

## 🟠 High — Tooling Describing Documents

### Adapters

| # | Path | Status | Notes |
| --- | --- | --- | --- |
| 11 | `Tooling/02-Adapters/README.md` | ✅ Completed | Authored — adapters = "how" vs platforms = "who"; four adapter types; selection logic; boundary; principles. |
| 12 | `Tooling/02-Adapters/Function Calling/README.md` | ✅ Completed | Authored — model-invoked named functions; what ForgeOS surfaces; boundary; relationship to other adapters. |
| 13 | `Tooling/02-Adapters/MCP/README.md` | ✅ Completed | Authored — Model Context Protocol; tools/resources/prompts surfaces; why it matters for platform independence; MCP-vs-Function Calling. |
| 14 | `Tooling/02-Adapters/Prompt Based/README.md` | ✅ Completed | Authored — universal fallback; behavioural guidance; authority; coexistence with richer adapters. |
| 15 | `Tooling/02-Adapters/Slash Commands/README.md` | ✅ Completed | Authored — named entry points mapping to skills/templates/workflows; boundary; relationship to other adapters. |

### Capabilities

| # | Path | Status | Notes |
| --- | --- | --- | --- |
| 16 | `Tooling/03-Capabilities/README.md` | ✅ Completed | Authored — platform capability matrix (status, FC/MCP/Prompt/Slash, Plan-Act, AI-PM host) and ForgeOS capability matrix; maintenance policy. Updated for **ADR-008** — added Codebase Analysis capability row and Graphify external-tool row. |

### AI Platform Profiles

| # | Path | Status | Notes |
| --- | --- | --- | --- |
| 17 | `Tooling/01-Platforms/Cline/README.md` | ✅ Completed | Authored — reference active AI-PM profile: AI-PM role mapping, runtime config (`.clinerules`), Plan/Act, skills, Work Item integration. |
| 18 | `Tooling/01-Platforms/Claude Code/README.md` | ✅ Completed | Authored — stub profile with expansion checklist for when adopted. |
| 19 | `Tooling/01-Platforms/Codex/README.md` | ✅ Completed | Authored — stub profile with expansion checklist for when adopted. |
| 20 | `Tooling/01-Platforms/Cursor/README.md` | ✅ Completed | Authored — stub profile with expansion checklist for when adopted. |
| 21 | `Tooling/01-Platforms/Gemini CLI/README.md` | ✅ Completed | Authored — stub profile with expansion checklist for when adopted. |
| 22 | `Tooling/01-Platforms/Roo/README.md` | ❌ Removed | Roo platform discontinued — profile deleted. Maintenance policy (remove discontinued platforms, not retain as stubs) added to `01-Platforms/README.md`. |
| 23 | `Tooling/01-Platforms/VS Code Agent/README.md` | ✅ Completed | Authored — active complementary AI-PM profile; relationship to Cline; runtime config; Work Item integration. |
| 23a | `Tooling/01-Platforms/Graphify/README.md` | ✅ Completed | **ADR-008** — Graphify platform profile: concrete implementation of the Codebase Analysis Capability. Graphify-specific couplings (Claude Code skill, Claude vision) contained here only; never referenced by the Framework. |
| 23b | `Tooling/03-Capabilities/Codebase-Analysis-Capability.md` | ✅ Completed | **ADR-008** — platform-neutral Codebase Analysis Capability Contract (inputs, outputs, confidence labels, quality signals, integration surface, freshness). The boundary between Framework (engineering outcome) and tooling (analysis mechanics). |

### Top-Level

| # | Path | Status | Notes |
| --- | --- | --- | --- |
| 24 | `Scripts/README.md` | ✅ Completed | Relocated to `ForgeOS Project/Scripts/README.md` per **ADR-006**. Authored — repository automation scripts; scope; boundaries; why scripts live under the Project, not at repo root. |
| 24a | `ForgeOS Project/ADRs/ADR-008.md` | ✅ Completed | **ADR-008** — Codebase Analysis Tooling Capability & Graphify Integration Contract. Closes ADR-007 by introducing the platform-neutral capability contract and Graphify profile. |
| 24b | `Framework/04-Agents/Codebase Analyst/README.md` | ✅ Completed | **ADR-007** — Codebase Analyst Agent definition. Consumes the Codebase Analysis Capability; produces Architecture Assessments; never approves Work Items. |
| 24c | `Framework/05-Skills/02-Architecture/Forge-Architecture-Analysis/SKILL.md` | ✅ Completed | **ADR-007/008** — Skill interpreting structural signals from a knowledge graph. |
| 24d | `Framework/05-Skills/03-Engineering/Forge-Dependency-Analysis/SKILL.md` | ✅ Completed | **ADR-007/008** — Skill interpreting dependency signals (internal + external + critical path). |
| 24e | `Framework/05-Skills/04-Quality/Forge-Technical-Debt-Assessment/SKILL.md` | ✅ Completed | **ADR-007/008** — Skill quantifying and prioritising technical debt. |
| 24f | `Framework/05-Skills/02-Architecture/Forge-Migration-Assessment/SKILL.md` | ✅ Completed | **ADR-007/008** — Skill scoping migrations from blast radius and dependency risk. |
| 24g | `Framework/05-Skills/03-Engineering/Forge-Repository-Metrics/SKILL.md` | ✅ Completed | **ADR-007/008** — Skill reporting quantitative repository health metrics. |
| 24h | `Framework/05-Skills/05-Security/Forge-Security-Surface-Review/SKILL.md` | ✅ Completed | **ADR-007/008** — Skill producing a preliminary security surface (feeds Forge-Threat-Modelling). |
| 24i | `Framework/05-Skills/07-Documentation and Knowledge/Forge-Documentation-Generation/SKILL.md` | ✅ Completed | **ADR-007/008** — Skill generating draft documentation and glossary candidates. |
| 24j | `Framework/07-Templates/02-Architecture/Architecture-Assessment-template.md` | ✅ Completed | **ADR-007/008** — Architecture Assessment template (current-state, confidence-labelled, traceable). |

---

## 🟡 Medium — Security Standards Placeholders

> **Decision (resolved):** Adopted **Option A — ForgeOS application guide**. OWASP sets the goal; ForgeOS documents make it practically implementable across secure-by-design architecture, secure development, secure testing, and software supply chain risk management. OWASP content is not reproduced (license/attribution respected); canonical sources are linked.

| # | Path | Status | Notes |
| --- | --- | --- | --- |
| 25 | `Framework/02-Standards/05-Security/OWASP-ASVS-Standard.md` | ✅ Completed | ForgeOS application guide — verification requirements; level selection (L1/L2/L3); four-pillar application; cites canonical source. |
| 26 | `Framework/02-Standards/05-Security/OWASP-Cheat-Sheets.md` | ✅ Completed | ForgeOS application guide — implementation layer of OWASP ecosystem; four-pillar application; skill consumption; cites canonical source. |
| 27 | `Framework/02-Standards/05-Security/OWASP-Proactive-Controls.md` | ✅ Completed | ForgeOS application guide — C1–C10 development controls; four-pillar application; maps to Top 10; cites canonical source. |
| 28 | `Framework/02-Standards/05-Security/OWASP-Top10.md` | ✅ Completed | ForgeOS application guide — 2021 categories A01–A10; four-pillar application; supply-chain emphasis (A06, A08); cites canonical source. |
| 29 | `Framework/02-Standards/05-Security/OWASP-WSTG-Standard.md` | ✅ Completed | ForgeOS application guide — testing phases/categories; coverage strategy; maps to ASVS; cites canonical source. |

---

## 🟢 Low — Project Template Placeholders

All files under `Framework/07-Templates/09-Project Template/` are zero-byte template slots. They are intentionally empty but should carry a brief instruction comment so the template is self-documenting.

| # | Path | Status | Notes |
| --- | --- | --- | --- |
| 30 | `…/AGENTS.md` | ✅ Completed | Add template instruction. |
| 31 | `…/README.md` | ✅ Completed | Add template instruction. |
| 32 | `…/.gitignore` | ✅ Completed | Add default ignores. |
| 33 | `…/docs/ARCHITECTURE.md` | ✅ Completed | Add template instruction. |
| 34 | `…/docs/CHANGELOG.md` | ✅ Completed | Add template instruction. |
| 35 | `…/docs/DECISIONS.md` | ✅ Completed | Add template instruction. |
| 36 | `…/docs/GLOSSARY.md` | ✅ Completed | Add template instruction. |
| 37 | `…/docs/PROJECT-DEFINITION.md` | ✅ Completed | Add template instruction. |
| 38 | `…/docs/PROJECT-JOURNAL.md` | ✅ Completed | Add template instruction. |
| 39 | `…/docs/REQUIREMENTS.md` | ✅ Completed | Add template instruction. |
| 40 | `…/docs/ROADMAP.md` | ✅ Completed | Add template instruction. |
| 41 | `…/docs/deployment/DEPLOYMENT.md` | ✅ Completed | Add template instruction. |
| 42 | `…/docs/deployment/RUNBOOK.md` | ✅ Completed | Add template instruction. |
| 43 | `…/docs/testing/TEST-CASES.md` | ✅ Completed | Add template instruction. |
| 44 | `…/docs/testing/TEST-PLAN.md` | ✅ Completed | Add template instruction. |
| 45 | `…/work/BACKLOG.md` | ✅ Completed | Add template instruction. |
| 46 | `…/work/ITERATION.md` | ✅ Completed | Add template instruction. |
| 47 | `…/work/PROJECT-PLAN.md` | ✅ Completed | Add template instruction. |
| 48 | `…/work/PROJECT-STATE.md` | ✅ Completed | Add template instruction. |
| 49 | `…/work/RELEASES.md` | ✅ Completed | Add template instruction. |
| 50 | `…/deploy/README.md` | ✅ Completed | Add template instruction. |
| 51 | `…/docs/architecture/README.md` | ✅ Completed | Add template instruction. |
| 52 | `…/docs/decisions/README.md` | ✅ Completed | Add template instruction. |
| 53 | `…/docs/requirements/README.md` | ✅ Completed | Add template instruction. |
| 54 | `…/resources/README.md` | ✅ Completed | Add template instruction. |
| 55 | `…/scripts/README.md` | ✅ Completed | Add template instruction. |
| 56 | `…/tests/README.md` | ✅ Completed | Add template instruction. |
| 57 | `…/work/backlog/README.md` | ✅ Completed | Add template instruction. |
| 58 | `…/work/completed/README.md` | ✅ Completed | Add template instruction. |
| 59 | `…/work/in-progress/README.md` | ✅ Completed | Add template instruction. |
| 60 | `…/.ai/cache/README.md` | ✅ Completed | Add template instruction. |
| 61 | `…/.ai/knowledge/README.md` | ✅ Completed | Add template instruction. |
| 62 | `…/.ai/prompts/README.md` | ✅ Completed | Add template instruction. |
| 63 | `…/.ai/sessions/README.md` | ✅ Completed | Add template instruction. |
| 64 | `…/.github/workflows/README.md` | ✅ Completed | Add template instruction. |

---

## 📁 Empty Directories

### Framework / Project (need README or content)

| # | Path | Status | Notes |
| --- | --- | --- | --- |
| 65 | `ForgeOS Project/Backlog/` | In Progress | This file. |
| 66 | `ForgeOS Project/Release Notes/` | ✅ Completed | Add README explaining purpose + release index. |
| 67 | `ForgeOS Project/Roadmap/` | ✅ Completed | Add README explaining purpose + roadmap content. |
| 68 | `Framework/02-Standards/09-External-Industry/` | ✅ Completed | Decide whether to populate or remove the category. |
| 69 | `Framework/03-Governance/Version/Releases/` | ✅ Completed | Add README or release records. |
| 70 | `Framework/10-Assets/Branding/` | ✅ Completed | Holds binary assets — add README index if assets exist. |
| 71 | `Framework/10-Assets/Diagrams/` | ✅ Completed | Referenced by docs — add diagrams or README. |
| 72 | `Framework/10-Assets/Icons/` | ✅ Completed | Holds binary assets — add README index if assets exist. |

### Project Template Structural (need `.gitkeep` only)

| # | Path | Status | Notes |
| --- | --- | --- | --- |
| 73 | `…/09-Project Template/.vscode/` | ✅ Completed | Add `.gitkeep`. |
| 74 | `…/09-Project Template/deploy/docker/` | ✅ Completed | Add `.gitkeep`. |
| 75 | `…/09-Project Template/deploy/scripts/` | ✅ Completed | Add `.gitkeep`. |
| 76 | `…/09-Project Template/docs/assets/` | ✅ Completed | Add `.gitkeep`. |
| 77 | `…/09-Project Template/docs/governance/` | ✅ Completed | Add `.gitkeep`. |
| 78 | `…/09-Project Template/src/` | ✅ Completed | Add `.gitkeep`. |
| 79 | `…/09-Project Template/tests/e2e/` | ✅ Completed | Add `.gitkeep`. |
| 80 | `…/09-Project Template/tests/integration/` | ✅ Completed | Add `.gitkeep`. |
| 81 | `…/09-Project Template/tests/unit/` | ✅ Completed | Add `.gitkeep`. |

---

## Summary

| Priority | Items | Action |
| --- | --- | --- |
| 🔴 Critical | 10 | ✅ All completed. |
| 🟠 High | 14 | ✅ All resolved (13 authored, 1 removed — Roo discontinued). |
| 🟡 Medium | 5 | ✅ All completed — ForgeOS application guides (OWASP = goal, ForgeOS = implementation). |
| 🟢 Low | 35 | ✅ All completed — YAML frontmatter (purpose, when_used, produced_by, consumed_by, category, template_type, framework_authority) added to each slot, cross-linked to Framework authority. |
| 📁 Folder (Framework/Project) | 8 | Add README or content. |
| 📁 Folder (Project Template) | 9 | ✅ All completed — `.gitkeep` added to 9 genuinely-empty structural dirs. |
| **Total** | **81** | **All resolved — v1.0.0 released.** |

---

## Recommended Order

1. ~~Author the **10 Critical Framework documents** — highest impact on navigability and standards-loading.~~ ✅ Done.
2. ~~Author the **Tooling Adapter and Capability documents** (6 items) — completes the Tooling layer's describing layer.~~ ✅ Done.
3. ~~Author the **AI Platform profiles** (7 items) — enables AI-PM platform comparisons.~~ ✅ Done (6 authored + Roo removed).
4. ~~Resolve the **OWASP standards placeholders** (5 items) — decide populate-vs-pointer policy first.~~ ✅ Done — Option A (ForgeOS application guides, OWASP linked as canonical goal).
5. ~~Fill **Project Template placeholders** with instruction comments (35 items) — template-quality pass.~~ ✅ Done — YAML frontmatter with Framework cross-links.
6. ~~Add **`.gitkeep`** files (9 items) — version-control hygiene.~~ ✅ Done.
7. Address **Framework/Project empty directories** (8 items) — fill or remove as appropriate.

---

## Post-v1.0.0

| # | Path | Status | Notes |
| --- | --- | --- | --- |
| 82 | `Framework/06-Prompts/` | ✅ Completed | Declared an **intentional placeholder** with admission criteria (WI-001, Decision #9). Prompts are added only when an Active Skill requires one. |
| 83 | `Framework/11-Collaboration Orchestration/Product-Owner.md` | ✅ Completed | New role definition authored — Product Owner as business owner, rights incl. proactive notification duty (WI-001, Decision #7). |

---

## Status Values

`Open` → `In Progress` → `Completed` → `Verified` → `Closed`

(Aligns with the ForgeOS Work Item lifecycle in **ADR-005**.)