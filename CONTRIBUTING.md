# Contributing to ForgeOS

First: thank you.

Every open-source project lives because someone decided to give their time to it. Whether you're fixing a typo, improving a standard, proposing a new skill, or just asking a question — that matters. This document exists to make contributing as straightforward and welcoming as possible.

ForgeOS values **clarity over complexity**. The framework itself is built on well-defined responsibilities and quality gates, and this project applies the same discipline to its own development — but the contribution process is intentionally lightweight and may evolve as the community grows.

---

## What Counts as a Contribution

A lot of the work that keeps this project healthy isn't code at all. ForgeOS is primarily a **documentation and engineering-framework project**, and I welcome and value:

- **Documentation improvements** — clarity is a feature; if part of the Framework confused you, that's a bug
- **New standards, templates, or skills** that fill real gaps in the catalogue
- **Framework workflow ideas** that improve how humans and AI collaborate through the SDLC
- **Platform adapters and profiles** for AI development tools not yet covered in `Tooling/`
- **Bug reports** — broken links, contradictions between documents, ambiguities in the Glossary
- **Examples and reference implementations** showing ForgeOS applied to real projects
- **Onboarding improvements** that make adoption easier for new developers and AI agents
- **Diagrams and visual assets** that explain the framework better than prose

If you're unsure whether something is worth contributing, the answer is almost always yes. Open an Issue and ask.

---

## Before You Start

Before opening a new Issue or starting work on a change, please:

1. **Search existing Issues** to avoid duplicates — the open issues are the project's forward development plan.
2. **Check the backlog** in [`ForgeOS Project/Backlog/`](ForgeOS%20Project/Backlog/) to see what's already planned and why.
3. **Read [AGENTS.md](AGENTS.md)** — it defines the authority hierarchy and the principles every contribution must respect.

### For significant changes

If you're proposing a new framework component, a change to the SDLC workflow, or anything that touches the Framework's core boundaries (Workflow, Standards, Governance, Collaboration Orchestration), **please open an Issue first**.

This isn't bureaucracy — it's the same principle ForgeOS itself is built on: *standards before implementation*. A five-minute conversation upfront can save five hours of work later, and it ensures changes fit the framework's authority model before effort is invested.

---

## Understanding the Repository

ForgeOS is a **markdown-first repository**. There is no build system, no package manager, and no runtime. Getting started is simply:

```bash
git clone https://github.com/Nealsch/ForgeOS.git
cd ForgeOS
```

### Repository layout

```
/
├── Framework/                  # The reusable engineering operating system
│   ├── 01-Workflow/            # SDLC phases, gates, deliverables
│   ├── 02-Standards/           # Engineering standards
│   ├── 03-Governance/          # Change, release, version, compatibility
│   ├── 04-Agents/              # Specialist engineering roles
│   ├── 05-Skills/              # Reusable engineering capabilities
│   ├── 06-Prompts/             # Reusable AI interaction assets
│   ├── 07-Templates/           # Document templates
│   ├── 08-Examples/            # Reference implementations
│   ├── 09-Onboarding/          # Adoption and contribution guides
│   ├── 10-Assets/              # Diagrams, branding, media
│   ├── 11-Collaboration Orchestration/
│   └── 12-Glossary/            # Shared terminology
├── ForgeOS Project/            # Living docs for ForgeOS itself (ADRs, backlog, roadmap)
├── Tooling/                    # AI platform profiles, adapters, capabilities
└── AGENTS.md                   # Framework governance — read this first
```

### The one rule that governs everything

The Framework is the **single source of engineering truth**. When contributing:

- **Framework first** — engineering knowledge belongs in `Framework/`, never duplicated in project docs or tooling.
- **Respect the hierarchy** — Workflow → Standards → Governance → Agents → Skills. Lower layers tighten but never relax higher ones.
- **Project rules live in Project Documentation** — they apply *within*, never against, the Framework.
- **Documentation before code** — existing documents are always consulted before new work begins.

If your change would create a conflict with these principles, it will be asked to adjust — that's the framework doing its job.

---

## Quality Standards

This project cares about content that is **accurate, consistent, and unambiguous** — for human readers and AI agents alike.

### What I expect

- **Markdown everywhere.** UTF-8 without BOM, LF line endings.
- **One responsibility per document.** Every framework component has a single, clearly defined responsibility — keep documents that way.
- **Define terms in the Glossary.** If you introduce terminology, add it to `Framework/12-Glossary/`. Humans and AI share one vocabulary here.
- **Link, don't duplicate.** If content already exists elsewhere in the Framework, cross-reference it rather than restating it. Duplication creates drift, and drift creates contradiction.
- **Consistent structure.** Existing documents use tables, headings, and YAML frontmatter conventions — follow the pattern of neighbouring documents.
- **AI agents are readers too.** Write so that an AI coding assistant can follow your instructions deterministically.

### Referential integrity

Every `Forge-`-prefixed name must resolve to a real skill in `Framework/05-Skills/`. Dangling forward-references are tracked explicitly (see issue #5) and must never be introduced silently. If you reference a skill, standard, or template, verify it exists.

---

## Commit Messages

I follow the [Conventional Commits](https://www.conventionalcommits.org/) specification. This keeps the history readable and scannable.

### Format

```
<type>(<scope>): <description>

[optional body]

[optional footer]
```

### Common types

| Type | Use for |
|---|---|
| `feat` | A new framework component, skill, or capability |
| `fix` | A correction to existing documentation or content |
| `docs` | Documentation-only changes |
| `refactor` | Restructuring that changes no meaning |
| `test` | Audit scripts or verification tooling |
| `chore` | Routine maintenance, tooling, config |

### Examples

```
feat(skills): add Forge-Test-Execution to Quality category
docs(readme): update installation instructions
fix(governance): correct authority matrix in change-management
```

---

## Pull Requests

**All changes to `main` go through pull requests** — the branch is protected, so this applies to maintainers too.

### Before opening a PR

1. **Open an Issue first** for anything beyond a small fix. This confirms the change is wanted and avoids wasted effort.
2. **Create a feature branch** from `main`:
   ```bash
   git checkout -b feat/quality-skill-category
   ```
3. **Keep changes focused.** One improvement per PR. If you find unrelated changes creeping in, split them into separate PRs.

### Branch naming

```
feat/quality-skill-category
fix/glossary-terminology
docs/onboarding-improvements
chore/backfill-issue-links
```

### Writing the PR description

A good PR description answers three questions:

1. **What changed?**
2. **Why did it change?**
3. **How does it respect the Framework's authority hierarchy and existing standards?**

If the PR resolves an issue, reference it: `Fixes #1`.

### Review process

- All PRs require at least one review before merging.
- Reviews focus on **accuracy, consistency with the Framework, boundary integrity, and clarity**.
- Be kind. Be specific. Be open to feedback.
- If a reviewer asks for changes, that's normal — it's how the project maintains quality.

---

## Pull Request Checklist

Before requesting review, please confirm:

- [ ] I have searched existing Issues for related work
- [ ] My changes respect the Framework authority hierarchy (AGENTS.md)
- [ ] New terminology is defined in the Glossary
- [ ] I have not duplicated content that exists elsewhere in the Framework
- [ ] All `Forge-*` references resolve to real skills
- [ ] Documents follow existing structure conventions (headings, tables, frontmatter)
- [ ] Files are UTF-8 without BOM, LF line endings
- [ ] My commits follow Conventional Commits
- [ ] No secrets, tokens, or credentials are included
- [ ] Documentation is updated where necessary

---

## Versioning and Releases

ForgeOS follows [Semantic Versioning (SemVer 2.0.0)](https://semver.org/): `MAJOR.MINOR.PATCH`.

- **PATCH** — corrections, clarifications, internal refactors that change no meaning.
- **MINOR** — backwards-compatible additions: new skills, standards, templates, platform profiles.
- **MAJOR** — intentional breaking changes to the framework's structure or contracts.

Breaking changes are documented in the GitHub Release Notes with migration guidance where appropriate. Releases are published as **GitHub Releases**, and the framework's own governance documents (`Framework/03-Governance/`) define the process the project holds itself to.

---

## Documentation

Documentation improvements are always welcome — in a documentation-first project, they *are* the product.

When updating documentation:

- Explain the *why*, not just the *what*.
- Use relative links for internal references.
- Keep the reader's context small — don't force someone to load the whole framework to understand one document.
- Place ForgeOS-project-specific records (decisions, history) in `ForgeOS Project/`, never in the Framework.

---

## Security

ForgeOS is a documentation project and handles no runtime secrets — but if you believe you've found a vulnerability in repository tooling or scripts, **do not report it through public GitHub Issues**.

Open a private security advisory via the repository's **Security** tab, or contact the maintainer directly.

---

## Community

I want this to be a place where people feel comfortable contributing, regardless of experience level — whether you're a seasoned engineer or exploring AI-assisted development for the first time.

- **[README](README.md)** — what ForgeOS is and how it fits together.
- **[AGENTS.md](AGENTS.md)** — the governance and operating rules of the framework.
- **[Issues](https://github.com/Nealsch/ForgeOS/issues)** — the public forward development plan.

If you're ever unsure where something belongs, open an Issue. I'll point you in the right direction.

---

## Thank You

Open source is built on generosity. Every issue filed, every PR reviewed, every typo fixed, and every ambiguity resolved makes the framework better for everyone who uses it — human and AI alike.

If you've read this far, you're already contributing — you're taking the project seriously enough to understand how it works. That's the part that matters most.

Thank you for being here.

— Neal

