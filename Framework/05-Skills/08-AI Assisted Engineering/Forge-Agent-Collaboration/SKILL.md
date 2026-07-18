# Forge-Agent-Collaboration

```json
{
  "skill": "Forge-Agent-Collaboration",
  "category": "08-AI Assisted Engineering",
  "purpose": "Forge-Agent-Collaboration provides the capability to coordinate multiple engineering responsibilities during software development. Its purpose is to ensure that Agents collaborate effectively while maintaining clear ownership, communication boundaries and decision authority. Forge-Agent-Collaboration enables structured cooperation between human developers, AI agents and specialist engineering roles.",
  "primaryTemplates": [
    "Session-Summary-template.md"
  ],
  "supportingTemplates": [
    "Project-Definition-template.md",
    "Glossary-template.md"
  ]
}
```



## Purpose

Forge-Agent-Collaboration provides the capability to coordinate multiple engineering responsibilities during software development.

Its purpose is to ensure that Agents collaborate effectively while maintaining clear ownership, communication boundaries and decision authority.

Forge-Agent-Collaboration enables structured cooperation between human developers, AI agents and specialist engineering roles.

---

# Responsibility

Forge-Agent-Collaboration is responsible for:

* Coordinating multiple Agents
* Defining collaboration patterns
* Maintaining responsibility boundaries
* Supporting handoffs between roles
* Preventing conflicting decisions
* Ensuring shared understanding

Forge-Agent-Collaboration does not:

* Replace Agent responsibilities
* Assign project priorities
* Override Workflow
* Make technical decisions
* Replace specialist Skills

---

# When To Use

Apply Forge-Agent-Collaboration when:

* Multiple Agents are involved
* Work crosses engineering disciplines
* A handoff is required
* Specialist review is needed
* Dependencies exist between responsibilities
* Different perspectives are required

---

# When Not To Use

Do not use Forge-Agent-Collaboration when:

* A single Agent can complete the work independently
* No responsibility transition exists
* The activity is a simple execution task

---

# Inputs

Forge-Agent-Collaboration uses:

## Task Context

Including:

* Objective
* Scope
* Current SDLC phase
* Constraints

---

## Agent Responsibilities

Including:

* Primary owner
* Supporting roles
* Required expertise

---

## Collaboration Requirements

Including:

* Required reviews
* Dependencies
* Handoffs
* Decision points

---

# Collaboration Principles

## Clear Ownership

Every outcome must have a clearly identified owner.

Supporting Agents contribute expertise but do not replace ownership.

---

## Shared Context

Agents participating in the same activity must operate from a common understanding of:

* Objectives
* Constraints
* Existing decisions
* Expected outcomes

---

## Respect Responsibility Boundaries

Agents should operate within their defined role.

Examples:

* Product Manager defines needs.
* Architect defines system structure.
* Engineers implement solutions.
* QA validates behaviour.
* Security evaluates risk.
* Technical Writer preserves knowledge.

---

## Decisions Have Owners

Important decisions must have:

* A responsible decision owner
* Supporting evidence
* Recorded rationale
* Traceable outcome

---

# Operating Procedure

## Step 1: Identify Collaboration Need

Determine whether the task requires:

* Multiple perspectives
* Specialist review
* Sequential handoff
* Parallel activities

---

## Step 2: Define Roles

Identify:

### Primary Agent

Responsible for achieving the outcome.

---

### Supporting Agents

Provide specialist input.

---

### Review Agents

Validate quality, risk or compliance.

---

## Step 3: Establish Collaboration Flow

Define:

* Sequence of activities
* Required inputs
* Expected outputs
* Handoff points

Example:

```text id="d4z8kf"
Product Manager
        |
        ▼
Architect
        |
        ▼
Backend Engineer
        |
        ▼
QA Engineer
        |
        ▼
Security Engineer
```

---

## Step 4: Maintain Alignment

During collaboration:

Monitor:

* Shared understanding
* Decision consistency
* Responsibility boundaries
* Progress toward objective

---

## Step 5: Complete Handoff

A handoff should include:

* Completed work
* Decisions made
* Outstanding questions
* Required next actions
* Relevant knowledge

---

# Collaboration Patterns

## Sequential Collaboration

Used when one responsibility depends on another.

Example:

```text
Requirements
      ↓
Architecture
      ↓
Implementation
      ↓
Verification
```

---

## Review Collaboration

Used when a specialist validates another Agent's work.

Example:

```text
Implementation
      ↓
Security Review
      ↓
Approval
```

---

## Parallel Collaboration

Used when independent work can occur simultaneously.

Example:

```text
          ┌── Documentation
Design ───┤
          └── Test Planning
```

---

# Interaction With Other Skills

## Forge-Task-Routing

Identifies the required Agents and Skills.

```text id="q0t6xj"
Forge-Task-Routing
        |
        ▼
Forge-Agent-Collaboration
```

---

## Forge-Session-Management

Records collaboration outcomes and handoffs.

```text id="r6m2pv"
Collaboration Outcome
        |
        ▼
Forge-Session-Management
```

---

## Forge-Knowledge-Management

Preserves important collaboration decisions.

```text id="k7p4ns"
Agent Decision
        |
        ▼
Forge-Knowledge-Management
```

---

## Templates

Use templates when collaboration patterns, handoffs and alignment details need to be captured consistently for shared work.

### Primary Template

* `Session-Summary-template.md` — use this template to capture collaboration outcomes, responsible agents, decisions and next actions when a dedicated collaboration template is not available.

### Supporting Templates

* `Project-Definition-template.md` — use when collaboration details must be linked to the project context.
* `Glossary-template.md` — use when collaboration outcomes include domain terminology that should be preserved.

### How To Use Templates

* Copy the selected template into project documentation.
* Preserve template headings and replace guidance text with project-specific collaboration details.
* Remove instructional guidance from the final output after completing the sections.
* Apply machine-readable metadata as described in `Framework/07-Templates/README.md` when automation or discovery is required.

---

# Standards Applied

Forge-Agent-Collaboration must follow:

* Workflow Standards
* Agent responsibility definitions
* Documentation Standards
* Decision recording practices

---

# Success Criteria

Forge-Agent-Collaboration is successful when:

✓ Responsibilities are clear

✓ Ownership is established

✓ Agents share required context

✓ Handoffs contain sufficient information

✓ Conflicting decisions are avoided

✓ Collaboration improves engineering outcomes

---

# ForgeOS Principle

Software engineering is a coordinated discipline, not a sequence of isolated tasks.

Forge-Agent-Collaboration enables humans and AI agents to work together through defined responsibilities, shared context and controlled handoffs.
