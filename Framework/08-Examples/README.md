# Examples

## Purpose

This folder holds **reference implementations and worked examples** that demonstrate ForgeOS principles, standards and workflows in practice.

Examples exist to **teach and illustrate**. They show how the Framework is intended to be applied, making abstract standards and workflows concrete.

Examples are **not** standards. They do not define engineering rules. When an example appears to conflict with a Standard, the Standard is authoritative.

---

## Position in the Framework

```text
Standards   →  what rules apply
Workflows   →  when work happens
Skills      →  how work is performed
Templates   →  what structure outputs should take
Examples    →  what good looks like in practice   ← this folder
```

Examples are the most concrete, most project-like artefacts in the Framework. They sit below Standards, Workflows, Skills and Templates in the authority hierarchy.

---

## What Belongs Here

| Belongs                                                       | Does not belong                                       |
| ------------------------------------------------------------- | ----------------------------------------------------- |
| Reference implementations of a ForgeOS workflow or skill      | Live project code                                     |
| Worked examples of standards being applied                    | Engineering standards themselves                      |
| Sample artefacts produced using ForgeOS templates             | Templates themselves (`07-Templates/`)                |
| Annotated examples that explain *why* decisions were made     | Project-specific decisions (those live in the project) |
| Cross-cutting examples that show multiple components together | One-off scripts                                       |

---

## Contents

This folder is currently a placeholder. As examples are introduced, they should be organised to mirror the Framework category structure where practical:

* `01-Workflow/` — examples of work moving through SDLC phases.
* `02-Standards/` — examples of standards being applied.
* `04-Agents/` — examples of Agents collaborating.
* `05-Skills/` — worked outputs of individual Skills.
* `07-Templates/` — filled-in templates as reference.
* `11-Collaboration Orchestration/` — end-to-end orchestration walkthroughs.

Each example should document:

* Which Standard, Workflow, Skill or Template it illustrates.
* The scenario and assumptions.
* The decisions made and why.
* How it maps back to the Framework components it demonstrates.

---

## Design Principles

* **Examples illustrate, they do not prescribe.** Standards are authoritative; examples are illustrative.
* **Examples are self-contained.** A reader should understand an example without needing the originating project.
* **Examples are anonymised where appropriate.** Project-sensitive detail is removed or generalised.
* **Examples are versioned with the Framework.** When a Standard or Template changes, affected examples are updated or retired.

---

## Relationship to Other Components

| Component                   | Relationship                                                         |
| --------------------------- | ------------------------------------------------------------------- |
| Standards (`02-Standards/`) | Examples show Standards being applied; Standards remain authoritative. |
| Skills (`05-Skills/`)       | Examples demonstrate Skill outputs in context.                       |
| Templates (`07-Templates/`) | Examples may show filled-in Templates for reference.                 |
| Onboarding (`09-Onboarding/`)| Examples support learning alongside onboarding material.            |
| Collaboration Orchestration | End-to-end examples show Orchestration in action.                   |

---

## Authority and Conflict

If an example conflicts with:

1. A Standard — the Standard wins; the example is corrected.
2. A Template — the Template wins; the example is corrected.
3. A Workflow — the Workflow wins; the example is corrected.

Examples never override Framework authority.

---

## Related Documents

* `Framework/02-Standards/` — rules that examples illustrate.
* `Framework/05-Skills/` — capabilities that examples demonstrate.
* `Framework/07-Templates/` — structures that examples may populate.
* `Framework/09-Onboarding/` — learning material that uses examples.