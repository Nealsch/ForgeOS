---
purpose: Explain the Roadmap folder and record the current ForgeOS direction. The roadmap communicates where ForgeOS is going.
when_used: At each release (release-process.md step 8) and whenever the Product Owner updates direction.
produced_by: Product Owner
consumed_by:
  - All Agents
  - Forge-Context-Loading
  - Forge-Task-Routing
  - Forge-Prioritisation
category: 01-Product
template_type: primary
framework_authority: Framework/07-Templates/01-Product/Roadmap-template.md
---

# Roadmap

This folder holds the ForgeOS Framework roadmap.

The roadmap communicates **where ForgeOS is going**. It is the forward-looking counterpart to release notes (which record where ForgeOS has been).

---

# Current State

**ForgeOS v1.0.1** is the current release. It was released on **2026-07-18** as a backwards-compatible patch (cleanup, referential-integrity fixes, Cline skill installer).

At v1.0.0 the framework was declared feature-complete and internally consistent. The Product Owner has confirmed that **no new functionality is planned**; v1.0.1 is a patch and does not change that posture.

---

# Why This Roadmap Is Intentionally Minimal

A roadmap is normally populated with themes, epics and target versions. At the point of the v1.0.0 release, the Product Owner has deliberately chosen **not** to commit to a forward schedule. This is a valid, explicit state — not a gap.

Reasons:

* The framework has just reached its initial stable baseline.
* Adoption and real-world use should inform the next priorities before commitments are made.
* The documentation-gaps backlog (`ForgeOS Project/Backlog/`) already captures known candidate work; it does not need to be duplicated here as committed roadmap items.

When the Product Owner decides on a direction, this file will be updated to record:

* Themes / focus areas for the next cycle.
* Candidate versions (e.g. `1.1.0`, `1.2.0`).
* Links to the backlog items that fall into each cycle.

---

# Roadmap vs Backlog

| Artefact | Question it answers | Location |
| --- | --- | --- |
| Roadmap | *Where is ForgeOS going?* | `ForgeOS Project/Roadmap/` (this folder) |
| Backlog | *What known work exists?* | `ForgeOS Project/Backlog/` |
| Release Notes | *What shipped in each version?* | `ForgeOS Project/Release Notes/` |

The roadmap does **not** replace the backlog. It prioritises and schedules selected backlog items.

---

# Release Baseline

| Version | Date | Status | Notes |
| --- | --- | --- | --- |
| 1.0.0 | 2026-07-18 | Released | [Release Notes](../Release%20Notes/1.0.0.md) · [Release Record](../../Framework/03-Governance/Version/Releases/1.0.0.md) |
| 1.0.1 | 2026-07-18 | **Current** | [Release Notes](../Release%20Notes/1.0.1.md) · [Release Record](../../Framework/03-Governance/Version/Releases/1.0.1.md) |

---

# Authority

This roadmap is living project documentation. It is owned by the **Product Owner** and updated as part of step 8 of the release workflow (`Framework/03-Governance/release-process.md`). The authoritative roadmap template is `Framework/07-Templates/01-Product/Roadmap-template.md`.

---

# Related Documents

* `Framework/03-Governance/release-process.md` — step 8 updates this roadmap.
* `Framework/07-Templates/01-Product/Roadmap-template.md` — the roadmap structure.
* `ForgeOS Project/Backlog/documentation-gaps-backlog.md` — known candidate work (v1.0.0).
* `ForgeOS Project/Backlog/skill-graph-gaps-backlog.md` — known candidate work (v1.0.1).
* `ForgeOS Project/Release Notes/1.0.1.md` — what shipped in v1.0.1.
