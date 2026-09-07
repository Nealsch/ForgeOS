# Decision-Making

## Purpose

Defines **who decides what** during ForgeOS engineering, and how those decisions are recorded.

Decision-Making is a Collaboration Orchestration capability. It exists to make the boundary between AI-proposed work and human-approved work explicit, so that AI assistance never silently makes a decision that must be a human's.

---

## Core Principle

> **AI proposes; the Product Owner disposes.**

ForgeOS AI participants may recommend, enrich, prioritise and draft, but they do not own engineering decisions. Decisions with product, scope, compatibility or architectural consequence are **human-approved**, specifically **Product Owner approved**.

This principle is what allows AI assistance to be powerful without compromising authority.

---

## Decision Classes

| Class | Owner | AI role | Recorded where |
| --- | --- | --- | --- |
| **Product decisions** (scope, priorities, what to build) | Product Owner | AI Program Manager presents options and recommendations | Work Item approval state, roadmap |
| **Architectural decisions** (structure, cross-cutting trade-offs) | Architect (with Product Owner for breaking changes) | Architect Agent drafts; AI enriches | Architecture Decision Record (ADR) |
| **Engineering decisions** (implementation approach within a Work Item) | Lead engineer / responsible Agent | Specialist Agents propose | Work Item, implementation, code review |
| **Quality decisions** (test strategy, release readiness) | QA Engineer | QA Agent recommends | Test plan, release gates |
| **Security decisions** (risk acceptance, mitigations) | Security Engineer (with Product Owner for acceptance) | Security Agent recommends | Threat model, security risk assessment |
| **Release decisions** (what ships, when) | Product Owner | Engineering verifies gates | Release record, release notes |
| **Routing decisions** (Agent/Skill/Standard/Template selection) | Collaboration Orchestration, performed in the **Routing phase** based on intake recommendations, only **after** Product Owner approval of the Work Item | Orchestration performs the selection; the AI Program Manager presents the routing outcome | Work Item `Required Agents/Skills/Standards/Templates` fields |

---

## Decision Lifecycle

```text
Need for a decision identified
        ↓
Options and trade-offs surfaced        (AI / Agents)
        ↓
Recommendation produced                (AI / Agents)
        ↓
Decision maker reviews                 (human)
        ↓
Decision approved / rejected / deferred (human)
        ↓
Decision recorded                      (ADR / Work Item / release record)
        ↓
Work proceeds under the decision
```

A decision is not considered made until it is **approved by its owner** and **recorded in the correct location**.

---

## AI Program Manager's Role

The AI Program Manager is the **presentation layer** for decisions, not the decision maker. It:

* Assembles the options and trade-offs.
* Produces a clear recommendation.
* Presents it to the Product Owner for approval.
* Records the outcome.
* Never silently takes the decision itself.

(See `AI-Program-Manager.md` → Responsibilities Excluded.)

---

## Work Item Management's Role

Work Item Management produces **priority recommendations**, not priority decisions. The decision to accept a prioritisation, and to admit a Work Item into the SDLC, belongs to the Product Owner. (See `Work-Item-Management.md` and **ADR-005**.)

---

## Recording Decisions

| Decision type | Recording location | Authority |
| --- | --- | --- |
| Architectural | ADR (`ForgeOS Project/ADRs/` or project equivalent) | ADR-001, ADR-005 |
| Scope / priority / approval | Work Item approval state | ADR-005 |
| Release scope | Release record | `release-process.md` |
| Compatibility classification | Work Item + release notes | `compatibility.md` |
| Process exceptions | Work Item + exception note | `change-management.md` |

Decisions that are not recorded are not considered made.

---

## Escalation and Deadlock

If a decision cannot be resolved at the responsible level:

1. The responsible Agent escalates to the AI Program Manager.
2. The AI Program Manager presents the deadlock to the Product Owner with options.
3. The Product Owner decides, defers, or requests more analysis.

ForgeOS has no mechanism for AI to break a human deadlock. The Product Owner is the final authority on product and scope decisions.

---

## Relationship to Context Loading

Decision-making depends on accurate context. Before presenting a decision, the AI Program Manager ensures context has been loaded per `Context-Loading.md` — so the decision maker sees the relevant Standards, ADRs and trade-offs, not an incomplete picture.

---

## Relationship to Standards Loading

Standards reduce the decision space. Where a Standard already answers a question, no decision is required — the Standard is followed. Decisions are reserved for genuine judgement calls. (See `Standards-Loading.md`.)

---

## What Decision-Making Does Not Own

* **Routing.** Selecting Agents, Skills, Standards and Templates is an orchestration action performed after approval, not a product decision. (See routing in the Work Item model, ADR-005.)
* **Standards.** Standards are authored under the Standards hierarchy, not here.
* **Releases.** The release process owns release execution; Decision-Making only owns *who approves release decisions*.

---

## Related Documents

* `Framework/11-Collaboration Orchestration/AI-Program-Manager.md` — the presentation layer for decisions.
* `Framework/11-Collaboration Orchestration/Work-Item-Management.md` — where approval decisions are recorded.
* `Framework/11-Collaboration Orchestration/Context-Loading.md` — context that informs decisions.
* `Framework/11-Collaboration Orchestration/Standards-Loading.md` — standards that reduce the decision space.
* `Framework/03-Governance/change-management.md` — approval authority by change class.
* `Framework/03-Governance/release-process.md` — release approval gates.