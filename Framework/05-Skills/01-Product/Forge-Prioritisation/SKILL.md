# Forge-Prioritisation

```json
{
  "skill": "Forge-Prioritisation",
  "category": "01-Product",
  "purpose": "Forge-Prioritisation provides the capability to evaluate, compare and sequence proposed work based on value, risk, dependencies and strategic importance. Its purpose is to ensure engineering effort is directed toward the highest-value outcomes while balancing technical, operational and business considerations. Prioritisation helps teams make deliberate decisions about what should be built, when it should be built and why.",
  "outputs": [
    "text\nPrioritisation Assessment\n\nRanked Work Items\n\nDecision Criteria\n\nValue Assessment\n\nRisk Assessment\n\nDependencies\n\nTrade-offs\n\nRecommendation\n\nOutstanding Decisions\n"
  ],
  "primaryTemplates": [
    "Prioritisation-Matrix-template.md"
  ],
  "supportingTemplates": [
    "Roadmap-template.md",
    "Project-Definition-template.md"
  ]
}
```



## Purpose

Forge-Prioritisation provides the capability to evaluate, compare and sequence proposed work based on value, risk, dependencies and strategic importance.

Its purpose is to ensure engineering effort is directed toward the highest-value outcomes while balancing technical, operational and business considerations.

Prioritisation helps teams make deliberate decisions about what should be built, when it should be built and why.

---

# Responsibility

Forge-Prioritisation is responsible for:

* Evaluating competing work items
* Identifying relative importance
* Assessing value and impact
* Considering dependencies and constraints
* Supporting sequencing decisions
* Making prioritisation reasoning visible
* Recording prioritisation decisions

Forge-Prioritisation does not:

* Make business decisions without stakeholder input
* Replace product strategy
* Define technical implementation
* Estimate exact development effort
* Override established project decisions

---

# When To Use

Apply Forge-Prioritisation when:

* Multiple features compete for attention
* A backlog requires ordering
* Scope needs to be reduced
* Resources are limited
* Release contents need to be determined
* Trade-offs between value and effort are required

---

# When Not To Use

Do not use Forge-Prioritisation when:

* There is only one clearly defined task
* Requirements are not yet understood
* Technical investigation is still required
* A defect requires immediate resolution

---

# Inputs

Forge-Prioritisation uses:

## Work Items

Including:

* Requirements
* User stories
* Features
* Improvements
* Technical tasks

---

## Business Context

Including:

* Objectives
* User impact
* Strategic goals
* Deadlines
* Stakeholder priorities

---

## Engineering Context

Including:

* Dependencies
* Risks
* Complexity considerations
* Technical constraints

---

# Prioritisation Principles

Prioritisation should consider:

## Value

How much benefit does the work provide?

Examples:

* User benefit
* Business impact
* Operational improvement

---

## Urgency

How important is timing?

Examples:

* Regulatory deadlines
* Customer commitments
* Market opportunities

---

## Risk Reduction

Does the work reduce significant uncertainty or exposure?

Examples:

* Security improvements
* Technical risk reduction
* Infrastructure stability

---

## Dependencies

Does other work depend on this being completed?

Examples:

* Foundational capabilities
* Required architecture changes

---

## Effort and Complexity

How much investment is required?

Consider:

* Development effort
* Technical complexity
* Maintenance impact

---

# Operating Procedure

## Step 1: Gather Candidate Work

Identify items requiring prioritisation.

Examples:

* Features
* Improvements
* Technical debt
* Risks
* Operational work

---

## Step 2: Understand Each Item

For each item determine:

* Purpose
* Expected outcome
* Users affected
* Dependencies
* Constraints

---

## Step 3: Evaluate Value and Impact

Assess:

* Who benefits
* How significant the benefit is
* Whether it supports project objectives

---

## Step 4: Evaluate Risk and Dependencies

Identify:

* Blocking relationships
* Technical prerequisites
* Security concerns
* Operational impacts

---

## Step 5: Compare Options

Apply an appropriate prioritisation approach.

Examples:

* Value versus effort
* Risk versus reward
* Business impact
* Dependency ordering

The method should match project context.

---

## Step 6: Produce Prioritisation Recommendation

Document:

* Recommended ordering
* Reasoning
* Trade-offs
* Assumptions
* Outstanding decisions

---

## Step 7: Record Decisions

Where prioritisation creates significant project direction changes:

* Record the decision
* Capture reasoning
* Link to affected work items

---

# Outputs

Forge-Prioritisation produces:

```text
Prioritisation Assessment

Ranked Work Items

Decision Criteria

Value Assessment

Risk Assessment

Dependencies

Trade-offs

Recommendation

Outstanding Decisions
```

---

## Templates

Use templates when prioritisation work must be documented consistently and linked to delivery planning.

### Primary Template

* `Prioritisation-Matrix-template.md` — use this template to capture criteria, value, risk, dependencies, trade-offs and recommended rankings.

### Supporting Templates

* `Roadmap-template.md` — use when prioritisation outcomes need to be connected to release or product roadmaps.
* `Project-Definition-template.md` — use when prioritisation decisions require broader project context.

### How To Use Templates

* Copy the chosen template into project documentation.
* Preserve template headings and replace guidance with the actual prioritisation content.
* Remove instructional text after the template sections are complete.
* Follow `Framework/07-Templates/README.md` metadata guidance if using automation or discovery tools.

---

# Interaction With Other Skills

## Forge-Requirements-Analysis

Provides analysed work items.

```text
Requirements Analysis
        |
        ▼
Forge-Prioritisation
```

---

## Forge-User-Story-Definition

Provides user-focused work items.

---

## Forge-Project-Steward

Uses prioritisation decisions to maintain project alignment and workflow progression.

---

## Forge-Task-Routing

Uses prioritised work to determine execution order.

---

# Standards Applied

Forge-Prioritisation applies:

* Documentation Standards
* Architecture Standards where technical trade-offs exist
* Security Standards where risk is involved

---

# Success Criteria

Forge-Prioritisation is successful when:

✓ Work ordering is intentional

✓ Decisions are based on understood criteria

✓ Dependencies are visible

✓ Trade-offs are documented

✓ Stakeholders understand sequencing

✓ Engineering effort is aligned with highest-value outcomes

---

# ForgeOS Principle

Doing more work does not create more value.

Forge-Prioritisation ensures the right work is done at the right time for the right reasons.
