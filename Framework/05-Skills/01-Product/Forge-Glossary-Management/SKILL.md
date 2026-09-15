# Forge-Glossary-Management

```json
{
  "skill": "Forge-Glossary-Management",
  "category": "01-Product",
  "purpose": "Forge-Glossary-Management provides the capability to establish and maintain a shared project vocabulary — defining domain and engineering terms, resolving synonym and ambiguity conflicts, and keeping definitions consistent across requirements, design, code and documentation so that every artefact uses words the same way.",
  "outputs": [
    "Project glossary (terms, definitions, aliases)",
    "Ambiguity and conflict resolutions",
    "Terminology feedback into requirements and documentation"
  ],
  "primaryTemplates": [
    "Glossary-template.md"
  ],
  "supportingTemplates": [
    "Requirements-Specification-template.md"
  ]
}
```

## Purpose

Forge-Glossary-Management eliminates the cheapest class of defect: two people using one word for two things. It owns the project's vocabulary as a managed artefact — established at Specify, enforced during Design and Develop, and reconciled with the Framework's own Glossary (12-Glossary) so project terms never silently redefine framework terms.

It is technology-independent. Used primarily by the **AI Program Manager** and **Business Analyst** during **Specify**; consumed by every authoring skill.

---

# Responsibility

Forge-Glossary-Management is responsible for:

* Identifying domain and engineering terms that need shared definition.
* Writing precise, testable definitions with stakeholders, not for them.
* Resolving synonyms, homonyms and scope conflicts; recording the chosen term and retired aliases.
* Distinguishing project-specific terms from Framework terms; preventing silent redefinition of framework vocabulary.
* Keeping the glossary current as requirements, design and code evolve.
* Flagging unclear terminology found in artefacts back to their owning skill.

It does **not**:

* Write requirements or user stories (Forge-Requirements-Elicitation and Forge-Requirements-Analysis).
* Own the Framework's glossary content (Framework layer, 12-Glossary).
* Enforce coding naming conventions (Coding Standards / Forge-Code-Review).

---

# When To Use

* At the start of **Specify**, before large-scale requirements elicitation.
* When stakeholders use the same word with different meanings, or different words for the same thing.
* When onboarding new collaborators to a domain-heavy project.
* When documentation review reveals ambiguous or conflicting terminology.

# When Not To Use

* To define Framework-level concepts — use the Framework Glossary and its change process.
* To rename code identifiers — follow the project's Coding Standards and Forge-Refactoring.

---

# Inputs

* Requirements artefacts, meeting notes and stakeholder interviews.
* Existing glossary entries (project and Framework).
* Documentation and code where terms appear.

# Method

## Step 1 — Harvest Terms
Collect candidate terms from requirements, discussions and existing documentation.

## Step 2 — Classify
Distinguish domain terms, engineering terms, and terms already defined by the Framework.

## Step 3 — Define
Draft definitions with stakeholders; prefer testable, example-bearing definitions over genus-differentia prose.

## Step 4 — Resolve Conflicts
Identify synonyms and homonyms; the Product Owner disposes on contested choices; record retired aliases.

## Step 5 — Publish
Maintain the glossary as a single authoritative project artefact, cross-linked from requirements and design docs.

## Step 6 — Maintain
Review on change; add terms when they first cause ambiguity, not after.

---

# Outputs

* Project glossary with authoritative definitions and aliases.
* Recorded conflict resolutions and their rationale.
* Terminology corrections routed to owning artefacts.

---

# Standards Applied

* Documentation Standards
* Requirements Standards (traceable, unambiguous language)

---

# Interaction With Other Skills

* **Forge-Requirements-Elicitation / Forge-Requirements-Analysis** — glossary terms are used verbatim in requirements.
* **Forge-Documentation-Generation** — documentation must conform to the glossary.
* **Forge-Scope-Definition** — scope terms ("user", "tenant", "workspace") are defined here.
* **Framework Glossary (12-Glossary)** — project terms must not redefine framework terms; conflicts escalate via change management.

---

# Success Criteria

Forge-Glossary-Management is successful when:

* Every term with more than one plausible meaning has one authoritative definition.
* Requirements, design and documentation use glossary terms consistently.
* Project terms never silently conflict with Framework terms.
* New collaborators resolve vocabulary questions from the glossary, not from tribal knowledge.