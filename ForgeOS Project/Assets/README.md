# Assets

## Purpose

This folder holds **supporting media belonging to the ForgeOS Project** — the living project documentation for the ForgeOS framework itself (ADRs, Backlog, Roadmap, Release Notes, Sessions, per ADR-006).

Assets are non-text artefacts — diagrams, images and exported visuals — that support project documentation. They are **project documentation**, not reusable Framework knowledge, and never override Framework engineering truth.

---

## Boundary with the Framework

| Lives here (`ForgeOS Project/Assets/`) | Lives in `Framework/10-Assets/` |
| --- | --- |
| Diagrams explaining the ForgeOS Project, its history or its decisions | Diagrams explaining the Framework architecture, SDLC or governance |
| One-off project images and exports | Branding and icons reused across Framework documents |
| Session or backlog illustrations | Assets referenced by Framework documents and onboarding |

When in doubt: if a Framework document references the asset, it belongs in `Framework/10-Assets/`; if only project documentation references it, it belongs here.

---

## Folder Structure

| Folder | Purpose |
| --- | --- |
| `Diagrams/` | Diagrams and visual explainers belonging to the ForgeOS Project. Indexed in its README. |

---

## Conventions

Inherited from `Framework/10-Assets/README.md`:

* Name assets after what they show.
* Prefer vector over raster where possible.
* Reference assets by path; never copy content into documents.
* Keep each subfolder indexed in its README.

---

## Related Documents

* `Framework/10-Assets/README.md` — Framework assets conventions (authority for asset conventions).
* `ForgeOS Project/README.md` — project documentation overview.
