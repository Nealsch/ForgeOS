# Prompts

## Purpose

This folder holds reusable **prompt assets** used by AI-assisted engineering within ForgeOS.

Prompts standardise how AI models are invoked for particular engineering activities, improving consistency, repeatability and quality across tasks.

---

## Position in the Framework

Prompts sit between Skills and execution:

```text
Skill       →  defines the capability and procedure
    ↓
Prompt      →  standardises the AI interaction for a step within a Skill
    ↓
AI Model    →  executes the prompt
```

Prompts **support** Skills. They are not a replacement for Skills, and they do not define engineering process on their own. A Skill remains the authoritative description of *how* a capability is performed; prompts only codify the *language* used to invoke AI for a step within that capability.

---

## What Belongs Here

| Belongs                                       | Does not belong                                   |
| --------------------------------------------- | ------------------------------------------------- |
| Reusable, platform-agnostic prompt templates  | Project-specific one-off prompts                  |
| Prompts that implement a step in a Skill      | Engineering standards (those live in `02-Standards/`) |
| Prompts referenced by Collaboration Orchestration | Skills (those live in `05-Skills/`)            |
| Prompt composition patterns                   | Runtime configuration (e.g. `.clinerules`)        |

---

## Contents

This folder is an **intentional placeholder**. It is not empty by omission: prompts are added only when a Skill genuinely requires one.

### Admission Criteria

A prompt asset may be added only when:

* It implements a defined step in an existing, Active Skill.
* The step involves AI invocation whose wording materially affects outcome quality.
* The prompt is reusable across projects and platforms.
* No existing Skill text already covers the interaction adequately.

Prompts must **not** be created speculatively. Until a Skill requires one, this folder stays empty by design. Demand for prompt assets is tracked in the ForgeOS Project backlog (see WI-001).

As prompt assets are introduced, they should be organised to mirror the Skill category structure where practical:

* `01-Product/`
* `02-Architecture/`
* `03-Engineering/`
* `04-Quality/`
* `05-Security/`
* `06-Delivery/`
* `07-Documentation and Knowledge/`
* `08-AI Assisted Engineering/`

Each prompt file should document:

* The Skill step it supports.
* The inputs it expects.
* The output format it produces.
* Any standards or templates it references.

---

## Design Principles

* **Prompts are reusable assets**, not session transcripts.
* **Prompts do not own process.** The Skill owns the procedure; the prompt owns the invocation language.
* **Prompts are platform-independent** where possible. Platform-specific prompt packaging lives in `Tooling/`.
* **Prompts are versioned with the Framework.** Changes to prompts follow the normal Governance change process.

---

## Relationship to Other Components

| Component                   | Relationship                                                         |
| --------------------------- | ------------------------------------------------------------------- |
| Skills (`05-Skills/`)       | Skills own the capability; prompts implement individual steps.       |
| Standards (`02-Standards/`) | Standards constrain what a prompt may ask the AI to do.              |
| Templates (`07-Templates/`) | Templates define output structure; prompts may reference them.       |
| Collaboration Orchestration | Selects and invokes prompts during the Orchestration Lifecycle.      |
| Tooling                     | Packages prompts for specific AI platforms.                          |

---

## Related Documents

* `Framework/05-Skills/README.md` — Skills that prompts support.
* `Framework/02-Standards/` — standards that constrain prompt content.
* `Framework/07-Templates/` — templates that prompts may instruct the AI to populate.
* `Framework/11-Collaboration Orchestration/` — where prompts are selected and invoked.