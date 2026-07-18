# Template Selection

## Purpose

Template Selection defines how Collaboration Orchestration identifies and applies the correct ForgeOS Templates for an engineering activity.

It ensures that every deliverable is structured consistently and conforms to the expectations defined by the Framework.

---

## Selection Principles

Template selection should be:

* **Deliverable-driven** — Templates are selected based on the output required.
* **Skill-aligned** — Templates are selected in conjunction with the Skill being applied.
* **Minimal** — Only the templates required for the current activity are loaded.
* **Authoritative** — Templates define the structure that deliverables must follow.

---

## Template Catalogue

ForgeOS Templates are mapped to Skills in the Template Catalogue (see `Framework/07-Templates/README.md`).

Each Skill identifies:

* **Primary Templates** — The main template(s) used to structure the primary output.
* **Supporting Templates** — Additional templates that may be used for secondary outputs.

Example:

```text
Skill: Forge-Requirements-Analysis
Primary Template: Requirements Specification
Supporting Template: Glossary
```

---

## Selection Process

The general process for selecting Templates is:

1. **Identify the required deliverable** — Understand what output is expected.
2. **Identify the applicable Skill** — Determine which Skill will produce the deliverable.
3. **Identify primary Templates** — Select the template(s) that structure the primary output.
4. **Identify supporting Templates** — Select any additional templates required.
5. **Load the Templates** — Provide them as context for the engineering activity.

---

## Template Usage

When a Template is used:

* The template structure should be preserved in the output.
* Placeholder guidance text should be replaced with actual content.
* The instructional text should be honoured during generation but should not remain in the final output.
* The completed document becomes a project artefact, not a Framework artefact.

---

## Templates and Standards

Templates implement ForgeOS Standards.

When Standards are loaded for an activity, the corresponding Templates should also be considered to ensure that the deliverable meets the standard's expectations.

---

## Relationship to the AI Program Manager

The AI Program Manager invokes Collaboration Orchestration to select the appropriate Templates. It does not select Templates directly.

This ensures that Template selection remains consistent and driven by the Framework, not by ad hoc AI judgement.

---

## ForgeOS Principle

Consistent deliverables require consistent structure.

Template Selection ensures that every engineering output follows the standard structure defined by the ForgeOS Framework.