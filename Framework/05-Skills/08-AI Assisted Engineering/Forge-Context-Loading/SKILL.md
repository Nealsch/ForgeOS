# Forge-Context-Loading

```json
{
  "skill": "Forge-Context-Loading",
  "category": "08-AI Assisted Engineering",
  "purpose": "Forge-Context-Loading provides the capability to establish sufficient project understanding before performing engineering work. Its purpose is to ensure that AI agents do not begin implementation based on incomplete assumptions, missing information or isolated instructions. The Skill enables targeted knowledge retrieval while avoiding unnecessary context loading.",
  "primaryTemplates": [
    "Session-Summary-template.md"
  ],
  "supportingTemplates": [
    "Clarified-Intent-Summary-template.md",
    "Project-Definition-template.md"
  ]
}
```



## Purpose

Forge-Context-Loading provides the capability to establish sufficient project understanding before performing engineering work.

Its purpose is to ensure that AI agents do not begin implementation based on incomplete assumptions, missing information or isolated instructions.

The Skill enables targeted knowledge retrieval while avoiding unnecessary context loading.

---

# Responsibility

Forge-Context-Loading is responsible for:

* Understanding the current project state
* Identifying relevant information sources
* Loading only required context
* Detecting missing knowledge
* Identifying potential ambiguity
* Preparing the Agent for the current task

Forge-Context-Loading does not:

* Make implementation decisions
* Create architecture
* Write production code
* Replace requirements analysis
* Replace project documentation
* Determine final task ownership

---

# When To Use

Apply Forge-Context-Loading when:

* Starting a new development session
* Beginning work on a new task
* Resuming previous work
* Reviewing an existing implementation
* Making changes to an existing project
* Investigating defects
* Performing architecture or design activities

---

# When Not To Use

Do not use Forge-Context-Loading for:

* Simple questions that do not require project knowledge
* General programming explanations
* Standalone research unrelated to a project
* Tasks where complete context is already provided

---

# Inputs

Forge-Context-Loading uses:

## Project Context

Examples:

* Project definition
* Requirements
* Architecture documentation
* Glossary
* Decisions
* Roadmap
* Current work items

---

## Current Task

Information about:

* Requested outcome
* Current objective
* Existing constraints
* Expected deliverable

---

## Project Structure

The Skill should identify:

* Available documentation
* Knowledge locations
* Project standards
* Existing artefacts

---

# Operating Procedure

## Step 1: Identify Project

Confirm:

* Active project
* Project purpose
* Current objectives
* Available project documentation

If project context does not exist, identify the missing information before continuing.

---

## Step 2: Identify Current Work State

Review the current project state.

Relevant information may include:

* Current SDLC phase
* Active iteration
* Current task
* Previous session handoff
* Outstanding issues

Avoid assuming that previous work is complete.

---

## Step 3: Load Core Knowledge

Load the minimum required project knowledge.

Priority order:

1. Project definition
2. Current project state
3. Active task
4. Relevant decisions
5. Relevant requirements
6. Relevant architecture
7. Relevant standards

Do not load unrelated documentation unless required.

---

## Step 4: Identify Applicable Constraints

Determine applicable constraints from:

* Governance
* Technology requirements
* Security requirements
* Coding conventions
* Existing decisions

Existing decisions should be respected unless explicitly reviewed.

---

## Step 5: Detect Missing Information

Identify:

* Missing requirements
* Undefined terminology
* Conflicting documentation
* Missing decisions
* Unclear objectives

Do not invent missing information.

---

## Step 6: Determine Need For Clarification

If uncertainty affects the outcome:

Recommend applying:

**Forge-Grill**

before continuing.

Examples:

* Multiple possible interpretations
* Undefined business rules
* Missing acceptance criteria
* Conflicting requirements

---

## Step 7: Produce Context Summary

Create a concise summary containing:

```text
Project:

Objective:

Current Phase:

Current Task:

Relevant Knowledge:

Relevant Decisions:

Applicable Standards:

Known Constraints:

Missing Information:

Clarification Required:
```

This summary becomes the foundation for subsequent engineering activities.

---

## Templates

Use templates when context summaries need to be captured consistently for handoff, routing and clarification.

### Primary Template

* `Session-Summary-template.md` — use this template to capture project context, objectives, decisions, constraints, missing information and clarification needs.

### Supporting Templates

* `Clarified-Intent-Summary-template.md` — use when context loading is closely tied to clarified requirement intent.
* `Project-Definition-template.md` — use when context loading must be anchored in project definitions.

### How To Use Templates

* Copy the selected template into project documentation.
* Preserve template headings and replace guidance text with project-specific context details.
* Remove instructional guidance from the final output after completing the sections.
* Apply machine-readable metadata as described in `Framework/07-Templates/README.md` when automation or discovery is required.

---

# Interaction With Other Skills

## Forge-Grill

Used when context reveals unresolved ambiguity or missing requirements.

Relationship:

```text
Forge-Context-Loading
          |
          ▼
    Forge-Grill
```

---

## Forge-Task-Routing

Used after sufficient context exists to determine required capabilities.

Relationship:

```text
Forge-Context-Loading
          |
          ▼
Forge-Task-Routing
```

---

## Forge-Knowledge-Management

Used to preserve important information discovered during work.

Relationship:

```text
Work Completed
      |
      ▼
Forge-Knowledge-Management
```

---

# Standards Applied

Forge-Context-Loading must follow:

* Documentation Standards
* Knowledge Management practices
* Versioning principles
* Project-specific documentation rules

---

# Success Criteria

Forge-Context-Loading is successful when:

✓ The active project is understood

✓ Relevant knowledge has been identified

✓ Unnecessary context has been avoided

✓ Existing decisions have been considered

✓ Missing information has been identified

✓ Ambiguity has been detected

✓ The Agent is prepared for the next workflow activity

---

# ForgeOS Principle

Engineering work should begin with understanding.

Forge-Context-Loading ensures that AI agents operate from project knowledge rather than assumptions, enabling consistent, traceable and reliable software development.
