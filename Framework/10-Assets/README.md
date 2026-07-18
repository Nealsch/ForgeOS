# Assets

## Purpose

This folder holds **supporting media** used by ForgeOS documentation, onboarding and branding. Assets are non-text artefacts — diagrams, icons, images and brand material — that make the framework easier to understand and visually consistent.

Assets are **supporting material**. They are not engineering standards, not workflow definitions, and not authoritative on their own. If an asset appears to contradict a Framework document, the document is authoritative.

---

## Position in the Framework

```text
Standards, Workflow, Skills, Templates   →  text-based engineering truth
                                              ↓
Documentation                            →  explains the engineering truth
                                              ↓
Assets                                   →  visualises the engineering truth   ← this folder
```

Assets sit below documentation in the authority hierarchy.

---

## Folder Structure

| Folder | Purpose |
| --- | --- |
| `Branding/` | ForgeOS logo, colour palette, typography and brand guidelines. Used in the README, onboarding and any external ForgeOS material. |
| `Diagrams/` | Reference diagrams referenced by Framework documents (e.g. authority hierarchy, SDLC phases, orchestration lifecycle). Source files (e.g. `.drawio`, `.svg`) are version-controlled alongside rendered images. |
| `Icons/` | Iconography used in documentation and templates. |

> The subfolders are currently empty. When assets are added, each folder should contain a small `README.md` index listing its contents and the documents that reference them.

---

## What Belongs Here

| Belongs | Does not belong |
| --- | --- |
| Diagrams referenced by Framework documents | Engineering standards |
| Brand assets for ForgeOS itself | Project-specific diagrams (those live in the project) |
| Icons reused across multiple documents | Screenshots or one-off images |
| Rendered images **and** their editable source | Temporary or scratch images |
| A version-controlled index per folder | Binary artefacts that change on every build |

---

## Conventions

* **Version the source.** Diagrams are stored as their editable source (`.drawio`, `.svg`, `.puml`) and any rendered output (`.png`, `.svg`) needed by documentation.
* **Prefer vector over raster.** SVG scales and remains crisp in documentation.
* **Name assets after what they show.** `authority-hierarchy.svg`, not `diagram1.png`.
* **Reference, do not embed duplicates.** Documents reference assets by path; they do not copy asset content into the document.
* **Keep folders indexed.** Each subfolder lists its assets so authors can find them and reviewers can spot orphans.

---

## Relationship to Other Components

| Component | Relationship |
| --- | --- |
| `Framework/09-Onboarding/` | Primary consumer of brand assets and conceptual diagrams. |
| `AGENTS.md`, `README.md` | Use the ForgeOS logo and key diagrams. |
| `Framework/01-Workflow/` | Owns SDLC phase diagrams referenced from `Diagrams/`. |
| `Framework/11-Collaboration Orchestration/` | Owns lifecycle and intake diagrams referenced from `Diagrams/`. |
| `Framework/08-Examples/` | May reference diagrams to annotate worked examples. |

---

## Authority and Conflict

If an asset conflicts with a Framework document:

1. The document is authoritative.
2. The asset is corrected to match.

Assets never override text-based engineering truth.

---

## Related Documents

* `AGENTS.md` — uses the ForgeOS brand and authority-hierarchy diagram.
* `Framework/README.md` — Framework overview, references supporting diagrams.
* `Framework/09-Onboarding/` — primary consumer of conceptual assets.