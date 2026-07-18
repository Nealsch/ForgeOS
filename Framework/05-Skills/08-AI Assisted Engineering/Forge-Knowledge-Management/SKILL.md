# Forge-Knowledge-Management

```json
{
  "skill": "Forge-Knowledge-Management",
  "category": "08-AI Assisted Engineering",
  "purpose": "Forge-Knowledge-Management provides the capability to capture, organise and maintain reusable project knowledge throughout the Software Development Lifecycle. Its purpose is to ensure that valuable engineering information is preserved, discoverable and available for future work. Knowledge should accumulate over time, reducing repeated investigation and improving consistency across the project.",
  "primaryTemplates": [
    "Project-Definition-template.md"
  ],
  "supportingTemplates": [
    "Glossary-template.md",
    "Session-Summary-template.md"
  ]
}
```



## Purpose

Forge-Knowledge-Management provides the capability to capture, organise and maintain reusable project knowledge throughout the Software Development Lifecycle.

Its purpose is to ensure that valuable engineering information is preserved, discoverable and available for future work.

Knowledge should accumulate over time, reducing repeated investigation and improving consistency across the project.

---

# Responsibility

Forge-Knowledge-Management is responsible for:

* Identifying knowledge worth preserving
* Recording important discoveries
* Maintaining knowledge structures
* Supporting knowledge retrieval
* Preventing knowledge loss
* Improving future engineering context

Forge-Knowledge-Management does not:

* Replace documentation standards
* Make technical decisions
* Approve architectural changes
* Replace project ownership
* Store unnecessary temporary information

---

# When To Use

Apply Forge-Knowledge-Management when:

* A significant decision has been made
* A new pattern has been discovered
* A recurring problem has been identified
* A lesson has been learned
* A reusable solution has been created
* Project terminology has been established
* Technical understanding has changed

---

# When Not To Use

Do not use Forge-Knowledge-Management for:

* Temporary notes
* Unverified assumptions
* Duplicate information
* Personal reminders
* Short-lived implementation details

Not all session information becomes permanent knowledge.

---

# Knowledge Classification

Information should be classified before being stored.

## Project Definition

Stable information describing:

* Purpose
* Objectives
* Scope
* Users
* Business context

---

## Requirements Knowledge

Information describing:

* Expected behaviour
* User needs
* Acceptance criteria
* Business rules

---

## Architecture Knowledge

Information describing:

* System structure
* Design decisions
* Technical boundaries
* Integration approaches

---

## Decision Knowledge

Information describing:

* Important choices
* Alternatives considered
* Reasons for decisions
* Consequences

---

## Operational Knowledge

Information describing:

* Deployment procedures
* Troubleshooting
* Maintenance practices
* Operational requirements

---

## Lessons Learned

Information describing:

* What worked
* What failed
* Improvements identified
* Recurring issues

---

# Operating Procedure

## Step 1: Identify Knowledge

During engineering activity, identify information that may benefit future work.

Examples:

* "This system requires a specific configuration"
* "This approach was rejected because..."
* "This problem occurs under these conditions"
* "This naming convention has been adopted"

---

## Step 2: Determine Knowledge Value

Evaluate whether the information is:

### Temporary

Useful only for current work.

Example:

"Changed this file temporarily while debugging."

No permanent storage required.

---

### Project Knowledge

Useful throughout the project.

Example:

"The application uses this authentication pattern."

Should be recorded.

---

### Framework Knowledge

Useful across multiple projects.

Example:

"All deployments require this validation step."

Consider contribution back to ForgeOS.

---

## Step 3: Record Knowledge

Capture information in the appropriate project documentation location.

Examples:

```text id="x5j4s2"
docs/

PROJECT-DEFINITION.md
ARCHITECTURE.md
DECISIONS.md
GLOSSARY.md
PROJECT-JOURNAL.md
CHANGELOG.md
```

---

## Step 4: Maintain Knowledge Quality

Knowledge should be:

* Accurate
* Current
* Traceable
* Understandable
* Free from duplication

Outdated knowledge should be updated or retired.

---

## Step 5: Link Related Knowledge

Where appropriate, connect related information:

Examples:

* Requirement → Design decision
* Decision → Implementation
* Issue → Resolution
* Session → Permanent documentation

---

# Knowledge Lifecycle

Knowledge follows this lifecycle:

```text id="a2q8rz"
Discovery
    |
    ▼
Capture
    |
    ▼
Review
    |
    ▼
Store
    |
    ▼
Maintain
    |
    ▼
Improve
```

---

## Templates

Use templates when project knowledge needs to be captured consistently, preserved, and linked to decisions, requirements and future work.

### Primary Template

* `Project-Definition-template.md` — use this template to capture structured project knowledge and its relationship to requirements, decisions and architecture.

### Supporting Templates

* `Glossary-template.md` — use when knowledge documentation includes domain terminology.
* `Session-Summary-template.md` — use when knowledge comes from session outcomes or handoffs.

### How To Use Templates

* Copy the selected template into project documentation.
* Preserve template headings and replace guidance text with project-specific knowledge details.
* Remove instructional guidance from the final output after completing the sections.
* Apply machine-readable metadata as described in `Framework/07-Templates/README.md` when automation or discovery is required.

---

# Interaction With Other Skills

## Forge-Session-Management

Sessions create temporary information that may become permanent knowledge.

```text id="4r8v2f"
Session Outcome
      |
      ▼
Forge-Knowledge-Management
```

---

## Forge-Context-Loading

Knowledge Management creates the information that Context Loading retrieves.

```text id="8gq2lx"
Stored Knowledge
      |
      ▼
Forge-Context-Loading
```

---

## Forge-Grill

Clarified requirements and decisions may become project knowledge.

```text id="f6m0xk"
Clarified Intent
      |
      ▼
Forge-Knowledge-Management
```

---

# Standards Applied

Forge-Knowledge-Management must follow:

* Documentation Standards
* Versioning principles
* Traceability principles
* Decision recording practices
* Knowledge maintenance practices

---

# Success Criteria

Forge-Knowledge-Management is successful when:

✓ Important information is preserved

✓ Knowledge is stored in appropriate locations

✓ Future work can reuse existing understanding

✓ Duplicate investigation is reduced

✓ Decisions remain traceable

✓ Project intelligence improves over time

---

# ForgeOS Principle

Knowledge created during engineering should become an asset, not disappear when a session ends.

Forge-Knowledge-Management transforms individual engineering experiences into shared project intelligence.
