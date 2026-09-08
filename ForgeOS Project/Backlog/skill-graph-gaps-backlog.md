---
purpose: Track 15 `Forge-`-prefixed skill references that point to skills not yet authored, breaking referential integrity of the skill graph.
when_used: When planning the next skill-authoring pass; when auditing skill cross-references.
produced_by: Codebase Analyst
consumed_by:
  - Product Manager
  - Architect
  - Technical Writer
  - AI Program Manager
category: 01-Product
template_type: primary
framework_authority: Framework/05-Skills/README.md
---

# Skill Graph Gaps Backlog

## Purpose

Tracks **15 `Forge-`-prefixed references** that point to skills **not yet authored**. These were discovered during the v1.0.1 referential-integrity audit of the skill catalogue (`Framework/05-Skills/`).

The `Forge-` prefix is reserved exclusively for skills (per the naming convention enforced in v1.0.1). Every `Forge-*` reference must resolve to a real `SKILL.md`. These 15 do not, and therefore represent either:

* **skills to author** (preferred resolution), or
* **references to remove** (if the skill is not planned).

This backlog is a living document. Update the **Status** column as items are picked up. Items follow the ForgeOS Work Item lifecycle per **ADR-005**.

---

## Context

### How these were found

A repo-wide audit compared every `Forge-*` token against the canonical skill list extracted from `SKILL.md` metadata. The audit found **33 authored skills** and **15 dangling references**. The 3 non-skill misuses of the prefix (an agent, a folder, a governance doc) were fixed in v1.0.1; these 15 remain because they appear to be legitimate forward-references to planned skills.

### Reference contexts

The 15 references appear in three contexts:

| Context | Description | Count |
| --- | --- | --- |
| **Interaction With Other Skills** | A section heading + one-line relationship description inside an authored skill's `SKILL.md`. | 8 distinct skills |
| **Provides guidance for** | A bullet list of consumer skills inside `Forge-Test-Strategy/SKILL.md`. | 6 distinct skills |
| **Security standards table** | A skill→standards mapping table in `Framework/02-Standards/05-Security/README.md`. | 2 distinct skills |

(Some skills appear in more than one context.)

---

## Priority Legend

| Priority | Meaning |
| --- | --- |
| 🔴 Critical | None currently — no authored skill is broken; only forward-references dangle. |
| 🟠 High | Skill is referenced from a standards mapping table (implies a standards obligation) or from multiple skills. |
| 🟡 Medium | Skill is referenced once as a section heading with a clear relationship description. |
| 🟢 Low | Skill name is generic/overlapping and may be redundant with an existing skill. |

---

## 🟠 High — Referenced from Standards or Multiple Skills

| # | Skill (undefined) | Suggested Category | Referenced From | Status | Notes |
| --- | --- | --- | --- | --- | --- |
| 1 | `Forge-Quality-Assurance` | `04-Quality` | `Framework/02-Standards/05-Security/README.md:152` (security standards table)<br>`Framework/05-Skills/04-Quality/Forge-Test-Strategy/SKILL.md:241` (provides guidance for) | Open | Listed as consuming WSTG security standards and as a Test-Strategy consumer. Likely the QA counterpart to `Forge-Test-Strategy`. |
| 2 | `Forge-Defect-Management` | `04-Quality` | `Framework/02-Standards/05-Security/README.md:153` (security standards table)<br>`Framework/05-Skills/04-Quality/Forge-Test-Strategy/SKILL.md:243` (provides guidance for) | Open | Listed as consuming WSTG security standards and as a Test-Strategy consumer. Defect lifecycle / triage skill. |
| 3 | `Forge-Test-Design` | `04-Quality` | `Framework/05-Skills/01-Product/Forge-Acceptance-Criteria/SKILL.md:322` (section heading + ASCII flow)<br>`Framework/05-Skills/01-Product/Forge-Acceptance-Criteria/SKILL.md:330` (flow diagram label) | Open | Referenced twice with a full data-flow diagram. Closest existing skill is `Forge-Test-Planning`; clarify overlap before authoring. |

---

## 🟡 Medium — Single Section-Heading Reference

| # | Skill (undefined) | Suggested Category | Referenced From | Status | Notes |
| --- | --- | --- | --- | --- | --- |
| 4 | `Forge-Authentication` | `03-Engineering` (or `05-Security`?) | `Framework/05-Skills/03-Engineering/Forge-API-Design/SKILL.md:378` ("Provides identity and access requirements") | Open | Relationship text supplied. Decide category: engineering (authn implementation) vs security (authn design). |
| 5 | `Forge-Database-Design` | `02-Architecture` (or `03-Engineering`?) | `Framework/05-Skills/02-Architecture/Forge-Data-Modelling/SKILL.md:343` ("Provides data structures exposed through APIs") | Open | Overlap risk with `Forge-Data-Modelling` (architecture) and `Forge-Database-Implementation` (engineering). Clarify boundary. |
| 6 | `Forge-Deployment-Management` | `02-Architecture` (or `07-Deployment` std?) | `Framework/05-Skills/02-Architecture/Forge-Integration-Design/SKILL.md:364` | Open | No relationship text captured in audit; inspect section when addressing. |
| 7 | `Forge-Project-Steward` | `01-Product` (or `08-AI Assisted Engineering`?) | `Framework/05-Skills/01-Product/Forge-Prioritisation/SKILL.md:336` ("Uses prioritisation decisions to maintain project alignment and workflow progression") | Open | Name suggests possible overlap with `Forge-Task-Routing` / `Forge-Session-Management`. Clarify boundary. |
| 8 | `Forge-Security-Assessment` | `05-Security` | `Framework/05-Skills/02-Architecture/Forge-Data-Modelling/SKILL.md:349` | Open | Overlap risk with `Forge-Security-Surface-Review` and `Forge-Threat-Modelling`. Clarify boundary. |
| 9 | `Forge-Security-Review` | `05-Security` | `Framework/05-Skills/02-Architecture/Forge-Threat-Modelling/SKILL.md:367` | Open | Overlap risk with `Forge-Security-Surface-Review`. Name is more generic — may be the parent skill. |
| 10 | `Forge-Security-Testing` | `05-Security` | `Framework/05-Skills/02-Architecture/Forge-Threat-Modelling/SKILL.md:373` | Open | Security-focused testing; clarify overlap with `Forge-Test-Strategy` (quality) and WSTG standards. |
| 11 | `Forge-Testing` | `04-Quality` | `Framework/05-Skills/03-Engineering/Forge-API-Design/SKILL.md:390` ("Uses API contracts to define verification scenarios") | Open | Very generic name; likely redundant with `Forge-Test-Strategy` / `Forge-Test-Planning`. Strong candidate for removal rather than authoring. |

---

## 🟡 Medium — Test-Strategy "Provides guidance for" Cluster

These six appear only in the `Provides guidance for:` list of `Framework/05-Skills/04-Quality/Forge-Test-Strategy/SKILL.md` (lines 236–244). They describe the downstream testing skill cluster that `Forge-Test-Strategy` is meant to guide. Two are already captured above (#1, #2) because they also appear in the security standards table.

| # | Skill (undefined) | Suggested Category | Line | Status | Notes |
| --- | --- | --- | --- | --- | --- |
| 12 | `Forge-Test-Case-Design` | `04-Quality` | `:239` | Open | Test-case authoring skill; clear gap in the catalogue. |
| 13 | `Forge-Test-Automation` | `04-Quality` | `:240` | Open | Automation skill; clear gap in the catalogue. |
| 14 | `Forge-Quality-Control` | `04-Quality` | `:242` | Open | Overlap risk with `Forge-Quality-Assurance` (#1) — QC vs QA distinction must be defined if both are authored. |
| 15 | `Forge-Test-Reporting` | `04-Quality` | `:244` | Open | Reporting/analytics skill; clear gap in the catalogue. |

> **Note:** `Forge-Test-Planning` appears in the same list at `:238` and **is** authored — it is the only item in the "Provides guidance for" cluster that currently resolves.

---

## Summary

| Cluster | Undefined Skills | Authored Sibling(s) |
| --- | --- | --- |
| Quality / Testing | 9 (`Forge-Test-Design`, `Forge-Test-Case-Design`, `Forge-Test-Automation`, `Forge-Quality-Assurance`, `Forge-Quality-Control`, `Forge-Defect-Management`, `Forge-Test-Reporting`, `Forge-Testing`, + `Forge-Test-Strategy` consumer relationships) | `Forge-Test-Strategy`, `Forge-Test-Planning` |
| Security | 3 (`Forge-Security-Assessment`, `Forge-Security-Review`, `Forge-Security-Testing`) | `Forge-Threat-Modelling`, `Forge-Security-Surface-Review` |
| Engineering / Architecture | 3 (`Forge-Authentication`, `Forge-Database-Design`, `Forge-Deployment-Management`) | `Forge-API-Design`, `Forge-Data-Modelling`, `Forge-Integration-Design`, `Forge-Database-Implementation` |
| Product / Stewardship | 1 (`Forge-Project-Steward`) | `Forge-Prioritisation`, `Forge-Task-Routing`, `Forge-Session-Management` |
| **Total** | **15 undefined** (+1 already authored: `Forge-Test-Planning`) | |

---

## Resolution Options

For each item, choose one:

1. **Author the skill** — create `Framework/05-Skills/<category>/<skill-name>/SKILL.md` following the standard skill template. Preferred for items with clear catalogue gaps (e.g. `Forge-Test-Case-Design`, `Forge-Test-Automation`).
2. **Remove the reference** — delete the heading/bullet/table row. Preferred for generic/overlapping names where no distinct skill is planned (e.g. `Forge-Testing`).
3. **Rename the reference** — point it at an existing skill if the intent is already covered (e.g. `Forge-Testing` → `Forge-Test-Strategy`).
4. **Defer** — leave the forward-reference intact as a planning signal. **This is the current state of all 15 items** (v1.0.1 decision: do not modify until the skill is authored or explicitly descoped).

> **Decision log (v1.0.1):** All 15 left as-is per Product Owner direction. This backlog exists so the decision is explicit and revisitable, not implicit.

> **GitHub tracking:** this backlog is tracked publicly as [issue #5](https://github.com/Nealsch/ForgeOS/issues/5).

---

## Recommended Order

1. **Resolve the Quality/Testing cluster first (9 skills).** It is the largest gap and `Forge-Test-Strategy` already describes the intended shape of the cluster. Authoring these unlocks the full testing capability ladder.
2. **Resolve the Security cluster (3 skills).** Clarify overlap with `Forge-Security-Surface-Review` and `Forge-Threat-Modelling` before authoring — the names suggest redundancy.
3. **Resolve Engineering/Architecture edge cases (3 skills).** Each has a category ambiguity (authn: eng vs sec; DB design: arch vs eng; deployment: arch vs std). Decide placement before authoring.
4. **Resolve `Forge-Project-Steward` (1 skill).** Clarify overlap with `Forge-Task-Routing` / `Forge-Session-Management` first.

---

## Verification

After resolution, re-run the referential-integrity audit:

```bash
# Extract canonical skill names
FORGE_SKILLS=$(grep -rh '"skill"' \
  Framework/05-Skills/*/Forge-*/SKILL.md \
  Framework/05-Skills/*/*/Forge-*/SKILL.md 2>/dev/null \
  | sed -E 's/.*"skill"[[:space:]]*:[[:space:]]*"([^"]*)".*/\1/' | sort -u)

# Report any Forge-* token that is not an authored skill
grep -rohE "Forge-[A-Z][a-z]+(-[A-Z][a-z]+)*" Framework/ 2>/dev/null \
  | sort -u | while read ref; do \
      echo "$FORGE_SKILLS" | grep -qx "$ref" || echo "MISSING: $ref"; \
    done
```

Target: **zero MISSING lines.**

---

## Status Values

`Open` → `In Progress` → `Completed` → `Verified` → `Closed`

(Aligns with the ForgeOS Work Item lifecycle in **ADR-005**.)