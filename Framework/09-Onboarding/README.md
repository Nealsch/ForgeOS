# Onboarding

## Purpose

This folder is the **entry point for new ForgeOS users** — whether human developers, AI agents or both.

Onboarding material explains ForgeOS *conceptually* before a user is expected to navigate the Framework, follow the Workflow, or participate in Collaboration Orchestration. It exists to take someone from *"What is ForgeOS?"* to *"I know where to find what I need and how to contribute"* as efficiently as possible.

---

## Position in the Framework

```text
Onboarding      →  explains ForgeOS conceptually         ← this folder
    ↓
AGENTS.md       →  explains how to operate in this repo
    ↓
Framework       →  the reusable engineering system
    ↓
Project docs    →  the living project state
```

Onboarding is the most *gentle* layer. It points to AGENTS.md and the Framework but does not duplicate them.

---

## What Belongs Here

| Belongs                                                       | Does not belong                                       |
| ------------------------------------------------------------- | ----------------------------------------------------- |
| Conceptual introductions to ForgeOS                           | Engineering standards (`02-Standards/`)               |
| Learning paths and reading orders                             | Workflow definitions (`01-Workflow/`)                 |
| Role-based onboarding (human developer, AI agent, PM)        | Skills (`05-Skills/`)                                 |
| Glossary-level term introductions                             | Project documentation                                 |
| "First hour with ForgeOS" walkthroughs                        | Templates (`07-Templates/`)                           |
| Pointers into the rest of the Framework                       | Live project artefacts                                |

---

## Recommended Reading Paths

The following reading orders are recommended. (These become standalone documents as the folder is populated; they are listed here to define the intended structure.)

### For a human developer new to ForgeOS

1. `AGENTS.md` (repository root) — purpose, principles, authority hierarchy.
2. `Framework/09-Onboarding/` — conceptual introduction (this folder).
3. `Framework/01-Workflow/README.md` — the SDLC ForgeOS is built around.
4. `Framework/02-Standards/README.md` — the engineering standards you must follow.
5. `Framework/11-Collaboration Orchestration/README.md` — how work is intaken and routed.
6. `Framework/04-Agents/README.md` — the specialist roles you may perform.
7. `ForgeOS Project/ADRs/` — the decisions that shaped the framework you are using.

### For an AI agent operating in a ForgeOS repository

1. `AGENTS.md` — governance and authority (highest priority).
2. `Framework/11-Collaboration Orchestration/Context-Loading.md` — load only what you need.
3. `Framework/11-Collaboration Orchestration/Standards-Loading.md` — when and how to load Standards.
4. The Skill relevant to the current task.
5. The Standards relevant to the current task.
6. Applicable project documentation.

### For a Product Owner / stakeholder

1. `AGENTS.md` — purpose and authority.
2. `Framework/09-Onboarding/` — conceptual introduction.
3. `Framework/03-Governance/README.md` — how changes and releases are controlled.
4. `Framework/11-Collaboration Orchestration/AI-Program-Manager.md` — your primary interface.
5. `Framework/11-Collaboration Orchestration/Work-Item-Management.md` — how work enters the system.
6. `ForgeOS Project/Roadmap/` — where the project is heading.

---

## Design Principles

* **Onboarding is conceptual first, procedural second.** Understand *why* before *how*.
* **Onboarding points, it does not duplicate.** Every fact lives in exactly one authoritative place; onboarding links to it.
* **Onboarding is role-aware.** Different readers need different paths.
* **Onboarding is versioned with the Framework.** When Framework structure changes, onboarding pointers are updated.

---

## Relationship to Other Components

| Component                   | Relationship                                                         |
| --------------------------- | ------------------------------------------------------------------- |
| `AGENTS.md`                 | The authoritative governance document; onboarding precedes it.       |
| `Framework/01-Workflow/`    | The SDLC onboarding introduces.                                     |
| `Framework/02-Standards/`   | The standards onboarding points to.                                 |
| `Framework/11-Collaboration Orchestration/` | The collaboration model onboarding describes.      |
| `Framework/08-Examples/`    | Worked examples referenced from onboarding learning paths.          |
| `Framework/12-Glossary/`    | Shared terminology onboarding builds on.                            |

---

## Contents

This folder is currently a placeholder. As onboarding material is introduced, the following structure is recommended:

* `README.md` — this file; the index.
* `introduction.md` — a short, plain-language overview of ForgeOS.
* `reading-paths.md` — detailed reading paths per role.
* `first-session.md` — a "first hour with ForgeOS" walkthrough.
* `glossary-overview.md` — a gentle introduction to key terminology.

---

## Related Documents

* `AGENTS.md` — repository governance and authority hierarchy.
* `Framework/README.md` — Framework overview.
* `Framework/01-Workflow/README.md` — the SDLC.
* `Framework/12-Glossary/README.md` — terminology.