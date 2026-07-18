# Standards Loading

## Purpose

Defines **how the applicable ForgeOS Standards are identified and loaded** for an engineering task.

Standards Loading is the specialist mechanism behind step 5 of the Context Loading order. Where `Context-Loading.md` defines the *overall* discipline of loading the minimum necessary context in the right order, this document defines the *specific* mechanism for the Standards step.

---

## Boundary with Context Loading

```text
Context-Loading.md
   └── Step 1  Determine the task
   └── Step 2  Identify the Workflow phase
   └── Step 3  Select the Agents
   └── Step 4  Load the Skills
   └── Step 5  Load applicable Standards   ← Standards-Loading.md owns this step
   └── Step 6  Load external standards     ← also owned here
   └── Step 7  Load Templates
   └── Step 8  Load project documentation
   └── Step 9  Load examples (only if needed)
```

`Context-Loading.md` owns the **order and the minimal-context principle**. `Standards-Loading.md` owns the **mechanism** for steps 5 and 6: *which* standards apply and *how* to load them without bloat.

---

## Why Standards Loading Matters

Standards are the largest context risk in the Framework. Loading every standard for every task would:

* Exhaust context budget.
* Dilute the standards that actually apply.
* Introduce contradictions where two standards overlap.

Precise Standards Loading keeps the right rules in view and keeps everything else out.

---

## The Standards Catalogue

ForgeOS organises Standards by category in `Framework/02-Standards/`:

| Category | Folder | Typical applies-when |
| --- | --- | --- |
| Framework | `01-Framework/` | Any change to the ForgeOS Framework itself |
| Architecture | `02-Architecture/` | Any structural or cross-cutting design work |
| Coding | `03-Coding/` | Any source-code change |
| Documentation | `04-Documentation/` | Any documentation change |
| Security | `05-Security/` | Any change with security implications (most changes) |
| Testing | `06-Testing/` | Any change that must be verified (most changes) |
| Deployment | `07-Deployment/` | Any release, infrastructure or environment change |
| Design | `08-Design/` | Any UX/UI or interaction design work |
| External Industry | `09-External-Industry/` | Any work subject to regulatory or industry standards |

Not every category applies to every task. The loader selects categories first, then standards within categories.

---

## Loading Procedure

```text
1. Start from the Work Item and Workflow phase
        ↓
2. Identify applicable Standard categories
        ↓
3. Within each category, identify applicable Standards
        ↓
4. Identify applicable external Standards (step 6)
        ↓
5. Record the selected Standards on the Work Item
        ↓
6. Load only those Standards into the working context
```

### 1. Start from the Work Item and Workflow phase

The Work Item's type and current Workflow phase determine candidate standards. For example:

* A *Bug* in the *Develop* phase implies Coding + Testing + Security.
* A *Documentation* Work Item implies Documentation Standards only.
* An *Infrastructure* Work Item in *Release* implies Deployment + Security + Testing.

### 2. Identify applicable categories

Walk the catalogue table above and mark each category as *applies* or *does not apply*. Record the reason where useful.

### 3. Identify applicable standards within each category

Within an applicable category, not every standard file applies. Select only the standards relevant to the task. If a category has an index/README, use it; otherwise inspect file titles before loading bodies.

### 4. Identify external standards

Some tasks are subject to external standards (OWASP, regulatory frameworks, industry specs). These live in `Framework/02-Standards/09-External-Industry/` or are referenced from the project. Load only the external standards that actually apply.

### 5. Record selected standards on the Work Item

The Work Item's `Required Standards` field is populated with the selected standards (per **ADR-005**). This makes the selection traceable and reviewable.

### 6. Load only those standards

Load the selected standards into the working context. Do not load other categories or other standards "for completeness".

---

## Conflict Resolution

When two loaded standards appear to conflict:

1. Apply the Standards Hierarchy (Framework Standards → Project Rules → Workflow Requirements → Agent Responsibilities → Skill Implementation). The higher document wins.
2. If still unclear, escalate to the Architect (architectural) or Security Engineer (security).
3. Record the resolution on the Work Item or as an ADR if the conflict is likely to recur.

Conflict is rare because standards are authored to be non-overlapping. Where overlap exists, the Standards Hierarchy resolves it.

---

## External Standards Policy

External standards (OWASP, ISO, regulatory frameworks) are referenced, not duplicated. Where an external standard applies:

* A ForgeOS standard in `Framework/02-Standards/` points to it.
* The external standard's authoritative source is the single source of truth.
* ForgeOS never rewrites external standards; it adopts or extends them with explicit deltas.

(See the documentation-gaps backlog item on the OWASP placeholders — these should become pointers, not rewrites.)

---

## What Standards Loading Does Not Own

* **The context order.** Owned by `Context-Loading.md`.
* **The standards themselves.** Authored in `Framework/02-Standards/`.
* **Which standards exist.** Owned by the Standards category folders.
* **Routing.** Selecting standards is part of enrichment; selecting Agents/Skills/Templates is the rest of routing. (See ADR-005.)

Standards Loading owns only *the mechanism for choosing and loading the right standards for a task*.

---

## Relationship to Decision-Making

Accurate Standards Loading shrinks the decision space. When a standard already answers a question, the decision is *follow the standard*, not *make a judgement call*. (See `Decision-Making.md`.)

---

## Relationship to the AI Program Manager

The AI Program Manager depends on Standards Loading to present accurate options to the Product Owner. If relevant standards are not loaded, the AI Program Manager's recommendations are unsound.

---

## Related Documents

* `Framework/11-Collaboration Orchestration/Context-Loading.md` — the overall context discipline this document specialises.
* `Framework/02-Standards/README.md` — the Standards catalogue.
* `Framework/11-Collaboration Orchestration/Decision-Making.md` — how loaded standards reduce the decision space.
* `Framework/11-Collaboration Orchestration/Work-Item-Management.md` — where selected standards are recorded on the Work Item.
* `AGENTS.md` → Standards Hierarchy — conflict-resolution authority.