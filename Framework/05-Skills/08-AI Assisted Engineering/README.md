# AI Assisted Engineering Skills

## Purpose

The AI Assisted Engineering Skills define the capabilities required for effective collaboration between humans and AI agents within the ForgeOS framework.

These Skills enable AI agents to operate as disciplined engineering participants by providing capabilities for:

* Understanding project context
* Clarifying intent
* Selecting appropriate capabilities
* Managing engineering sessions
* Preserving project knowledge
* Coordinating responsibilities
* Validating engineering quality

These Skills do not perform domain or technology-specific engineering work.

They enable the engineering process itself.

---

# Role Within ForgeOS

AI Assisted Engineering Skills provide the operating capabilities that allow Agents to participate effectively within the ForgeOS Software Development Lifecycle.

They operate between Workflow and specialist Engineering Skills.

```text
Human Intent
      |
      ▼
Workflow
      |
      ▼
AI Assisted Engineering Skills
      |
      ▼
Agents
      |
      ▼
Engineering Skills
      |
      ▼
Implementation
```

---

# Design Principles

## Context Before Action

AI agents must understand the relevant project information before making recommendations, decisions or changes.

Context should be:

* Relevant
* Sufficient
* Current
* Purpose-driven

Unnecessary context loading should be avoided.

---

## Clarification Before Execution

Ambiguous intent must be resolved before engineering work begins.

AI agents should identify uncertainty rather than make unsupported assumptions.

---

## Capability Before Implementation

Work should be matched to the appropriate Agent and Skill before execution.

The correct capability should be applied to the correct problem.

---

## Knowledge Preservation

Engineering knowledge should become a reusable project asset.

Important discoveries, decisions and lessons should be preserved for future work.

---

## Governed AI Participation

AI agents participate within defined engineering boundaries.

They may:

* Analyse
* Recommend
* Create
* Execute approved work
* Improve existing artefacts

They must not:

* Override Standards
* Ignore project constraints
* Replace engineering governance
* Create undocumented decisions

---

# Skill Catalogue

## Forge-Context-Loading

Provides the capability to establish sufficient project understanding before engineering work begins.

Primary responsibilities:

* Load relevant project knowledge
* Identify required context
* Detect missing information
* Prepare Agents for execution

---

## Forge-Grill

Provides the capability to clarify and refine human intent.

Primary responsibilities:

* Identify ambiguity
* Ask focused questions
* Define expected outcomes
* Establish shared understanding

---

## Forge-Task-Routing

Provides the capability to determine the appropriate execution path.

Primary responsibilities:

* Classify work
* Identify responsible Agents
* Select required Skills
* Define capability ownership

---

## Forge-Session-Management

Provides the capability to manage the lifecycle of engineering sessions.

Primary responsibilities:

* Establish session objectives
* Maintain continuity
* Capture progress
* Create session handoffs

---

## Forge-Knowledge-Management

Provides the capability to preserve and maintain reusable project knowledge.

Primary responsibilities:

* Capture discoveries
* Maintain documentation integrity
* Preserve decisions
* Improve future context availability

---

## Forge-Standards-Compliance

Provides the capability to ensure engineering work aligns with applicable Standards.

Primary responsibilities:

* Identify applicable Standards
* Evaluate outputs
* Detect deviations
* Support quality gates

---

## Forge-Agent-Collaboration

Provides the capability to coordinate multiple engineering responsibilities.

Primary responsibilities:

* Manage Agent interactions
* Maintain responsibility boundaries
* Support handoffs
* Prevent conflicting decisions

---

# Relationship With Other ForgeOS Components

| Component                      | Responsibility                                                                |
| ------------------------------ | ----------------------------------------------------------------------------- |
| Workflow                       | Defines when activities occur                                                 |
| Agents                         | Define responsibility ownership                                               |
| AI Assisted Engineering Skills | Enable effective AI participation                                             |
| Engineering Skills             | Provide specialist capability                                                 |
| Standards                      | Define expected quality                                                       |
| Governance                     | Define project-specific constraints                                           |
| Templates                      | Define artefact structures                                                    |
| Collaboration Orchestration    | Coordinates how engineering intent is transformed into coordinated execution  |

---

# Skill Execution Flow

AI Assisted Engineering Skills typically operate through the following sequence:

```text
Session Start
      |
      ▼
Forge-Context-Loading
      |
      ▼
Forge-Grill
      |
      ▼
Forge-Task-Routing
      |
      ▼
Specialist Agent + Engineering Skills
      |
      ▼
Forge-Standards-Compliance
      |
      ▼
Forge-Knowledge-Management
      |
      ▼
Session Handoff
```

Not every activity requires every Skill.

The applicable Skills depend on:

* SDLC phase
* Task complexity
* Project context
* Required outcomes

---

# Relationship To Engineering Skills

AI Assisted Engineering Skills are different from Engineering Skills.

AI Assisted Engineering Skills enable the development process.

Engineering Skills perform specialist work.

Example:

```text
Forge-Context-Loading
        |
        ▼
Backend Engineering Skill
        |
        ▼
Backend Engineer Agent
        |
        ▼
Implementation
```

---

# ForgeOS Principle

AI-assisted development requires more than technical capability.

It requires disciplined context management, clear intent, appropriate routing, controlled execution and preserved knowledge.

AI Assisted Engineering Skills provide the foundation that allows humans and AI agents to collaborate effectively within a structured engineering system.
