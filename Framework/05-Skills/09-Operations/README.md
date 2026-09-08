# Operations

## Purpose

The Operations skills define the capabilities required to run software reliably in production: observing system health, responding to incidents, analysing evidence, operating infrastructure, protecting data and governing operational change.

Operations spans the Operate phase of the ForgeOS SDLC and feeds improvement back into the lifecycle through incident analysis and monitoring insight.

---

# Skills

| Skill | Purpose |
| ----- | ------- |
| Forge-Production-Monitoring | Observation strategy across health, performance and capacity, with alert-worthiness judgement. |
| Forge-Incident-Management | Structured incident response from triage to resolution, with root-cause analysis and corrective actions. |
| Forge-Log-Analysis | Logging quality, triage, cross-service correlation and evidence extraction. |
| Forge-Infrastructure-Management | Infrastructure lifecycle operation, change discipline, capacity execution and environment inventory. |
| Forge-Backup-and-Recovery | Backup strategy, recovery objectives and rehearsed, verified restore capability. |
| Forge-Operational-Change-Management | Classification, approval and recording of operational changes, including emergency handling. |

---

# Security Operations

Security monitoring and security incident response are **not** covered by this category. Security capability is owned exclusively by the `05-Security` category and is tracked as skill-gaps backlog item #8. Where operational monitoring surfaces a security concern, route it to the Security category; do not duplicate security capability here.

---

# Relationship to Other Categories

* **06-Delivery** — hands over verified, running systems; this category operates them.
* **04-Quality** — incident analysis and monitoring insight feed quality improvement.
* **05-Security** — owns all security monitoring and security incident capability (gap #8).
* **Governance (`03-Governance`)** — change and release governance are authoritative; Forge-Operational-Change-Management and Forge-Release-Management align to them.
