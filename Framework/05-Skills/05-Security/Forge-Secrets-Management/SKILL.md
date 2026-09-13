# Forge-Secrets-Management

```json
{
  "skill": "Forge-Secrets-Management",
  "category": "05-Security",
  "purpose": "Forge-Secrets-Management provides the capability to manage secrets throughout their lifecycle — defining how credentials, keys and tokens are stored, injected, rotated and retired — so that no secret is exposed in source control, build output, logs or configuration, per the ForgeOS Security Standard principle of protecting sensitive information.",
  "outputs": [
    "Secrets management policy (storage, injection, rotation)",
    "Secrets inventory and rotation record",
    "Leakage findings routed to Forge-Defect-Management"
  ],
  "primaryTemplates": [
    "Security-Risk-Assessment-template.md"
  ],
  "supportingTemplates": [
    "Implementation-Documentation-template.md"
  ]
}
```

## Purpose

Forge-Secrets-Management owns the lifecycle of every secret a system uses: how it is created, where it is stored, how it reaches runtime, when it rotates and how it dies. It is implementation-independent — it defines the policy and verification discipline; concrete vaults, managers and platform mechanisms belong to the project (per the ForgeOS separation of enduring knowledge from project-specific decisions).

Applied across Develop (injection design), Verify (leakage verification) and Operate (rotation and incident response), led by the **Security Engineer** with the **DevOps Engineer**.

---

# Responsibility

Forge-Secrets-Management is responsible for:

* Maintaining a secrets inventory: every secret, its owner, scope, storage location and rotation schedule.
* Defining injection policy: how secrets reach runtime (never in source control, never in build artifacts, never in logs).
* Defining rotation and retirement policy, including emergency rotation triggers.
* Verifying no secret material appears in repositories, history, images, pipelines or logs (detection review).
* Routing confirmed exposures to Forge-Defect-Management and triggering rotation.

It does **not**:

* Store secrets itself or operate specific vault tooling — mechanisms are project-level per the Tooling boundary.
* Create the secrets a system needs — that belongs to project design.
* Perform the runtime control testing of Forge-Security-Testing, beyond leakage-specific checks.

---

# When To Use

* When defining a new service, pipeline or environment that requires credentials.
* During code review follow-up when hardcoded-secret indicators are flagged (e.g. by Forge-Security-Surface-Review).
* On a cadence: inventory review and rotation verification.
* On suspected or confirmed exposure: emergency rotation and impact assessment.

---

# When Not To Use

* As a substitute for access-control design (least privilege is a separate concern under the ForgeOS Security Standard).
* For selecting or operating a specific secrets tool — that is project Tooling, governed by this skill's policy.
* For non-secret configuration values (connection strings without credentials, feature flags).

---

# Inputs

* Secrets inventory (from prior cycles) and architecture/pipeline definitions.
* Hardcoded-secret indicators from Forge-Security-Surface-Review or Forge-Security-Review findings.
* Incident reports where exposure is suspected.

---

# Method

## Step 1 — Inventory
List every secret the system requires: purpose, owner, scope, environment, storage location, rotation schedule.

## Step 2 — Policy
For each secret, define storage class, injection mechanism category (identity-based injection preferred over distributed material) and rotation interval.

## Step 3 — Leakage Verification
Sweep repositories (including history), build artifacts, images, configuration and logs for secret material; classify findings.

## Step 4 — Rotate And Retire
Execute scheduled rotation; verify consumers transitioned; retire superseded secrets. On confirmed exposure, rotate immediately and assess impact window.

## Step 5 — Document And Route
Publish the updated inventory and policy; raise leakage findings to Forge-Defect-Management with severity.

---

# Outputs

* Current secrets inventory with rotation record.
* Secrets management policy (storage, injection, rotation, emergency).
* Leakage findings routed to Forge-Defect-Management.
* Implementation documentation for project-level secret mechanisms (via Implementation Documentation).

---

# Standards Applied

* ForgeOS Security Standard (Principle 6 — Protect Sensitive Information; Principle 2 — Least Privilege)
* OWASP Proactive Controls, OWASP Cheat Sheets (secrets and credential management)
* Documentation Standards
* Deployment Standards (injection into environments)

---

# Interaction With Other Skills

* **Forge-Security-Surface-Review** — supplies hardcoded-secret indicators from graph analysis.
* **Forge-Security-Review** — code review enforces the injection policy; findings route both ways.
* **Forge-Security-Testing** — runtime leakage checks complement the policy sweep.
* **Forge-Infrastructure-as-Code / Forge-CI-CD-Pipeline-Execution** — pipeline and infrastructure designs must conform to the injection policy.
* **Forge-Defect-Management** — receives leakage findings.
* **Forge-Incident-Management** — coordinates response when exposure is operational.

---

# Success Criteria

Forge-Secrets-Management is successful when:

* Every secret in use appears in the inventory with an owner and rotation schedule.
* No secret material is findable in source control, history, artifacts or logs at verification time.
* Rotation happens on schedule and immediately on exposure, with consumers verified.
* Injection policy is documented and conformant across environments.
* Exposure incidents transition to rotation and impact assessment without delay.