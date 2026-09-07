# Release

## Purpose

The Release phase delivers verified software to its intended environment in a controlled, repeatable and auditable manner.

Its purpose is to ensure that software is deployed safely, documentation is complete, operational readiness has been confirmed, and the release can be supported throughout its lifecycle.

No software should be released without successfully passing the Release quality gate.

---

# Objectives

The objectives of the Release phase are to:

* Prepare the software for deployment.
* Execute a controlled deployment.
* Validate the deployment.
* Publish release documentation.
* Tag and version the release.
* Update operational documentation.
* Ensure rollback procedures are available.
* Prepare the product for operational use.

---

# Lead Agent

* DevOps Engineer

---

# Supporting Agents

* QA Engineer
* Security Engineer
* Technical Writer
* Backend Engineer
* Frontend Engineer
* Architect

The Product Manager confirms that the release satisfies the agreed business objectives.

---

# Primary Skills

The DevOps Engineer may utilise ForgeOS Skills including:

* `Forge-Standards-Compliance`
* `Forge-Documentation-Generation`

The Skills catalogue currently has no Delivery category (`05-Skills/06-Delivery/` is empty), so the majority of this phase's required capabilities — Build Automation, Release Management, CI/CD Pipeline Execution, Infrastructure as Code, Environment Configuration, Version Management, Rollback Planning, Deployment Verification and Operational Readiness — are **catalogue gaps** tracked in the ForgeOS Project backlog (see WI-001).

---

# Inputs

The Release phase begins with:

* Verified Software Build
* Successful Test Results
* Approved Release Candidate
* Deployment Documentation
* Infrastructure Configuration
* Version Information
* Release Checklist
* Applicable Framework Standards

---

# Activities

Typical activities include:

* Prepare the release package.
* Execute deployment.
* Verify deployment success.
* Perform smoke testing.
* Tag the release in version control.
* Publish release notes.
* Update the changelog.
* Archive deployment artefacts.
* Confirm operational readiness.
* Document any deployment issues.

---

# Deliverables

The Release phase should produce:

* Production Deployment
* Version Tag
* Release Notes
* Updated Changelog
* Deployment Record
* Deployment Logs
* Operational Documentation
* Rollback Confirmation
* Updated Project Plan

These deliverables become the primary inputs to the Operate phase.

---

# Entry Criteria

The Release phase may begin when:

* The Verify phase has successfully passed its quality gate.
* The release candidate has been approved.
* Deployment procedures have been documented.
* Rollback procedures have been validated.
* Release approval has been granted.

---

# Exit Criteria

The Release phase is complete when:

* Software has been successfully deployed.
* Deployment verification has completed successfully.
* Smoke testing has passed.
* Release documentation has been published.
* Version information has been updated.
* Operational ownership has been established.
* The system is ready for normal operation.

---

# Quality Gate

The Release Gate is passed when:

* Deployment completed successfully.
* No critical deployment issues remain.
* Smoke tests have passed.
* Rollback procedures have been confirmed.
* Documentation has been updated.
* Version information is correct.
* The DevOps Engineer recommends progression to the Operate phase.

---

# Next Phase

Once the Release Gate has been successfully passed, responsibility transfers to the **DevOps Engineer**, who leads the **Operate** phase with continued support from the engineering team.

---

# ForgeOS Principle

The Release phase answers the question:

> **"Can this software be safely delivered into production?"**

A release is not considered complete when the software is deployed—it is complete when the deployment has been verified, documented, versioned and handed over for reliable operation.
