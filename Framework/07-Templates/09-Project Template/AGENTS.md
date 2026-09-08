---
purpose: Configure AI platform runtime behaviour for this project and point to the ForgeOS Framework as the single source of engineering truth.
when_used: At project creation and whenever AI platform integration changes.
produced_by: Forge-Knowledge-Management
consumed_by:
  - All Agents
  - Forge-Context-Loading
  - Forge-Standards-Compliance
category: 08-AI Assisted Engineering
template_type: primary
framework_authority: AGENTS.md (repository root) — authority hierarchy and runtime configuration policy
---

# Agents

This file is a template slot. Replace this body with project-specific content.

When adapting this slot, follow the runtime-configuration patterns established in the Framework repository: `AGENTS.md` (root) defines governance and the authority hierarchy; platform runtime configs (e.g. `.clinerules/context-loading.md`, `response-format.md`, `tool-preferences.md`) are runtime-only adaptations that link to — and never replace — Framework authority. Resolve Framework references through the sibling clone recorded in `docs/PROJECT-DEFINITION.md` → Framework Binding (ADR-009).

> **Framework authority:** AGENTS.md (repository root) — authority hierarchy and runtime configuration policy
