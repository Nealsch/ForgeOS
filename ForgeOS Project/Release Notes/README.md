---
purpose: Index and explain the Release Notes folder, which records what changed in each ForgeOS framework release.
when_used: At every release (release-process.md step 4) and whenever a reader needs to understand framework history.
produced_by: Engineering
consumed_by:
  - All Agents
  - Forge-Context-Loading
  - Forge-Knowledge-Management
category: 06-Delivery
template_type: structural
framework_authority: Framework/03-Governance/release-process.md
---

# Release Notes

This folder holds the release notes for ForgeOS-the-framework.

Release notes are the human-readable record of **what changed** in each version of the ForgeOS Framework. They are written during step 4 of the release workflow defined in `Framework/03-Governance/release-process.md`.

---

# Purpose

Release notes allow projects that consume ForgeOS to understand:

* what was added, changed, fixed or removed in a given version;
* which ADRs were linked to a release;
* the compatibility impact of upgrading;
* the Git tag that corresponds to the released state.

They are part of the **living project documentation** for ForgeOS and live in `ForgeOS Project/`, not in the Framework.

---

# File Convention

Each release has one file named after its semantic version:

```text
ForgeOS Project/Release Notes/
├── README.md        ← this file
└── 1.0.0.md         ← release notes for v1.0.0
```

Future releases follow the same pattern: `1.1.0.md`, `1.2.0.md`, `2.0.0.md`, etc.

---

# Release Index

| Version | Date       | Tag      | Notes |
| ------- | ---------- | -------- | ----- |
| 1.0.0   | 2026-07-18 | `v1.0.0` | [1.0.0.md](1.0.0.md) — Initial stable release of the ForgeOS Framework. |

---

# Authority

This folder is **not authoritative** for the release process. The authoritative source is:

* `Framework/03-Governance/release-process.md` — the release workflow.
* `Framework/03-Governance/Version/README.md` — the version-numbering scheme.
* `Framework/03-Governance/Version/Releases/` — the formal release records (one per version).

Release notes describe the change; release records are the immutable evidence of the release.

---

# Related Documents

* `Framework/03-Governance/release-process.md`
* `Framework/03-Governance/Version/README.md`
* `Framework/03-Governance/Version/Releases/`
* `ForgeOS Project/ADRs/` — ADRs referenced from each release.