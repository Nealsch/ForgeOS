---
purpose: Document the ForgeOS skill installer script for Cline.
when_used: When bootstrapping a new project to use ForgeOS skills via Cline.
produced_by: Tooling
consumed_by:
  - AI Program Manager (Cline)
  - Product Owner
category: 08-AI Assisted Engineering
template_type: supporting
framework_authority: AGENTS.md (repository root)
---

# Cline Skill Installer

A single bash script that copies the entire ForgeOS skill catalogue from
`Framework/05-Skills/` into a Cline workspace so Cline 4.0.9+ can discover and
invoke every ForgeOS skill via `use_skill`.

---

## Why this exists

When you start a new ForgeOS project, Cline (the AI Program Manager platform)
needs to be able to invoke the ForgeOS skills (Forge-Grill, Forge-Context-Loading,
Forge-Requirements-Elicitation, etc.). Cline discovers skills by scanning:

* **Project skills:** `<project-root>/.cline/skills/<skill-name>/SKILL.md`
* **Global skills:**   `~/Cline/skills/<skill-name>/SKILL.md`

Each `SKILL.md` must declare a `skill-name` field in its JSON metadata block.
The ForgeOS source skills only declare the legacy `skill` field, so the installer
**non-destructively** adds `skill-name` to the *copied* file — the framework
source is never modified.

This script turns "set up skills in a new project" into a one-liner.

---

## The script

```
Tooling/01-Platforms/Cline/scripts/install-forge-skills.sh
```

---

## Quick start

### 1. Install skills into a new project

```bash
# From inside the ForgeOS checkout
./Tooling/01-Platforms/Cline/scripts/install-forge-skills.sh \
    --target ~/Code/MyNewProject
```

Result:

```
MyNewProject/
└── .cline/
    └── skills/
        ├── Forge-Acceptance-Criteria/
        │   └── SKILL.md
        ├── Forge-Context-Loading/
        │   └── SKILL.md
        ├── Forge-Grill/
        │   └── SKILL.md
        └── ... (33 skills total)
```

Open the project in VS Code with the Cline extension, and every ForgeOS skill
becomes available via `use_skill`.

### 2. Install skills globally (all projects)

```bash
./Tooling/01-Platforms/Cline/scripts/install-forge-skills.sh --global
```

Installs to `~/Cline/skills/`. Useful if you work on multiple ForgeOS projects
and want the skills available everywhere.

### 3. Preview first (recommended)

```bash
./Tooling/01-Platforms/Cline/scripts/install-forge-skills.sh \
    --target ~/Code/MyNewProject --dry-run
```

Shows what would be copied without writing anything.

---

## All options

| Option             | Purpose                                                       |
| ------------------ | ------------------------------------------------------------- |
| `--target <dir>`   | Project root to install into. Creates `<dir>/.cline/skills/`. |
| `--global`         | Install to `~/Cline/skills/` instead of a project.            |
| `--force`          | Overwrite existing skill folders. Default: skip existing.     |
| `--dry-run`        | Show what would happen; write nothing.                        |
| `--list`           | List available ForgeOS skills and exit.                       |
| `-h, --help`       | Show help.                                                    |

### Environment

| Variable       | Purpose                                                |
| -------------- | ----------------------------------------------------- |
| `FORGEOS_ROOT` | Override the ForgeOS checkout location (auto-detected). |

---

## What the installer does

For each skill under `Framework/05-Skills/`:

1. Reads the skill name from the `skill` field in `SKILL.md` JSON metadata.
2. Copies the entire skill folder to `<target>/.cline/skills/<skill-name>/`.
3. Adds a `skill-name` field to the *copied* `SKILL.md` so Cline 4.0.9+ can discover it.
4. Preserves the file's original line endings (CRLF or LF) — no mixed endings.

### Idempotent and non-destructive

* **Framework source is never modified.** All normalisation happens on the copy.
* **Re-running skips existing skills** unless `--force` is passed.
* **`--dry-run` is safe** — it writes nothing and shows the plan.

---

## What gets installed

As of this writing, the catalogue contains **33 skills** across 7 categories:

| Category                       | Skills |
| ------------------------------ | ------ |
| 01-Product                     | 5      |
| 02-Architecture                | 8      |
| 03-Engineering                 | 9      |
| 04-Quality                     | 3      |
| 05-Security                    | 1      |
| 07-Documentation and Knowledge | 1      |
| 08-AI Assisted Engineering     | 7      |

Run `--list` to see the exact current set:

```bash
./Tooling/01-Platforms/Cline/scripts/install-forge-skills.sh --list
```

---

## Verifying the install

After installing into a project, verify Cline can see the skills:

```bash
# 1. Confirm the folders exist
ls <project>/.cline/skills/ | wc -l        # should be 33

# 2. Confirm each SKILL.md has a skill-name field
grep -l "skill-name" <project>/.cline/skills/*/SKILL.md | wc -l   # should be 33

# 3. In Cline: invoke any skill to confirm discovery
#    (e.g. "use the Forge-Grill skill")
```

---

## Relationship to ForgeOS authority

This script is a **Tooling adapter** only. It does **not** define, modify, or
override any engineering standard. Per the authority hierarchy in `AGENTS.md`:

```
AGENTS.md  →  Framework  →  Project Docs  →  Tooling  →  .cline runtime
```

The skill catalogue itself is owned by `Framework/05-Skills/`. This script only
copies it into a Cline-discoverable location.

---

## Related documents

* `Tooling/01-Platforms/Cline/README.md` — Cline platform profile.
* `Framework/05-Skills/README.md` — skill catalogue overview.
* `AGENTS.md` — authority hierarchy.