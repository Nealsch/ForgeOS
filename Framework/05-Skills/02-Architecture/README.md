# 02-Architecture

Skills in this category design and evaluate the structure of the system. Together they cover the architecture discipline from solution design and analysis, through decision capture, to data, integration, migration, and threat perspectives.

**Architecture skills decide; Engineering skills build.** Design artefacts produced here — architecture definitions, ADRs, data models, integration designs, threat models — are consumed by the Engineering category during the Develop phase. Conversely, building the data layer is Engineering (`Forge-Database-Implementation`); designing its logical model is Architecture (`Forge-Data-Modelling`). Threat modelling is a design activity and therefore lives here; security verification of the built system is performed by the Security category.

## Skills

| Skill | Responsibility |
| ----- | -------------- |
| [Forge-Solution-Architecture](Forge-Solution-Architecture/SKILL.md) | Defines the overall solution structure and its key technical decisions. |
| [Forge-Architecture-Analysis](Forge-Architecture-Analysis/SKILL.md) | Evaluates existing architecture against quality attributes, constraints, and health indicators. |
| [Forge-Architecture-Decision-Records](Forge-Architecture-Decision-Records/SKILL.md) | Captures significant architectural decisions, their context, and consequences as durable records. |
| [Forge-Data-Modelling](Forge-Data-Modelling/SKILL.md) | Designs the logical and conceptual data structures of the system. |
| [Forge-Integration-Design](Forge-Integration-Design/SKILL.md) | Designs how the system interacts with external systems, services, and contracts. |
| [Forge-Migration-Assessment](Forge-Migration-Assessment/SKILL.md) | Assesses feasibility, risk, and strategy for migrating systems or platforms. |
| [Forge-Threat-Modelling](Forge-Threat-Modelling/SKILL.md) | Identifies and evaluates security threats at design time, before code exists to attack. |

## Relationship To The SDLC

Architecture skills are primary for the **Design** phase, and contribute to **Specify** (feasibility and constraint input), **Develop** (decision guidance during implementation), and **Improve** (architecture analysis of the running system).