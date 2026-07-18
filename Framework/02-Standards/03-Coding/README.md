# ForgeOS Coding Standard

## Purpose

The Coding Standard defines the enduring engineering principles for producing software that is readable, maintainable, secure and reliable.

These standards apply regardless of programming language, framework or technology stack. They establish the minimum expectations for all source code produced within a ForgeOS project.

---

# Coding Philosophy

ForgeOS values software that is simple to understand, safe to change and economical to maintain.

Code is written for people first and computers second.

Every implementation should improve the long-term health of the system.

---

# Coding Principles

## 1. Clarity Over Cleverness

Write code that is easy to read, understand and maintain.

Prefer explicit implementations over clever, condensed or highly abstract solutions.

---

## 2. Simplicity First

Implement the simplest solution that satisfies the current requirements.

Avoid:

* speculative abstractions
* premature optimisation
* unnecessary configurability
* designing for hypothetical future requirements

---

## 3. Readability Is a Feature

Code should communicate its intent.

Prefer:

* meaningful names
* consistent structure
* predictable control flow
* cohesive modules

Readability is a quality attribute of the software.

---

## 4. Single Responsibility

Every function, class and module should have one clear purpose.

Well-defined responsibilities reduce coupling and improve maintainability.

---

## 5. Explicit Behaviour

Avoid hidden behaviour and unexpected side effects.

Dependencies, state changes and error handling should be visible, intentional and easy to reason about.

---

## 6. Maintainability Before Optimisation

Optimise software only when supported by evidence.

Long-term maintainability takes precedence over insignificant performance gains.

---

## 7. Comments Explain Decisions

Code should explain **how** the system works.

Comments should explain:

* why
* assumptions
* constraints
* trade-offs

Comments should not duplicate what the code already makes obvious.

---

## 8. Every Dependency Is a Liability

Every external dependency introduces security, operational and maintenance risk.

Before introducing a dependency:

* verify that it is necessary
* prefer mature and actively maintained projects
* minimise transitive dependencies
* avoid overlapping libraries
* remove unused dependencies promptly

The smallest dependency graph is generally the safest dependency graph.

---

## 9. Secure by Default

Security is part of implementation, not an afterthought.

Code should:

* validate external input
* protect sensitive information
* fail safely
* avoid exposing secrets
* follow the Principle of Least Privilege

---

## 10. Leave the Code Better

Whenever modifying existing code:

* improve readability where practical
* reduce unnecessary complexity
* eliminate dead code
* preserve behaviour unless an intentional change is being made

Continuous improvement produces healthier software over time.

---

# Relationship to Other Standards

This standard defines **how software should be written**.

It complements, but does not replace:

* Architecture Standards
* Security Standards
* Testing Standards
* Documentation Standards
* Deployment Standards

Together, these standards establish the engineering expectations of ForgeOS.

---

# Immutable Engineering Knowledge

These principles are intended to remain stable across projects and technologies.

Project-specific coding conventions, language styles, frameworks and tooling should be documented within the project itself rather than within the ForgeOS framework.

---

# ForgeOS Principle

Good code is measured not by how quickly it is written, but by how confidently it can be understood, tested, secured and maintained years after it was first created.

Every line of code should reduce future effort rather than increase it.
