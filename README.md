<div align="center">

# ForgeOS

**The AI-Assisted Software Development Operating System.**

A standards-driven engineering framework where humans and AI build software together
through a shared SDLC — structured, documented, and quality-gated at every phase.

[![License][license]](LICENSE)
[![Latest Release][release]](https://github.com/Nealsch/ForgeOS/releases/latest)
[![GitHub Stars][stars]](https://github.com/Nealsch/ForgeOS/stargazers)
[![Forks][forks]](https://github.com/Nealsch/ForgeOS/network/members)

[![SDLC][sdlc]](#software-development-lifecycle)
[![AI Platform Agnostic][agnostic]](#tooling-components)
[![Cline][cline]](#platforms)
[![Claude Code][claude]](#platforms)
[![Cursor][cursor]](#platforms)
[![Codex][codex]](#platforms)
[![Gemini CLI][gemini]](#platforms)

</div>

---

<p align="center">
  <a href="#why-forgeos"><strong>Why</strong></a> &nbsp;·&nbsp;
  <a href="#architecture"><strong>Architecture</strong></a> &nbsp;·&nbsp;
  <a href="#software-development-lifecycle"><strong>SDLC</strong></a> &nbsp;·&nbsp;
  <a href="#framework-components"><strong>Components</strong></a> &nbsp;·&nbsp;
  <a href="#getting-started"><strong>Getting Started</strong></a> &nbsp;·&nbsp;
  <a href="#who-is-forgeos-for"><strong>Who It's For</strong></a>
</p>

---

> **Stop prompting. Start engineering.**
>
> **The SDLC drives the work. Standards define the quality. Humans and AI follow the same process.**

---

## Why ForgeOS?

Most AI-assisted development starts with a prompt and ends with hope. Code appears fast — but without standards, without documentation, without gates, and with no way for a human to review *how* decisions were made.

**ForgeOS takes a different path.** It turns AI coding assistants into engineering participants inside a real SDLC, so every change is specified, designed, built, verified and released through a process a human can audit.

- 🔁 **SDLC First** — work is organised around the software development lifecycle, not around prompts or tools.
- 📏 **Standards Driven** — engineering standards define *how* software is built before any code is written.
- 🧩 **Platform Independent** — not tied to any AI vendor, IDE, LLM, language or stack.
- 🧠 **Context Before Action** — existing documentation and knowledge are always consulted before engineering begins.
- 🤝 **Human + AI Collaboration** — humans and AI follow *exactly the same* process, roles and responsibilities.
- ♻️ **Reusable by Design** — drop the Framework into any project and adopt the same operating system.

| Capability | ForgeOS | Ad-hoc prompting | Governance platforms |
|---|:--:|:--:|:--:|
| Structured SDLC with quality gates | ✅ | — | ✅ |
| AI follows the same process as humans | ✅ | — | — |
| Works with any AI assistant / IDE / LLM | ✅ | ✅ | — |
| Standards, templates & glossary included | ✅ | — | — |
| Reusable across projects & stacks | ✅ | — | — |
| Owns your process (no SaaS, no lock-in) | ✅ | ✅ | — |

---

## Architecture

<p align="center">
  <img src="ForgeOS%20Project/Assets/Diagrams/forgeos-explainer.png" alt="ForgeOS high-level explainer diagram" width="820" />
</p>

ForgeOS separates **reusable engineering knowledge** from **project history** and **platform integration**, so none of the three contaminate the others.

```text
ForgeOS/
│
├── Framework/         ← the reusable engineering operating system
├── ForgeOS Project/   ← living docs for evolving ForgeOS itself (ADRs, backlog, roadmap)
└── Tooling/           ← integrations with AI development platforms
```

The Framework defines **how software should be engineered** — it is the current, authoritative engineering knowledge used by every ForgeOS project. The ForgeOS Project records the decisions, planning and history behind the framework (ADRs, roadmap, backlog, release notes, scripts) and is intentionally lightweight — it is **not** part of the reusable template. The Tooling layer is implementation-specific and never defines engineering standards.

```text
Framework/                              Tooling/

Workflow/                               Platforms/     ← profiles for supported AI platforms
Standards/                              Adapters/      ← integration mechanisms
Governance/                             Capabilities/  ← platform feature compatibility
Agents/  Skills/  Prompts/  Templates/
Examples/  Onboarding/  Assets/
Collaboration Orchestration/  Glossary/
```

---

## Software Development Lifecycle

ForgeOS organises all engineering work into seven phases. A phase only completes when its deliverables exist, its standards are satisfied and its **quality gate** has passed.

```text
Specify → Design → Develop → Verify → Release → Operate → Improve ↺
```

Every phase defines:

| | | |
|---|---|---|
| Purpose | Inputs | Activities |
| Deliverables | Standards | Responsible Agents |
| Exit Criteria | Quality Gate | |

Because **humans and AI follow the same process**, a reviewer can see exactly which phase a piece of work is in, which agent did it, which standards applied, and which gate it passed — regardless of which AI tool was used.

---

## Framework Components

| Component | Responsibility |
|---|---|
| **Workflow** | Defines **when** engineering work occurs — the SDLC, phases, gates and deliverables. |
| **Standards** | Engineering rules and quality expectations: coding, architecture, security, testing, documentation. |
| **Governance** | Uniform lifecycle control — change, release, version and compatibility — plus project-specific constraints. |
| **Collaboration Orchestration** | The execution layer: coordinates workflow progression, agent selection, skill selection, standards, templates and context loading. |
| **Agents** | Specialist engineering roles (Product Manager, Architect, Backend/Frontend/Database/Quality/Security/DevOps Engineer). They perform work — they never own the process. |
| **Skills** | Reusable engineering capabilities (API Design, Code Review, Test Planning, Threat Modelling…) shared across agents. |
| **Prompts** | Reusable AI interaction assets. They support Skills but never replace them. |
| **Templates** | Standard structures for engineering artefacts — including the Project Template that seeds new projects. |
| **Examples** | Reference implementations and worked examples. |
| **Onboarding** | How to adopt, extend and contribute to ForgeOS. |
| **Assets** | Shared diagrams, branding and visual resources. |
| **Glossary** | One shared vocabulary for humans and AI, across every platform. |

The **AI Program Manager** is the persistent AI collaborator through which the Product Owner interacts with ForgeOS. It invokes Collaboration Orchestration and coordinates specialist Agents — but is *not* an Agent itself and never performs specialist engineering work directly.

---

## Tooling Components

### Platforms

Profiles for supported AI development platforms:

![Cline][cline] ![Claude Code][claude] ![Cursor][cursor] ![Codex][codex] ![Gemini CLI][gemini] ![Roo][roo] ![VS Code Agent Mode][vscode]

### Adapters

Integration mechanisms that let ForgeOS operate with supported AI platforms.

### Capabilities

Compatibility information describing the supported features of each AI platform.

---

## Workspace Layout

ForgeOS is designed to sit **alongside your project** in a multi-root workspace:

```text
ForgeOS       ← the engineering operating system
The Project   ← your implementation + project-specific docs
```

Together they form the complete environment for AI-assisted software development.

---

## Getting Started

1. Read **[AGENTS.md](AGENTS.md)** — the framework's governance and operating rules.
2. Browse the **Framework** structure above.
3. Understand the **Software Development Lifecycle** and its quality gates.
4. Review the applicable **engineering standards**.
5. Configure your AI development platform via **Tooling/Platforms**.
6. Open ForgeOS alongside your project in a multi-root workspace.
7. Start work in the appropriate SDLC phase.

---

## Who Is ForgeOS For?

* 🧑‍💻 **Solo developers** who want AI speed without losing engineering discipline
* 🤖 **AI-assisted engineers** who need auditable, standards-based AI output
* 🧑‍💼 **Independent consultants** delivering consistent quality across clients
* 👥 **Small teams** adopting AI tooling safely
* 🏢 **Engineering organisations** rolling out disciplined AI-assisted development

---

## Contributing

Contributions are welcome — whether it's framework improvements, new standards or templates, better onboarding docs, or platform adapters. See **[Onboarding](Framework/09-Onboarding)** in the Framework for how to adopt and contribute.

---

## License

ForgeOS is released under the **[LICENSE](LICENSE)**.

<p align="center">
  <sub>ForgeOS — an engineering operating system for humans and AI.</sub>
</p>

---

<!-- shields.io badge definitions (kept at the bottom so the hero stays scannable) -->

[license]: https://img.shields.io/badge/license-MIT-orange?style=flat-square
[release]: https://img.shields.io/github/v/release/Nealsch/ForgeOS?style=flat-square&color=f97316
[stars]: https://img.shields.io/github/stars/Nealsch/ForgeOS?style=flat-square&color=f97316
[forks]: https://img.shields.io/github/forks/Nealsch/ForgeOS?style=flat-square&color=f97316
[sdlc]: https://img.shields.io/badge/SDLC-7_phase_lifecycle-2f6feb?style=flat-square
[agnostic]: https://img.shields.io/badge/AI_Platform-Agnostic-8b5cf6?style=flat-square
[cline]: https://img.shields.io/badge/Cline-supported-2f6feb?style=flat-square
[claude]: https://img.shields.io/badge/Claude_Code-supported-d97757?style=flat-square
[cursor]: https://img.shields.io/badge/Cursor-supported-111111?style=flat-square
[codex]: https://img.shields.io/badge/Codex-supported-111111?style=flat-square
[gemini]: https://img.shields.io/badge/Gemini_CLI-supported-4285F4?style=flat-square
[roo]: https://img.shields.io/badge/Roo-supported-2f6feb?style=flat-square
[vscode]: https://img.shields.io/badge/VS_Code_Agent_Mode-supported-007ACC?style=flat-square

