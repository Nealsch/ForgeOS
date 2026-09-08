# Design Blueprint — WI-003 Delivery & Operate Skill Categories

## Purpose

Transform the approved requirements baseline (`ForgeOS Project/Requirements/WI-003-delivery-operate-skills-requirements.md`) into per-skill boundary designs. Each entry defines the consolidated capability set, the responsibility boundary (Does / Does not), template references, and catalogue interactions. Develop authors each SKILL.md directly from its entry.

## Category Structure

```text
Framework/05-Skills/
├── 06-Delivery/                    (Release phase — 7 skills, NEW content)
│   └── README.md                   (NEW)
└── 09-Operations/                  (Operate phase — 6 skills, NEW folder)
    └── README.md                   (NEW)
```

## 06-Delivery Skill Designs

### Forge-Build-Automation
* **Consolidates:** Build Automation.
* **Does:** repeatable scripted builds; build scripting standards; dependency resolution; build reproducibility; artifact production and naming; build failure diagnosis approach.
* **Does not:** execute pipelines (→ Forge-CI-CD-Pipeline-Execution); configure infrastructure (→ Forge-Infrastructure-as-Code).
* **Interacts:** Forge-CI-CD-Pipeline-Execution (consumes build artifacts), Forge-Release-Management.

### Forge-CI-CD-Pipeline-Execution
* **Consolidates:** CI/CD Pipeline Execution.
* **Does:** pipeline stage design (build → test → package → deploy); trigger and gating strategy; pipeline health interpretation; secret-handling principles; pipeline failure triage.
* **Does not:** author tests (→ Quality skills); own deployment verification (→ Forge-Deployment-Verification).
* **Interacts:** Forge-Build-Automation, Forge-Test-Planning, Forge-Release-Management.

### Forge-Release-Management
* **Consolidates:** Release Management + Version Management.
* **Does:** release scope definition and classification; Semantic Versioning application; release notes and release-record production; release approval routing; version-pointer hygiene; release scheduling.
* **Does not:** decide compatibility classification (→ `03-Governance/compatibility.md`; the skill applies it); own the release workflow (→ `03-Governance/release-process.md` is authoritative; the skill provides the capability to run it well).
* **Templates:** Release-Plan-template.
* **Interacts:** Forge-CI-CD-Pipeline-Execution, Forge-Operational-Readiness, Forge-Rollback-Planning.

### Forge-Infrastructure-as-Code
* **Consolidates:** Infrastructure as Code + Environment Configuration.
* **Does:** declarative infrastructure definition principles; environment parity strategy; configuration externalisation; environment promotion (dev → staging → prod); drift awareness; IaC review approach.
* **Does not:** name or teach specific tools (NFR-1); operate production infrastructure (→ Forge-Infrastructure-Management).
* **Interacts:** Forge-Deployment-Verification, Forge-Production-Monitoring.

### Forge-Rollback-Planning
* **Consolidates:** Rollback Planning.
* **Does:** rollback trigger definition; rollback path design (revert vs roll-forward); data-migration rollback considerations; rollback rehearsal strategy; rollback documentation into the runbook.
* **Does not:** execute incident response (→ Forge-Incident-Management); define backup/restore (→ Forge-Backup-and-Recovery).
* **Templates:** RUNBOOK template.
* **Interacts:** Forge-Release-Management, Forge-Deployment-Verification, Forge-Backup-and-Recovery.

### Forge-Deployment-Verification
* **Consolidates:** Deployment Verification.
* **Does:** post-deployment verification strategy; smoke-check definition; verification evidence capture; go/no-go contribution; verification sign-off recording.
* **Does not:** author the test suite (→ Quality skills); monitor ongoing production health (→ Forge-Production-Monitoring).
* **Interacts:** Forge-Release-Management, Forge-Production-Monitoring (handover after the verification window).

### Forge-Operational-Readiness
* **Consolidates:** Operational Readiness.
* **Does:** readiness review design (monitoring in place, rollback tested, docs current, ownership assigned); readiness gate recommendation into the release decision; operational handover packaging.
* **Does not:** perform the readiness activities themselves (coordinates them); approve the release (Product Owner decision per Governance).
* **Interacts:** Forge-Release-Management, Forge-Production-Monitoring, Forge-Rollback-Planning.

## 09-Operations Skill Designs

### Forge-Production-Monitoring
* **Consolidates:** Production Monitoring + Performance Monitoring + Capacity Planning.
* **Does:** monitoring strategy (health, performance, capacity); signal and threshold definition approach; trend and capacity forecasting; alert-worthiness judgement.
* **Does not:** respond to alerts (→ Forge-Incident-Management); select monitoring tools (NFR-1).
* **Interacts:** Forge-Incident-Management, Forge-Infrastructure-Management (capacity execution).

### Forge-Incident-Management
* **Consolidates:** Incident Management + Root Cause Analysis.
* **Does:** incident classification and severity approach; response workflow (detect → triage → mitigate → resolve); communication duties; structured root-cause analysis method; corrective-action tracking into the backlog.
* **Does not:** execute rollbacks (→ Forge-Rollback-Planning provides the plan); perform blame-oriented review.
* **Interacts:** Forge-Rollback-Planning, Forge-Log-Analysis, Forge-Operational-Change-Management.

### Forge-Log-Analysis
* **Consolidates:** Log Analysis.
* **Does:** logging quality expectations; log-triage method; correlation across services; evidence extraction for incident and root-cause analysis.
* **Does not:** define monitoring signals (→ Forge-Production-Monitoring); own the incident workflow.
* **Interacts:** Forge-Incident-Management, Forge-Production-Monitoring.

### Forge-Infrastructure-Management
* **Consolidates:** Infrastructure Management.
* **Does:** infrastructure lifecycle capability (provision, configure, patch, decommission); infrastructure change discipline; capacity execution from monitoring forecasts; environment inventory ownership.
* **Does not:** author IaC definitions (→ Forge-Infrastructure-as-Code); respond to incidents (→ Forge-Incident-Management).
* **Interacts:** Forge-Infrastructure-as-Code, Forge-Production-Monitoring, Forge-Backup-and-Recovery.

### Forge-Backup-and-Recovery
* **Consolidates:** Backup and Recovery.
* **Does:** backup strategy (scope, frequency, retention); recovery-point/recovery-time objective setting; restore-rehearsal discipline; backup verification approach.
* **Does not:** execute disaster recovery during an incident (→ Forge-Incident-Management coordinates; this skill owns the plan's quality).
* **Interacts:** Forge-Rollback-Planning, Forge-Infrastructure-Management.

### Forge-Operational-Change-Management
* **Consolidates:** Change Management (operational).
* **Does:** operational change classification (standard / normal / emergency); change-window and approval discipline; change recording; post-change verification linkage; emergency-change handling.
* **Does not:** govern SDLC/framework change lifecycle (→ `03-Governance/change-management.md` is authoritative; this skill must reference, never contradict, Governance).
* **Interacts:** Forge-Incident-Management (emergency changes), Forge-Deployment-Verification.

## Cross-Cutting Design Rules

* **Security Monitoring:** no skill created; `09-Operations/README.md` carries a security-operations note pointing to `05-Security/` and skill-gaps #8 (FR-6).
* **Governance deference:** Forge-Release-Management and Forge-Operational-Change-Management explicitly state Governance owns the process; the skills provide the judgement capability to execute it.
* **Missing templates:** skills reference the closest existing template; none created in this WI.
* **README designs:** category READMEs follow the sibling pattern (purpose, skills table, relationship to other categories); `05-Skills/README.md` gains a `09-Operations` row.

## Traceability

* Requirements: `ForgeOS Project/Requirements/WI-003-delivery-operate-skills-requirements.md`
* Work Item: `ForgeOS Project/Backlog/WI-003-delivery-operate-skills.md`

