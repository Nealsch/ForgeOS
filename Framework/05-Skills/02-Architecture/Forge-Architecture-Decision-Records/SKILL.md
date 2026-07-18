# Forge-Architecture-Decision-Records

```json
{
  "skill": "Forge-Architecture-Decision-Records",
  "category": "02-Architecture",
  "purpose": "Forge-Architecture-Decision-Records provides the capability to identify, document and maintain significant architectural decisions throughout the software lifecycle. Its purpose is to preserve architectural reasoning, provide historical context and prevent inconsistent future decisions. Architectural decisions capture not only what was chosen, but why it was chosen and what consequences resulted.",
  "outputs": [
    "text\nArchitecture Decision Record\n\nDecision History\n\nAlternative Analysis\n\nArchitectural Knowledge\n\nDecision Traceability\n"
  ],
  "primaryTemplates": [
    "Architecture-Decision-Record-template.md"
  ],
  "supportingTemplates": [
    "Glossary-template.md",
    "Project-Definition-template.md"
  ]
}
```



## Purpose

Forge-Architecture-Decision-Records provides the capability to identify, document and maintain significant architectural decisions throughout the software lifecycle.

Its purpose is to preserve architectural reasoning, provide historical context and prevent inconsistent future decisions.

Architectural decisions capture not only what was chosen, but why it was chosen and what consequences resulted.

---

# Responsibility

Forge-Architecture-Decision-Records is responsible for:

* Identifying decisions that require documentation
* Recording architectural choices
* Capturing decision context and reasoning
* Documenting alternatives considered
* Recording consequences and trade-offs
* Maintaining architectural history
* Supporting future engineering decisions

Forge-Architecture-Decision-Records does not:

* Make architectural decisions
* Replace architecture design activities
* Define implementation standards
* Replace project documentation
* Store temporary implementation notes

---

# When To Use

Apply Forge-Architecture-Decision-Records when:

* A significant architecture choice is made
* Multiple approaches were considered
* A decision has long-term impact
* A technology or pattern is selected
* A trade-off must be remembered
* Future developers or AI agents need historical context

---

# When Not To Use

Do not use Forge-Architecture-Decision-Records for:

* Minor coding decisions
* Temporary experiments
* Routine implementation choices
* Personal preferences without system impact
* Changes that do not affect future architecture

---

# Inputs

Forge-Architecture-Decision-Records uses:

## Architecture Context

Including:

* System architecture
* Component design
* Constraints
* Requirements

---

## Decision Context

Including:

* Problem requiring a decision
* Available options
* Evaluation criteria
* Risks
* Trade-offs

---

## Existing Decisions

Including:

* Previous ADRs
* Architectural principles
* Established patterns

---

# ADR Principles

## Record Decisions, Not Discussions

An ADR should capture the final decision and reasoning.

It is not a meeting transcript.

---

## Explain Why

The reasoning behind a decision is often more valuable than the decision itself.

---

## Consider Alternatives

Good decisions demonstrate that alternatives were evaluated.

---

## Make Consequences Visible

Every decision creates benefits and trade-offs.

---

## Preserve Historical Context

A decision that seems unusual without context may be correct when historical constraints are understood.

---

# ADR Structure

ForgeOS ADRs should contain:

```text
Decision Title

Status

Context

Problem

Decision

Alternatives Considered

Consequences

Related Requirements

Related Decisions

Date

Decision Owner
```

---

# Operating Procedure

## Step 1: Identify Significant Decisions

Determine whether the decision affects:

* System structure
* Data architecture
* Integration approach
* Security posture
* Scalability
* Maintainability
* Long-term technical direction

---

## Step 2: Capture Context

Document:

* The problem being solved
* The forces influencing the decision
* Existing constraints

---

## Step 3: Evaluate Alternatives

Record:

* Options considered
* Benefits
* Limitations
* Risks

Avoid documenting only the chosen option.

---

## Step 4: Record the Decision

Document:

* Selected approach
* Reasoning
* Expected outcomes

---

## Step 5: Document Consequences

Capture:

* Benefits created
* Limitations introduced
* Future considerations

---

## Step 6: Link Related Knowledge

Connect the decision to:

* Requirements
* Architecture documentation
* Standards
* Other decisions

Maintain traceability.

---

# Outputs

Forge-Architecture-Decision-Records produces:

```text
Architecture Decision Record

Decision History

Alternative Analysis

Architectural Knowledge

Decision Traceability
```

---

## Templates

Use templates when architecture decisions need to be captured in a consistent, traceable record.

### Primary Template

* `Architecture-Decision-Record-template.md` — use this template to record the decision, alternatives, reasoning, consequences and traceability.

### Supporting Templates

* `Glossary-template.md` — use when decision records need clear domain definition for architectural terminology.
* `Project-Definition-template.md` — use when decisions must be linked to project scope or objectives.

### How To Use Templates

* Copy the selected template into project documentation.
* Preserve template headings and replace guidance text with project-specific decision details.
* Remove instructional guidance from the final output after completing the sections.
* Apply machine-readable metadata as described in `Framework/07-Templates/README.md` when automation or discovery is required.

---

# Storage Guidelines

Project ADRs should be stored within the project documentation structure.

Example:

```text
docs/
└── decisions/
    ├── ADR-0001-workspace-model.md
    ├── ADR-0002-data-storage-approach.md
    └── ADR-0003-authentication-model.md
```

ForgeOS provides the capability.

Projects maintain their own decisions.

---

# Interaction With Other Skills

## Forge-Solution-Architecture

Identifies decisions requiring documentation.

```text
Architecture Design
        |
        ▼
Architecture Decision
        |
        ▼
Forge-Architecture-Decision-Records
```

---

## Forge-Knowledge-Management

Uses ADRs as long-term project knowledge.

---

## Forge-Context-Loading

Loads relevant decisions before future work begins.

---

## Forge-Grill

May identify unresolved decisions requiring explicit resolution.

---

# Standards Applied

Forge-Architecture-Decision-Records applies:

* Architecture Standards
* Documentation Standards
* Governance Standards

---

# Success Criteria

Forge-Architecture-Decision-Records is successful when:

✓ Important decisions are captured

✓ Reasoning is preserved

✓ Alternatives are understood

✓ Consequences are visible

✓ Future changes can respect previous decisions

✓ Project knowledge survives across development sessions

---

# ForgeOS Principle

A system is shaped by its decisions.

Forge-Architecture-Decision-Records ensures those decisions remain visible, understandable and reusable throughout the life of the project.
