# Forge-Session-Management

```json
{
  "skill": "Forge-Session-Management",
  "category": "08-AI Assisted Engineering",
  "purpose": "Forge-Session-Management provides the capability to manage the lifecycle of AI-assisted engineering sessions. Its purpose is to create continuity between development sessions by establishing clear entry conditions, maintaining session awareness and preserving the state of work when a session ends. A session represents a defined period of engineering activity with a known objective, controlled context and documented outcome.",
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

Forge-Session-Management provides the capability to manage the lifecycle of AI-assisted engineering sessions.

Its purpose is to create continuity between development sessions by establishing clear entry conditions, maintaining session awareness and preserving the state of work when a session ends.

A session represents a defined period of engineering activity with a known objective, controlled context and documented outcome.

---

# Responsibility

Forge-Session-Management is responsible for:

* Establishing session entry conditions
* Recording session objectives
* Maintaining awareness of current work
* Tracking progress during a session
* Capturing important outcomes
* Creating session handoffs
* Preparing future sessions

Forge-Session-Management does not:

* Decide project priorities
* Replace project planning
* Perform technical implementation
* Maintain all project knowledge
* Override workflow requirements

---

# When To Use

Apply Forge-Session-Management when:

* Starting an engineering session
* Resuming previous work
* Switching between tasks
* Ending a development session
* Transferring work between sessions
* Recovering context after interruption

---

# When Not To Use

Do not use Forge-Session-Management when:

* Performing a simple question-and-answer interaction
* No project work is being performed
* A task does not require continuity

---

# Inputs

Forge-Session-Management uses:

## Session Request

Examples:

* New development session
* Resume previous session
* Continue unfinished work
* Close current session

---

## Project Context

Including:

* Current project state
* Active work items
* Previous session handoff
* Current SDLC phase

---

## Session Template

The standard session structure defined by ForgeOS Templates.

---

# Session Lifecycle

A session follows this lifecycle:

```text
Session Start
      |
      ▼
Review Previous State
      |
      ▼
Establish Current Objective
      |
      ▼
Load Required Context
      |
      ▼
Perform Engineering Work
      |
      ▼
Capture Outcomes
      |
      ▼
Create Handoff
      |
      ▼
Session End
```

---

# Operating Procedure

## Session Start

When a session begins:

Confirm:

* Project
* Current objective
* Previous session state
* Current SDLC phase
* Expected outcome

If previous work exists, review the previous session handoff.

---

## Establish Session Context

Determine:

* What is being worked on
* Why it is being worked on
* What has already been completed
* What remains outstanding

The session should have a clearly defined purpose.

---

## Maintain Session Awareness

During the session, maintain awareness of:

* Current task
* Decisions made
* Changes introduced
* Problems discovered
* Outstanding questions

Important information should be captured before session completion.

---

## Session Completion

Before ending a session:

Capture:

* Completed work
* Incomplete work
* Decisions made
* Problems encountered
* Files changed
* Next recommended actions

---

## Create Session Handoff

Generate a handoff document containing sufficient information for the next session.

The handoff should allow another engineering session to continue without repeating previous investigation.

---

# Session Handoff Structure

A session handoff should contain:

```text
Session Information

Project:

Session Date:

Session Objective:


Completed Work

-


Current State

-


Decisions Made

-


Issues / Blockers

-


Outstanding Work

-


Next Recommended Action

-
```

---

## Templates

Use templates when session outcomes and handoff details need to be captured consistently for the next engineering iteration.

### Primary Template

* `Session-Summary-template.md` — use this template to record completed work, outstanding actions, decisions and next steps.

### Supporting Templates

* `Project-Definition-template.md` — use when session output must be linked to project context.
* `Glossary-template.md` — use when session handoff includes terminology or definitions that should be preserved.

### How To Use Templates

* Copy the selected template into project documentation.
* Preserve template headings and replace guidance text with project-specific session details.
* Remove instructional guidance from the final output after completing the sections.
* Apply machine-readable metadata as described in `Framework/07-Templates/README.md` when automation or discovery is required.

---

# Interaction With Other Skills

## Forge-Context-Loading

Used at session start to establish required understanding.

```text
Session Start
      |
      ▼
Forge-Session-Management
      |
      ▼
Forge-Context-Loading
```

---

## Forge-Knowledge-Management

Used to preserve information that should become project knowledge.

```text
Session Outcome
      |
      ▼
Forge-Knowledge-Management
```

---

## Forge-Task-Routing

Used when the session objective requires capability selection.

```text
Session Objective
      |
      ▼
Forge-Task-Routing
```

---

# Standards Applied

Forge-Session-Management must follow:

* Documentation Standards
* Versioning principles
* Knowledge management practices
* Workflow requirements

---

# Success Criteria

Forge-Session-Management is successful when:

✓ Session objective is clear

✓ Previous context is available

✓ Current work state is understood

✓ Important outcomes are captured

✓ Future sessions can continue efficiently

✓ Knowledge is not lost between sessions

---

# ForgeOS Principle

Engineering progress should survive beyond individual sessions.

Forge-Session-Management ensures that AI-assisted development remains continuous, traceable and predictable across time.
