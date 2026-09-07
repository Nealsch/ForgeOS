# Cline Runtime Configuration

This directory contains **runtime configuration** for Cline when operating inside a ForgeOS repository.

It exists because Cline supports repository-level configuration through the `.clinerules` directory.

---

# Purpose

The purpose of this directory is to configure **how Cline behaves**.

It is **not** part of the ForgeOS Framework and is **not** a source of engineering truth.

Engineering knowledge is owned by the Framework.

```text
Framework
    │
    ▼
Engineering Standards
    │
    ▼
Tooling Integration
    │
    ▼
.clinerules
    │
    ▼
Cline Runtime
```

---

# Responsibilities

The `.clinerules` directory may contain instructions relating to:

* Context loading
* Response formatting
* Tool preferences
* Repository navigation
* Runtime behaviour
* Prompt orchestration
* Platform-specific guidance

These instructions exist solely to help Cline execute the ForgeOS engineering process.

---

# What Must NOT Be Stored Here

The following information must never be duplicated inside `.clinerules`.

* SDLC workflow
* Engineering standards
* Architecture standards
* Coding standards
* Security standards
* Testing standards
* Documentation standards
* Deployment standards
* Debugging procedures
* Agent definitions
* Skills
* Templates
* Project documentation

All engineering knowledge belongs in the **Framework**.

---

# Authority

The Framework is always authoritative.

If any instruction contained within `.clinerules` conflicts with:

* AGENTS.md
* Framework Workflow
* Framework Standards
* Framework Rules

then the Framework takes precedence.

The runtime configuration must be updated to restore alignment.

---

# Design Philosophy

ForgeOS separates engineering from execution.

The Framework defines:

* what software should be built
* how software should be engineered
* how the SDLC operates

The `.clinerules` directory simply tells Cline how to participate in that engineering process.

This separation prevents duplicated knowledge and ensures there is a single source of truth for all engineering decisions.

---

# Expected Contents

A mature ForgeOS implementation should keep this directory intentionally small.

Typical files might include:

```text
README.md

context-loading.md

response-format.md

tool-preferences.md
```

If additional documentation is required, it should first be considered for inclusion in the Framework before being added to `.clinerules`.

# File Encoding Rules

- All files must be UTF-8 without BOM.
- Use LF line endings.
- Never edit files containing binary content.
- Before replace_in_file:
  - verify exact text match
  - preserve indentation
  - preserve line endings
- If replace_in_file fails twice:
  - stop attempting replacements
  - rewrite the complete file using write_to_file