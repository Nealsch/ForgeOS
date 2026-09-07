| Term                        | Definition                                                                        |
| --------------------------- | --------------------------------------------------------------------------------- |
| Product Owner               | The human authority who owns business outcomes, priorities and approvals; also the business owner of the project. See `Framework/11-Collaboration Orchestration/Product-Owner.md`. |
| AI Program Manager          | Persistent AI collaborator that manages software delivery using ForgeOS.          |
| Collaboration Orchestration | The framework capability that determines how engineering work is executed.        |
| Work Item                   | The fundamental unit of engineering work in ForgeOS, independent of any external tracking platform. |
| Work Item Management        | A Collaboration Orchestration capability that discovers, validates, enriches, prioritises and prepares Work Items before they enter the SDLC. |
| Engineering Backlog         | The local, authoritative list of validated and prioritised Work Items produced by Work Item Management. |
| Platform Adapter            | A Tooling-layer component that translates between an external tracker's native work-item model and the ForgeOS Work Item model. |
| Agent                       | A specialist engineering role responsible for a defined discipline.               |
| Skill                       | A reusable engineering capability consumed by an Agent.                           |
| Standard                    | A reusable engineering rule or quality expectation.                               |
| Template                    | A standard structure for creating engineering artefacts.                          |
| Workflow                    | The SDLC phases defining when engineering work occurs.                            |
| Project                     | The implementation repository containing software and project-specific artefacts. |
| Framework                   | The reusable ForgeOS engineering operating system.                                |
| Tooling                     | The layer that integrates ForgeOS with AI platforms and external systems; never defines engineering standards or workflow. |
| Codebase Analyst            | ForgeOS Agent responsible for deriving the structure, dependencies, debt, security surface and documentation of an existing codebase from analysis-tool outputs (ADR-007). |
| Codebase Analysis Capability | The platform-neutral contract (ADR-008) that any codebase analysis tool must satisfy to be consumed by the Codebase Analyst Agent. |
| Capability Contract         | A Tooling-layer, platform-neutral interface a tool must satisfy so it can be substituted without Framework changes (e.g. the Codebase Analysis Capability). |
| Knowledge Graph             | A persistent representation of a codebase as nodes (concepts, modules, functions) and edges (relationships), each edge carrying a confidence label. Produced by a Codebase Analysis tool; interpreted by the Codebase Analyst Agent. |
| Confidence Label            | A required tag on every graph edge: `EXTRACTED` (explicit in source), `INFERRED` (reasonable deduction) or `AMBIGUOUS` (unverified). No relationship may be reported as fact unless `EXTRACTED`. |
| God Node                    | A node with exceptionally high degree — a structurally central concept that often signals coupling or a missing boundary. Surfaced by the analysis tool; interpreted as a risk by the Codebase Analyst. |
| Graphify                    | The first preferred implementation of the Codebase Analysis Capability; an external tool, not a ForgeOS concept. Profiled in the Tooling layer (ADR-008). |
| Architecture Assessment     | A Framework artefact (template under `07-Templates/02-Architecture/`) capturing the current-state structure, dependencies, risks and debt of an existing codebase, produced by the Codebase Analyst. |
| Adapter Boundary            | The discipline that keeps tool-specific mechanics (graph build, extraction, MCP serving) in the Tooling layer and engineering interpretation in the Framework. |
| Exit Criteria               | The measurable conditions that must be satisfied for an SDLC phase to be considered complete. |
| Quality Gate                | The formal review at the end of an SDLC phase that verifies the phase's Exit Criteria have been met before work proceeds to the next phase. |
