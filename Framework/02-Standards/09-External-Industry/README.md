---
purpose: Define the External-Industry standards category as the home for published industry standards not controlled by ForgeOS, and clarify the boundary with ForgeOS-interpreted standards.
when_used: When adopting, referencing, or assessing an external industry standard that ForgeOS does not author.
produced_by: Forge-Standards-Compliance
consumed_by:
  - All Agents
  - Forge-Context-Loading
  - Forge-Standards-Compliance
  - Security Engineer
category: 02-Standards
template_type: structural
framework_authority: Framework/02-Standards/README.md
---

# External Industry Standards

This folder is the ForgeOS home for **published industry standards that are not controlled by ForgeOS**.

These are externally authored, externally maintained standards (e.g. ISO, NIST, CIS, PCI, OWASP source material) that ForgeOS **references** but does **not** reproduce or own.

---

# Purpose

ForgeOS engineering must align with recognised industry standards. However, those standards are owned by their respective bodies, licensed under their own terms, and updated on their own schedules. ForgeOS does **not** vendor-copy their canonical text.

This category exists to:

* **name** the external standards ForgeOS aligns with;
* **link** to their canonical sources;
* **record** the edition/version ForgeOS targets;
* **point** to any ForgeOS-authored application guidance that interprets them.

It does **not** reproduce their content.

---

# What Belongs Here vs What Belongs Elsewhere

This is the critical boundary. It exists to keep authoritative ownership clean.

| Content type | Where it lives | Example |
| --- | --- | --- |
| Canonical text of an external standard | **Not in ForgeOS.** Link to the canonical source. | https://owasp.org/Top10/ |
| A reference entry naming an external standard | **Here** (`09-External-Industry/`) | "ForgeOS aligns with ISO 27001:2022" |
| ForgeOS-authored interpretation / application guidance | **In the relevant ForgeOS standard** (e.g. `05-Security/`) | `Framework/02-Standards/05-Security/OWASP-Top10.md` |
| A ForgeOS-original standard | In the relevant ForgeOS standard category | `Framework/02-Standards/03-Coding/` |

> **Note on OWASP.** The OWASP application guides under `Framework/02-Standards/05-Security/` (OWASP Top 10, ASVS, WSTG, Proactive Controls, Cheat Sheets) are **ForgeOS-authored interpretations** of external OWASP material. They deliberately do *not* reproduce OWASP content — each one states *"This document does not reproduce OWASP content. It defines how ForgeOS adopts [the standard]…"*. Therefore those files correctly live in `05-Security/`, **not** here. The canonical OWASP sources themselves are referenced *from* those files.

---

# Current Contents

At v1.0.0 this folder is intentionally minimal. No external standards have been given standalone reference entries yet, because the ForgeOS-interpreted standards that matter most (OWASP) already carry their own canonical-source links.

Candidate future entries:

* ISO 27001 / 27002 (information security management)
* NIST Cybersecurity Framework (CSF)
* CIS Benchmarks (infrastructure hardening)
* PCI DSS (payment handling)
* SOC 2 (controls)

Each would be a single short reference file naming the standard, the edition ForgeOS targets, the canonical URL, and any ForgeOS-authored interpretation that applies.

---

# File Convention (when populated)

```text
09-External-Industry/
├── README.md              ← this file
├── iso-27001.md           ← reference entry
├── nist-csf.md            ← reference entry
└── ...
```

Each reference entry should record at minimum:

| Attribute | Example |
| --- | --- |
| Standard name | ISO/IEC 27001:2022 |
| Owner body | ISO/IEC |
| Canonical URL | https://www.iso.org/standard/27001 |
| License | (as stated by the owner) |
| ForgeOS target edition | 2022 |
| ForgeOS interpretation | *link, or "no ForgeOS interpretation yet"* |

---

# Authority and Conflict

External standards are **referenced**, not authored, by ForgeOS.

* Where an external standard and a ForgeOS-authored standard both apply, the ForgeOS standard is the operative engineering instruction; the external standard is the *goal* it interprets.
* If the canonical external source is revised, the ForgeOS-authored interpretation (in `05-Security/` etc.) is reviewed and its "Current edition" table updated.
* This folder never overrides a ForgeOS-authored standard.

---

# Related Documents

* `Framework/02-Standards/README.md` — the Standards layer and its categories.
* `Framework/02-Standards/05-Security/README.md` — Security Standards Hierarchy, which lists the ForgeOS-authored OWASP application guides.
* `Framework/02-Standards/05-Security/OWASP-Top10.md` — example of a ForgeOS-authored interpretation that references (but does not reproduce) an external standard.