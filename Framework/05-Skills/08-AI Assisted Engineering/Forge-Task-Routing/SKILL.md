# Forge-Task-Routing

```json
{
  "skill": "Forge-Task-Routing",
  "category": "08-AI Assisted Engineering",
  "purpose": "Forge-Task-Routing provides the capability to classify engineering work and determine the appropriate Agent and Skills required to complete the task. Its purpose is to ensure that work is performed by the correct engineering capability while maintaining clear responsibility boundaries. Forge-Task-Routing converts a defined objective into an appropriate execution path.",
  "primaryTemplates": [
    "Session-Summary-template.md"
  ],
  "supportingTemplates": [
    "Project-Definition-template.md",
    "Clarified-Intent-Summary-template.md"
  ]
}
```



## Purpose

Forge-Task-Routing provides the capability to classify engineering work and determine the appropriate Agent and Skills required to complete the task.

Its purpose is to ensure that work is performed by the correct engineering capability while maintaining clear responsibility boundaries.

Forge-Task-Routing converts a defined objective into an appropriate execution path.

---

# Responsibility

Forge-Task-Routing is responsible for:

* Classifying the nature of work
* Identifying required capabilities
* Selecting the primary responsible Agent
* Identifying supporting Skills
* Ensuring appropriate ownership
* Preventing unsuitable execution paths

Forge-Task-Routing does not:

* Perform implementation work
* Make architectural decisions
* Resolve unclear requirements
* Replace human judgement
* Override Workflow or Standards

---

# When To Use

Apply Forge-Task-Routing when:

* A task has been sufficiently clarified
* A new work item is created
* A change request requires execution
* Multiple engineering disciplines may be involved
* Responsibility needs to be assigned
* The appropriate capability is uncertain

---

# When Not To Use

Do not use Forge-Task-Routing when:

* The objective is unclear
* Requirements require clarification
* The work is purely informational
* A previously assigned Agent and Skill path is already established

If intent is unclear, use:

**Forge-Grill**

before routing.

---

# Inputs

Forge-Task-Routing uses:

## Defined Objective

Including:

* Desired outcome
* Scope
* Acceptance criteria
* Constraints

---

## Project Context

Including:

* Current SDLC phase
* Existing architecture
* Project decisions
* Applicable rules

---

## Available Capabilities

Including:

* Agents
* Engineering Skills
* AI Assisted Engineering Skills
* Project-specific capabilities

---

# Operating Procedure

## Step 1: Classify the Work

Identify the primary activity type.

Examples:

### Product

* Requirements definition
* Scope clarification
* Prioritisation
* Stakeholder analysis

### Architecture

* System design
* Technical evaluation
* Integration planning
* Architecture review

### Engineering

* Feature implementation
* Refactoring
* Debugging
* Performance improvement

### Quality

* Test planning
* Verification
* Defect analysis

### Delivery

* Deployment
* Infrastructure
* Release activities

### Documentation

* Knowledge capture
* Technical writing
* Documentation improvement

---

## Step 2: Identify Primary Ownership

Assign one primary Agent responsible for the outcome.

Examples:

| Work Type               | Primary Agent     |
| ----------------------- | ----------------- |
| Requirements            | Product Manager   |
| Architecture            | Architect         |
| Backend implementation  | Backend Engineer  |
| Frontend implementation | Frontend Engineer |
| Verification            | QA Engineer       |
| Security review         | Security Engineer |
| Deployment              | DevOps Engineer   |
| Documentation           | Technical Writer  |

A task must have a clear primary owner.

---

## Step 3: Identify Required Skills

Determine the capabilities required to complete the work.

Select:

* Primary Skill
* Supporting Skills
* Applicable Standards

Avoid selecting unnecessary Skills.

---

## Step 4: Resolve Capability Gaps

If required capability does not exist:

* Identify the missing capability
* Recommend creation of a new Skill
* Do not substitute an unsuitable Skill

---

## Step 5: Produce Routing Decision

Create a routing summary.

Recommended format:

```text id="n8h4w4"
Task:

Classification:

Primary Agent:

Primary Skill:

Supporting Skills:

Applicable Standards:

Execution Notes:

Capability Gaps:
```

---

## Templates

Use templates when routing decisions need to be documented in a consistent and auditable way for task assignment and work handoff.

### Primary Template

* `Session-Summary-template.md` — use this template to capture the routing decision in a structured summary when a dedicated routing template is not yet available.

### Supporting Templates

* `Project-Definition-template.md` — use when routing decisions must be linked to project context.
* `Clarified-Intent-Summary-template.md` — use when routing is based on clarified intent from Forge-Grill.

### How To Use Templates

* Copy the selected template into project documentation.
* Preserve template headings and replace guidance text with project-specific routing details.
* Remove instructional guidance from the final output after completing the sections.
* Apply machine-readable metadata as described in `Framework/07-Templates/README.md` when automation or discovery is required.

---

# Routing Principles

## Single Primary Owner

Every task must have one primary responsible Agent.

Supporting Agents or Skills may contribute but do not replace ownership.

---

## Capability Over Convenience

Tasks should be routed based on required capability, not the easiest available path.

---

## No Hidden Responsibility

The responsible Agent and required Skills should be visible before execution begins.

---

## Preserve Boundaries

Routing determines responsibility.

It does not permit Agents to bypass Standards, Workflow or Governance.

---

# Interaction With Other Skills

## Forge-Context-Loading

Provides the information required for accurate routing.

```text
Forge-Context-Loading
          |
          ▼
Forge-Task-Routing
```

---

## Forge-Grill

Provides clarified intent before routing.

```text
Forge-Grill
      |
      ▼
Forge-Task-Routing
```

---

## Forge-Agent-Collaboration

Used when multiple Agents are required.

```text
Forge-Task-Routing
          |
          ▼
Forge-Agent-Collaboration
```

---

## Forge-Standards-Compliance

Used to validate the selected execution path and resulting work.

```text
Execution Complete
          |
          ▼
Forge-Standards-Compliance
```

---

# Standards Applied

Forge-Task-Routing must follow:

* Workflow Standards
* Agent responsibility definitions
* Skill governance principles
* Documentation Standards

---

# Success Criteria

Forge-Task-Routing is successful when:

✓ Work type is identified

✓ Ownership is assigned

✓ Required capabilities are identified

✓ Supporting capabilities are visible

✓ Responsibility boundaries are clear

✓ Execution can proceed through the correct path

---

# ForgeOS Principle

The right capability must be applied to the right problem.

Forge-Task-Routing ensures that AI-assisted engineering remains structured, predictable and aligned with professional engineering responsibilities.
