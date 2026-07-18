# Improve

## Purpose

The Improve phase drives the continuous evolution of the product by analysing feedback, operational experience and technical outcomes to identify opportunities for enhancement.

Its purpose is to ensure that the product continues to deliver increasing value while reducing technical debt, improving quality and adapting to changing business and user needs.

The Improve phase completes the Software Development Lifecycle by feeding validated improvements back into the next Specify phase.

---

# Objectives

The objectives of the Improve phase are to:

* Evaluate product performance.
* Analyse user and stakeholder feedback.
* Identify enhancement opportunities.
* Prioritise future work.
* Reduce technical debt.
* Improve engineering practices.
* Capture lessons learned.
* Refine standards and workflows.
* Maintain a healthy product roadmap.
* Plan the next iteration of development.

---

# Lead Agent

* Product Manager

---

# Supporting Agents

* Codebase Analyst
* Architect
* Backend Engineer
* Frontend Engineer
* QA Engineer
* Security Engineer
* DevOps Engineer
* Technical Writer

Continuous improvement is a collaborative responsibility shared across the engineering team.

---

# Primary Skills

The Product Manager may utilise skills including:

* Product Evaluation
* Backlog Refinement
* Feature Prioritisation
* Root Cause Analysis
* Technical Debt Assessment
* Retrospective Facilitation
* Metrics Analysis
* Roadmap Planning
* Continuous Improvement
* Lessons Learned

## Codebase-Driven Improvement (ADR-007 / ADR-008)

Where improvement work concerns the **existing codebase**, the **Codebase Analyst** Agent is engaged and consumes the **Codebase Analysis Capability** (`Tooling/03-Capabilities/Codebase-Analysis-Capability.md`) to produce an evidence-based view of current state. The Codebase Analyst invokes:

* `Forge-Architecture-Analysis` — structural health and patterns.
* `Forge-Dependency-Analysis` — critical-path and supply-chain risk.
* `Forge-Technical-Debt-Assessment` — quantified, prioritised debt feeding this phase's backlog.
* `Forge-Repository-Metrics` — quantitative health indicators.
* `Forge-Security-Surface-Review` — preliminary surface feeding the Security Engineer.
* `Forge-Documentation-Generation` — refreshing stale documentation.

Findings are captured in an **Architecture Assessment** (`Framework/07-Templates/02-Architecture/Architecture-Assessment-template.md`) and feed the Technical Debt Register and Improvement Recommendations below. The Codebase Analyst never approves Work Items; it recommends them to the Product Manager.

---

# Inputs

The Improve phase begins with:

* Operational Metrics
* User Feedback
* Incident Reports
* Project Journal
* Release Notes
* Product Backlog
* Technical Debt Register
* Performance Reports
* Lessons Learned
* Applicable Framework Standards

---

# Activities

Typical activities include:

* Review product performance.
* Analyse user feedback.
* Conduct retrospectives.
* Identify technical debt.
* Evaluate engineering effectiveness.
* Prioritise enhancement requests.
* Refine the product backlog.
* Update the roadmap.
* Improve engineering standards where appropriate.
* Capture lessons for future projects.
* Prepare the next development cycle.

---

# Deliverables

The Improve phase should produce:

* Updated Product Backlog
* Updated Project Plan
* Updated Roadmap
* Prioritised Enhancement Requests
* Technical Debt Register
* Lessons Learned
* Updated Project Journal
* Improvement Recommendations
* Process Improvement Actions

These deliverables become primary inputs to the next Specify phase.

---

# Entry Criteria

The Improve phase may begin when:

* The product is operating successfully.
* Operational data has been collected.
* User feedback is available.
* The current release has stabilised sufficiently for meaningful evaluation.

---

# Exit Criteria

The Improve phase is complete when:

* Improvement opportunities have been evaluated.
* Enhancement requests have been prioritised.
* Technical debt has been assessed.
* Lessons have been documented.
* The roadmap has been updated.
* The backlog reflects agreed future work.
* The next iteration of the project is ready to enter the Specify phase.

---

# Quality Gate

The Improve Gate is passed when:

* Improvement opportunities have been evaluated objectively.
* Product priorities are aligned with business objectives.
* Technical debt has been appropriately prioritised.
* Lessons learned have been captured.
* The Project Plan and Roadmap have been updated.
* The Product Manager recommends commencement of the next development iteration.

---

# Next Phase

The Improve phase transitions directly into a new **Specify** phase.

The Software Development Lifecycle is iterative. Each completed iteration increases product maturity through the continual application of learning, feedback and engineering excellence.

---

# ForgeOS Principle

The Improve phase answers the question:

> **"What should we build or improve next to deliver greater value?"**

Every release generates knowledge. ForgeOS treats that knowledge as a strategic asset by feeding operational experience, stakeholder feedback and engineering lessons directly into the next planning cycle, ensuring that each iteration produces a better product, a stronger engineering process and a more maintainable system.
