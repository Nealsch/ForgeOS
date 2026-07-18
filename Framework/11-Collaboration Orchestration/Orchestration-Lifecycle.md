# Orchestration Lifecycle

## Purpose

The Orchestration Lifecycle defines the end-to-end sequence by which Collaboration Orchestration transforms a human request into completed engineering work.

It describes the phases an engineering activity passes through, from initial interpretation through to deliverable production and review.

---

## Lifecycle Phases

Every engineering activity coordinated by Collaboration Orchestration passes through the following phases:

```text
Work Item Intake
   ↓
Request
   ↓
Interpretation
   ↓
Routing
   ↓
Context Resolution
   ↓
Execution
   ↓
Deliverable Production
   ↓
Review
   ↓
Completion
   ↓
External Synchronisation
```

---

## 0. Work Item Intake (pre-SDLC)

Before a request reaches the Orchestration Lifecycle, the originating work must be discovered, validated, enriched, prioritised and approved by Work Item Management.

This phase is owned by **Work Item Management** (see `Work-Item-Management.md` and **ADR-005**) and executes **outside** the SDLC:

```text
External Platform
   ↓
Synchronise / Fetch
   ↓
Validate
   ↓
Enrich
   ↓
Prioritise (recommend)
   ↓
Product Owner Approval
   ↓
Approved Work Item  →  becomes the "Request" below
```

Ownership note: Work Item Management produces the approved Work Item and the routing *recommendations* attached to it. It does **not** perform Agent, Skill, Standard or Template selection — those happen in the Routing phase below. This keeps intake and routing as distinct responsibilities.

The approved Work Item is the artefact that feeds stage 1 (Request).

---

## 1. Request

The approved Work Item becomes the engineering request submitted to the AI Program Manager.

The request may be:

* A new feature or change
* A bug fix
* An architectural decision
* A documentation update
* A review or audit
* A clarification or investigation

For ad-hoc requests raised directly by the Product Owner (not originating from an external platform), a lightweight Work Item is still created so the backlog and traceability remain consistent.

Requests should be captured as accurately as possible, but they do not need to be perfectly specified at this stage.

---

## 2. Interpretation

Collaboration Orchestration interprets the request to understand:

* What engineering work is being requested
* Which SDLC phase the work belongs to
* Whether the request is clear enough to proceed
* Whether clarification is required

If the request is ambiguous, orchestration returns to the Product Owner for clarification before proceeding.

---

## 3. Routing

Based on the interpreted request, orchestration determines:

* Which Agent or Agents should be engaged
* Which Skills are required
* Which Standards apply
* Which Templates should be used

Routing is performed by the orchestration layer, not by the AI Program Manager directly.

---

## 4. Context Resolution

Orchestration assembles the minimum context necessary for the activity, following the Context Loading order defined in `Context-Loading.md`.

Framework knowledge is loaded first, followed by project-specific context.

---

## 5. Execution

The selected Agent or Agents perform the engineering work using the loaded Skills, Standards and Templates.

Execution follows the Workflow phase applicable to the activity.

---

## 6. Deliverable Production

The Agent produces one or more deliverables, structured according to the applicable Templates.

Deliverables may include:

* Design documents
* Source code
* Tests
* Configuration
* Documentation
* Decision records

---

## 7. Review

Deliverables are reviewed against:

* Applicable Standards
* Project requirements
* Quality gate criteria for the Workflow phase

Review may be performed by a different Agent where separation of concerns is required (for example, QA verification of implementation).

---

## 8. Completion

Once the deliverable is accepted, the activity is complete.

The outcome is recorded, and the AI Program Manager updates project context to reflect the completed work.

---

## 9. External Synchronisation

Once an activity is complete, Work Item Management updates the originating external platform:

* Marks the external work item as completed (where applicable).
* Closes the external work item where appropriate.
* Updates the local Work Item status to `Synchronised` then `Closed`.

This stage closes the loop opened at stage 0 (Work Item Intake) and is the responsibility of Work Item Management, not the specialist Agents. It depends on the relevant Tooling adapter to write the update back to the external platform.

---

## Lifecycle Properties

* **Iterative** — The lifecycle repeats for each engineering activity.
* **Stateful** — The AI Program Manager maintains continuity across activities.
* **Human-gated** — The Product Owner approves outcomes at review points.
* **Platform-independent** — The lifecycle is the same regardless of AI platform.

---

## ForgeOS Principle

Engineering work is not ad hoc.

The Orchestration Lifecycle ensures that every activity follows a consistent path from request to completion, governed by the Framework at every step.