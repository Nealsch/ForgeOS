# Context Loading

## Purpose

Context Loading defines how Collaboration Orchestration assembles the minimum context necessary to perform an engineering task.

It ensures that Agents receive the right information at the right time—neither overloaded with unnecessary context nor starved of the knowledge required to perform their work.

---

## Context Resolution Order

Context should be loaded in the following order:

1. **Determine the engineering task** — Understand what work is being requested.
2. **Identify the applicable Workflow phase** — Locate the task within the SDLC.
3. **Select the required Agent or Agents** — Identify who will perform the work.
4. **Load the required Skill or Skills** — Identify the capabilities required.
5. **Load applicable ForgeOS Standards** — Identify the engineering expectations.
6. **Load applicable external standards** — Identify any domain or regulatory standards.
7. **Load required Templates** — Identify the structure for deliverables.
8. **Load relevant project documentation and artifacts** — Identify project-specific context.
9. **Load reference examples** — Only when they materially improve execution or are explicitly requested.

This priority ensures that framework knowledge is established before project-specific context, and that project context is established before implementation details.

---

## Minimal Necessary Context

Only the information required to perform the current task should be loaded.

This principle exists because:

* Excessive context degrades reasoning quality
* Irrelevant context introduces noise
* Loading unnecessary files wastes time and resources
* Large contexts reduce consistency

The goal is **accuracy through focus**, not completeness through volume.

---

## Context Sources

Context may be drawn from:

| Source | Type | Examples |
| --- | --- | --- |
| Workflow | Framework | Phase definitions, entry/exit criteria |
| Standards | Framework | Coding, architecture, security standards |
| Governance | Framework | Project constraints, behavioural rules |
| Skills | Framework | Capability definitions, reasoning approaches |
| Templates | Framework | Deliverable structures |
| Examples | Framework | Reference implementations |
| Project Documentation | Project | ADRs, requirements, design docs |
| Implementation | Project | Source code, tests, configuration |

Framework knowledge is loaded first and treated as immutable during project work.

---

## Context Lifecycle

Context is loaded per activity, not per session.

Each engineering activity should establish its own context boundary:

```text
Activity begins
        ↓
Context loaded
        ↓
Engineering work performed
        ↓
Deliverables produced
        ↓
Context released
```

This prevents context bleed between unrelated activities and maintains reasoning quality.

---

## Relationship to the AI Program Manager

The AI Program Manager maintains project continuity across sessions, but context loading for individual engineering activities is handled by Collaboration Orchestration.

This separation ensures that the AI Program Manager can maintain high-level project awareness while individual Agents work with focused, task-appropriate context.

---

## ForgeOS Principle

Context loading is the discipline of providing the right knowledge at the right time.

Accurate context loading improves reasoning quality, consistency and engineering outcomes.