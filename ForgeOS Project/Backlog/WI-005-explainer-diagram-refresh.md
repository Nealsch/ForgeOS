# Work Item — Explainer Diagram Refresh

## Identification

| Field | Value |
| ----- | ----- |
| Work Item ID | WI-005 |
| Title | Refresh `forgeos-explainer.png` to reflect current Framework structure |
| Work Item Type | Maintenance / Documentation |
| Status | Completed — executed 2026-11-11, Option B; tracked publicly as [GitHub issue #8](https://github.com/Nealsch/ForgeOS/issues/8) (closes on PR merge) |

## Origin

| Field | Value |
| ----- | ----- |
| Source Platform | Manual (Product Owner session) |
| External Reference | `ForgeOS Project/Assets/Diagrams/README.md` (diagram index) |
| Synchronisation Status | N/A |
| Reported By | Product Owner question "Is the explainer diagram still accurate?" (2026-09-08) |
| Date Imported | 2026-09-08 |

## Description

```text
What needs to be done:
Accuracy review of forgeos-explainer.png (2026-09-08) found it broadly correct
but with three drift points against current AGENTS.md:

1. Framework column lists "Rules" — the concept has since evolved into the
   Governance layer (uniform lifecycle control: change, release, version,
   compatibility) within the Engineering Guidance Hierarchy.
2. Framework component list omits Prompts, Governance, and Glossary
   (all present in AGENTS.md repository structure).
3. ForgeOS Project column predates ADR-006 Scripts and the Assets/ folder
   (assets relocation, commit 3d84a83). Covered today only by the generic
   "Other Project Artefacts" box.

None are factual errors — simplifications from an earlier iteration — but the
diagram should be refreshed once, in a single edit, to avoid rebuilding the
PNG twice.

Constraint: only the PNG exists. No .drawio/.svg source file was relocated,
so the diagram cannot be surgically corrected — the source file must be
provided or the diagram rebuilt.
```

## Validation

* Sufficient description: **Yes**
* Clear business objective: **Yes** (diagram is the primary onboarding explainer)
* Engineering relevance: **Yes** (documents Framework vs Project boundary)
* Reproducible: **Yes** (drift verified against AGENTS.md on 2026-09-08)
* Conflicts identified: **Yes** — PNG-only constraint blocks execution until source is available
* Duplicate of: None
* Validation outcome: **Imported** (awaiting Product Owner acceptance)

## Engineering Impact

| Field | Value |
| ----- | ----- |
| Technical Risk | Low (single asset; no Framework contracts touched) |
| Implementation Complexity | Low–Medium (rebuild diagram; blocked on missing source file) |
| Security Impact | None |
| Affected Components | `ForgeOS Project/Assets/Diagrams/forgeos-explainer.png`, `ForgeOS Project/Assets/Diagrams/README.md` |

## Key Specify Questions

| # | Question |
|---|----------|
| Q1 | Can the original source file (.drawio/.svg) be provided, or must the diagram be rebuilt from scratch? **Blocking.** |
| Q2 | Should the refresh also fix the missing source-file row in the diagram index README? |
| Q3 | Should the refreshed diagram add Prompts/Glossary/Governance explicitly, or keep the intentionally simplified component list with only the "Rules → Governance" rename? |

## ForgeOS Routing Recommendations

| Field | Value |
| ----- | ----- |
| Recommended Lead Agent | Technical Writer |
| Supporting Agents | Architect (Governance layer representation) |
| Required Skills | Forge-Documentation-Generation |
| Applicable Standards | Documentation Standards |
| Required Templates | Work-Item |
| Recommended Initial SDLC Phase | Specify (Q1–Q3 need decisions before execution) |

## Priority

| Field | Value |
| ----- | ----- |
| Recommended Priority | Low |
| Rationale | Cosmetic simplifications; no factual errors; no phase or capability is blocked. Lower order than skill-gaps #3, #4, #8, #9 and doc-gaps #7. |
| Outstanding Decisions | Product Owner acceptance of WI-005; Q1 resolution (source file availability). |

## Related

* [GitHub issue #8](https://github.com/Nealsch/ForgeOS/issues/8) — public tracking
* `ForgeOS Project/Assets/Diagrams/forgeos-explainer.png` — the asset under review
* `ForgeOS Project/Assets/Diagrams/README.md` — diagram index (missing source-file row, Q2)
* AGENTS.md — Engineering Guidance Hierarchy (Governance layer) and repository structure
* Assets boundary rule (2026-09-08 relocation, commit `3d84a83`)
* WI-004 — Quality category expansion; higher priority, work first

---

## Execution Summary (2026-11-11)

### Specify Decisions (Product Owner, 2026-11-11)

| Q | Decision |
| --- | --- |
| Q1 | **Option B** — original source file unavailable; diagram rebuilt from scratch as a committed, editable source (`forgeos-explainer.svg`), rendered to `forgeos-explainer.png`. |
| Q2 | **Yes** — diagram index README updated with separate source + rendered rows. |
| Q3 | **Add explicitly** — Framework component list now includes Prompts, Governance and Glossary. |

### Deliverables

| Deliverable | Location |
| --- | --- |
| Editable diagram source (new) | `ForgeOS Project/Assets/Diagrams/forgeos-explainer.svg` — hand-authored SVG, 1600×1000 viewBox |
| Rendered PNG (replaced) | `ForgeOS Project/Assets/Diagrams/forgeos-explainer.png` — 3200×2000 (2× scale), rendered from the SVG via headless Chromium (Edge) |
| Diagram index (Q2) | `ForgeOS Project/Assets/Diagrams/README.md` — source + rendered rows |
| WI-010 reconciliation | `ForgeOS Project/Backlog/WI-010-adr008-tooling-evaluation.md` — status → merged (PR #23) |

### Content (authored from current AGENTS.md)

* **Authority column:** User Instructions → AGENTS.md → Framework — all 12 components listed explicitly with one-line purposes (fixes drift points 1 and 2: Governance present, Prompts/Governance/Glossary added).
* **Downstream layers:** Project Documentation → Tooling (Platforms / Adapters / Capabilities; "never owns engineering decisions") → `.clinerules` Platform Runtime Configuration.
* **Project layer:** ForgeOS Project enumerated with all 9 current folders (ADRs, Assets, Backlog, Design, Release Notes, Requirements, Roadmap, Scripts, Sessions) — replaces the generic "Other Project Artefacts" box (fixes drift point 3, and covers Design/Requirements/Sessions which postdate the 2026-09-08 review).
* **SDLC strip:** 7 phases, phase-definition caption, Quality Gate completion rule.
* **Engineering Guidance Hierarchy strip:** Workflow → Standards → Governance → Agent Responsibilities → Skill Implementation.
* **Boundary notes:** Tooling never owns engineering decisions; project rules apply within, never against, the Framework.

### Verification

| Check | Result |
| --- | --- |
| PNG render | 3200×2000 px verified (System.Drawing); content pixel-sampled — header band, Framework header, SDLC box and footer band all match intended fills | ✅ |
| Source hygiene | SVG is diffable text committed alongside the PNG; footer records rebuild date and WI; future updates edit the SVG and re-render | ✅ |
| Consumers | Root `README.md` embedding unchanged (same filename, width 820) | ✅ |
| Referential audit (`Scripts/wi006-audit.ps1`) | 66 authored skills, 67 refs, zero real MISSING — no Framework references touched by this WI | ✅ |
