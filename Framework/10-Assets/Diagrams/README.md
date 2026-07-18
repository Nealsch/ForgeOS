---
purpose: Index the reference diagrams used by ForgeOS documentation and onboarding.
when_used: Whenever a Framework document references a diagram, or when adding/updating a diagram.
produced_by: Engineering
consumed_by:
  - All Agents
  - Forge-Context-Loading
  - Framework/09-Onboarding
  - Framework/11-Collaboration Orchestration
category: 10-Assets
template_type: structural
framework_authority: Framework/10-Assets/README.md
---

# Diagrams

This folder holds **reference diagrams** referenced by ForgeOS Framework documents.

Diagrams visualise engineering truth; they do not define it. If a diagram conflicts with a Framework document, the document is authoritative and the diagram is corrected.

---

# Conventions

Inherited from `Framework/10-Assets/README.md`:

* **Version the source.** Editable source (`.drawio`, `.svg`, `.puml`) is stored alongside any rendered output (`.png`, `.svg`).
* **Prefer vector over raster.** SVG scales and stays crisp.
* **Name assets after what they show.** `authority-hierarchy.svg`, not `diagram1.png`.
* **Reference, do not embed duplicates.** Documents reference assets by path.

---

# Index

| File | Type | Referenced by | Description |
| --- | --- | --- | --- |
| `forgeos-explainer.png` | PNG (rendered) | README, onboarding | High-level visual explainer of the ForgeOS architecture and SDLC. Source file not yet provided; when available, store alongside (e.g. `forgeos-explainer.drawio` or `.svg`). |

> When adding a diagram, add a row here and name at least one document that references it, so reviewers can spot orphans.

---

# Authority

This folder is supporting material, not engineering truth. Authority flows from `Framework/10-Assets/README.md`, which itself sits below the text-based Framework documents in the authority hierarchy.

---

# Related Documents

* `Framework/10-Assets/README.md` — assets conventions and authority.
* `Framework/09-Onboarding/README.md` — primary consumer of conceptual diagrams.
* `README.md` (repo root) — may reference the ForgeOS explainer.