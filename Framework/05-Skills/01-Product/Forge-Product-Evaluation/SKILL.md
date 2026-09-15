# Forge-Product-Evaluation

```json
{
  "skill": "Forge-Product-Evaluation",
  "category": "01-Product",
  "purpose": "Forge-Product-Evaluation provides the capability to assess, during the Improve phase, whether the delivered product is achieving its intended outcomes — comparing actual usage, value and stakeholder satisfaction against the objectives and success measures set at Specify, and converting the findings into evidence-based product decisions.",
  "outputs": [
    "Product evaluation report against stated objectives",
    "Outcome-gap analysis (intended vs observed)",
    "Recommendations routed to Roadmap Planning and Prioritisation"
  ],
  "primaryTemplates": [
    "Prioritisation-Matrix-template.md"
  ],
  "supportingTemplates": [
    "Roadmap-template.md"
  ]
}
```

## Purpose

Forge-Product-Evaluation closes the loop the Specify phase opened: objectives and success measures defined at the start are checked against the delivered, used product. It answers "did it work?" with evidence, not opinion, and turns the answer into the next cycle's input.

It is technology-independent and evaluation-oriented: it assesses outcomes, not code quality (Forge-Technical-Debt-Assessment) or system health (Forge-Architecture-Analysis). Used primarily by the **AI Program Manager** and **Product Owner** during **Improve**.

---

# Responsibility

Forge-Product-Evaluation is responsible for:

* Recovering the original objectives and success measures from the Project Definition.
* Selecting evaluation methods appropriate to each objective (usage analysis, stakeholder interviews, outcome metrics, support-signal review).
* Gathering and interpreting evidence, distinguishing signal from anecdote.
* Producing an outcome-gap analysis: what was intended, what is observed, and why they differ.
* Formulating evidence-based recommendations — continue, adjust, retire — with expected value of each.
* Routing recommendations to Forge-Roadmap-Planning and Forge-Prioritisation.

It does **not**:

* Decide product direction — the Product Owner disposes.
* Assess internal quality or debt (Forge-Technical-Debt-Assessment).
* Execute A/B tests or instrumentation work (Develop/Operate skills implement what this Skill specifies).

---

# When To Use

* During **Improve**, for any feature or release that has been live long enough to produce signal.
* When objectives set at Specify have never been formally checked.
* Before committing to a major new investment in an existing capability.
* When stakeholder opinion and observed data disagree.

# When Not To Use

* For release-gate quality verdicts — use Forge-Release-Readiness-Assessment.
* For architecture health — use Forge-Architecture-Analysis.
* When no objectives or success measures were ever recorded — establish them first (Forge-Scope-Definition), then evaluate.

---

# Inputs

* Project Definition objectives and success measures.
* Usage, operational and support data (from Operate).
* Stakeholder feedback.
* Roadmap and release history.

# Method

## Step 1 — Recover Objectives
Restate what success was defined to mean, and when/where it was expected to show.

## Step 2 — Select Evidence
For each objective, choose the evidence type that could falsify success; guard against confirmation bias.

## Step 3 — Collect
Gather data and feedback via the chosen methods; note collection limitations honestly.

## Step 4 — Analyse
Compare observed outcomes against objectives; separate measurement noise from real gaps.

## Step 5 — Diagnose Gaps
For each gap, hypothesise whether the cause is understanding, implementation, adoption or measurement.

## Step 6 — Recommend
Formulate options (continue / adjust / retire) with evidence and trade-offs.

## Step 7 — Route
Hand recommendations to Roadmap Planning and Prioritisation; record decisions in the Decision Log.

---

# Outputs

* Product evaluation report with outcome-gap analysis.
* Evidence-based recommendations with trade-offs.
* Updated objectives or success measures where the original ones proved wrong.

---

# Standards Applied

* Requirements Standards (traceability to stated objectives)
* Documentation Standards
* Decision-Making ("AI proposes, Product Owner disposes")

---

# Interaction With Other Skills

* **Forge-Scope-Definition** — supplies the objectives being evaluated.
* **Forge-Roadmap-Planning** — consumes recommendations into forward plans.
* **Forge-Prioritisation** — sequences resulting work.
* **Forge-Retrospective-Facilitation** — process findings complement product findings.
* **Forge-Technical-Debt-Assessment** — internal-quality view alongside this Skill's outcome view.

---

# Success Criteria

Forge-Product-Evaluation is successful when:

* Every objective from Specify has been checked against evidence, or its absence is flagged.
* Recommendations cite evidence and trade-offs, not preference.
* The product loop closes: Specify objectives → delivered → evaluated → next Specify input.
* Retired or adjusted capabilities are documented decisions, not accumulated neglect.