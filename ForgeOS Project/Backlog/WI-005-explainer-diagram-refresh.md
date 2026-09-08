# Work Item — Explainer Diagram Refresh

## Identification

| Field | Value |
| ----- | ----- |
| Work Item ID | WI-005 |
| Title | Refresh `forgeos-explainer.png` to reflect current Framework structure |
| Work Item Type | Maintenance / Documentation |
| Status | Imported |

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

* `ForgeOS Project/Assets/Diagrams/forgeos-explainer.png` — the asset under review
* `ForgeOS Project/Assets/Diagrams/README.md` — diagram index (missing source-file row, Q2)
* AGENTS.md — Engineering Guidance Hierarchy (Governance layer) and repository structure
* Assets boundary rule (2026-09-08 relocation, commit `3d84a83`)
* WI-004 — Quality category expansion; higher priority, work first
