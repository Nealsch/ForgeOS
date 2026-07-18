# Forge-Data-Modelling

```json
{
  "skill": "Forge-Data-Modelling",
  "category": "02-Architecture",
  "purpose": "Forge-Data-Modelling provides the capability to define, structure and organise the information required by a software system. Its purpose is to create a clear understanding of the data a system manages, the relationships between information, and the rules governing how data is created, changed and used. Effective data modelling creates a stable foundation for application design, development and long-term maintenance.",
  "outputs": [
    "text\nData Model\n\nEntity Definitions\n\nRelationship Definitions\n\nData Ownership\n\nBusiness Rules\n\nLifecycle Considerations\n\nData Constraints\n\nOpen Questions\n"
  ],
  "primaryTemplates": [
    "Data-Model-template.md"
  ],
  "supportingTemplates": [
    "Glossary-template.md",
    "Architecture-Definition-template.md"
  ]
}
```



## Purpose

Forge-Data-Modelling provides the capability to define, structure and organise the information required by a software system.

Its purpose is to create a clear understanding of the data a system manages, the relationships between information, and the rules governing how data is created, changed and used.

Effective data modelling creates a stable foundation for application design, development and long-term maintenance.

---

# Responsibility

Forge-Data-Modelling is responsible for:

* Identifying important information concepts
* Defining entities and relationships
* Establishing data ownership
* Modelling information structures
* Identifying data lifecycle requirements
* Supporting consistency and integrity
* Communicating data concepts clearly

Forge-Data-Modelling does not:

* Select database technologies
* Write database implementation code
* Define SQL queries
* Manage database infrastructure
* Replace security or privacy analysis

---

# When To Use

Apply Forge-Data-Modelling when:

* Designing a new system
* Adding major features involving information
* Creating new business entities
* Integrating multiple data sources
* Existing data structures are unclear
* Data consistency is important

---

# When Not To Use

Do not use Forge-Data-Modelling when:

* The task has no meaningful data impact
* Performing simple implementation changes
* Writing queries against an already understood model
* Managing operational database tasks

---

# Inputs

Forge-Data-Modelling uses:

## Requirements

Including:

* Business concepts
* User workflows
* Functional requirements
* Data-related acceptance criteria

---

## Architecture Context

Including:

* System boundaries
* Component responsibilities
* Integration requirements

---

## Domain Knowledge

Including:

* Business terminology
* Rules
* Relationships
* Constraints

---

# Data Modelling Principles

## Model the Domain

Data structures should represent meaningful concepts rather than implementation convenience.

---

## Single Source of Truth

Information ownership should be clear.

Avoid unnecessary duplication.

---

## Consistency

Data relationships and rules should be understandable and predictable.

---

## Appropriate Detail

Models should contain enough detail to support implementation without unnecessary complexity.

---

## Future Change

Models should support expected evolution without excessive redesign.

---

# Types of Data Models

Forge-Data-Modelling may operate at different levels.

## Conceptual Model

Describes:

* Major concepts
* Business entities
* Relationships

Focus:

"What information exists?"

---

## Logical Model

Describes:

* Attributes
* Relationships
* Business rules
* Data constraints

Focus:

"How is information organised?"

---

## Physical Model

Describes:

* Storage implementation
* Database structures
* Technical details

Focus:

"How is information implemented?"

---

# Operating Procedure

## Step 1: Identify Information Concepts

Determine:

* Important entities
* Key information areas
* Data ownership

Avoid starting with tables or fields.

---

## Step 2: Define Relationships

Identify:

* How entities relate
* Relationship types
* Dependencies

Examples:

* One-to-one
* One-to-many
* Many-to-many

---

## Step 3: Define Data Rules

Capture:

* Required information
* Valid states
* Business constraints
* Lifecycle rules

---

## Step 4: Identify Data Lifecycle

Understand:

* Creation
* Modification
* Usage
* Archiving
* Removal

---

## Step 5: Consider Data Quality

Evaluate:

* Accuracy
* Completeness
* Consistency
* Ownership

---

## Step 6: Validate Against Requirements

Confirm:

* The model supports user needs
* Relationships represent real-world concepts
* No important information is missing

---

# Outputs

Forge-Data-Modelling produces:

```text
Data Model

Entity Definitions

Relationship Definitions

Data Ownership

Business Rules

Lifecycle Considerations

Data Constraints

Open Questions
```

---

## Templates

Use templates when data models must be documented consistently and aligned with architecture, domain definitions and implementation expectations.

### Primary Template

* `Data-Model-template.md` — use this template to document entities, relationships, ownership, constraints, rules and lifecycle information.

### Supporting Templates

* `Glossary-template.md` — use when domain terms need to be defined for data clarity.
* `Architecture-Definition-template.md` — use when the data model must remain aligned with the broader solution architecture.

### How To Use Templates

* Copy the selected template into project documentation.
* Preserve template headings and replace guidance text with project-specific data model details.
* Remove instructional guidance from the final output after completing the sections.
* Apply machine-readable metadata as described in `Framework/07-Templates/README.md` when automation or discovery is required.

---

# Interaction With Other Skills

## Forge-Solution-Architecture

Provides system context.

```text
Solution Architecture
        |
        ▼
Forge-Data-Modelling
```

---

## Forge-Requirements-Analysis

Provides business information requirements.

---

## Forge-Integration-Design

Uses data models to define information exchange.

---

## Forge-Database-Design

Future engineering-level capability that transforms models into implementation structures.

---

## Forge-Security-Assessment

Uses data models to identify sensitive information and protection requirements.

---

# Standards Applied

Forge-Data-Modelling applies:

* Architecture Standards
* Security Standards
* Documentation Standards
* Design Standards

---

# Success Criteria

Forge-Data-Modelling is successful when:

✓ Important information concepts are identified

✓ Relationships are understood

✓ Data ownership is clear

✓ Business rules are captured

✓ The model supports system requirements

✓ Future implementation has a clear information foundation

---

# ForgeOS Principle

Software systems exist to create, transform and use information.

Forge-Data-Modelling ensures that information structures are intentionally designed before they become embedded in software.
