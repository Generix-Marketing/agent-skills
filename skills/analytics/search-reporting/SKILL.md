---
name: search-reporting
description: Use this skill when the user wants to build SEO reports, AEO reports, search visibility reports, executive dashboards for marketing, monthly or quarterly client reports, stakeholder communication about search performance, KPI dashboards, or wants help presenting search data to non-technical audiences. Triggers include "search reporting," "SEO report," "AEO report," "monthly report," "quarterly report," "client report," "executive dashboard," "marketing dashboard," "KPI report," "stakeholder report." This skill produces a reporting program covering cadence, format, audience, and the specific metrics that get surfaced. Treats SEO ranking and AEO citation as co-equal first-class data, plus the broader marketing channels. Reads client-context.md. Pairs with marketing-analytics (the underlying data infrastructure) and citation-tracking (the AEO measurement source).
---

# Search Reporting

This skill produces a reporting program. The output is a cadence, a format, an audience map, and a defined set of metrics that get surfaced per report. The point is communication, not the data itself; the data lives in `marketing-analytics` and `citation-tracking`.

The skill is called "search-reporting" rather than "seo-reporting" because reporting that only covers SEO is half the picture in 2026. Stakeholders need to see both traditional search performance and AI citation visibility to make decisions about where to invest. A monthly report that surfaces SEO ranking gains while ignoring AEO citation losses (or vice versa) hides the real state of the program.

Most reporting fails not because the data is bad but because nobody decided who the report is for, what decisions it informs, and how often it should ship. This skill addresses those decisions first.

## When to Run This Skill

Run it when:

- The user needs to start a recurring reporting cadence (monthly client report, quarterly executive review)
- The user has reporting in place but stakeholders complain it does not answer their questions
- The user is onboarding a new client and needs to lock the reporting expectations
- The brand is adding AEO to the program and existing reports need to incorporate the new measurement
- The user needs to defend a search program in a budget review

Skip it when:

- The user wants the underlying measurement built (use `marketing-analytics`)
- The user wants AEO measurement set up (use `citation-tracking`)
- The user wants strategy work, not reporting (use `content-strategy` or category-specific strategy skills)

## Before You Start

Read `client-context.md` for the goals, the stakeholders, and the constraints. The report must serve the actual audience.

Confirm the measurement infrastructure is in place. A report cannot show what is not measured. If `marketing-analytics` and `citation-tracking` are not deployed yet, build those first; reporting layers on top.

## Three Decisions

A reporting program is the answer to three questions.

### 1. Who is the report for?

Pick the primary audience. Reports trying to serve multiple audiences usually serve none.

- **The brand owner or marketing executive** wants top-line outcomes (leads, pipeline, revenue contribution, brand visibility), trends, and the answer to "is what we are doing working?"
- **The marketing team** wants tactical signals (which pages are gaining or losing rank, which clusters are performing, what AEO citation rate has done this month) to inform next sprint's work.
- **The agency-to-client report** is usually a hybrid: enough top-line for the client to feel confident, enough tactical for the client to understand what was actually done and why.
- **The board or investor audience** wants strategic context (channel mix shifting toward AEO, brand authority indicators, competitive positioning) more than tactical metrics.

A report cannot be three things at once. Pick the primary; serve secondary audiences with a separate report or with appendix sections.

### 2. What cadence?

Match the cadence to the decision speed.

- **Weekly:** internal team tracking, fast-moving paid campaigns, ecommerce inventory pages. Rarely for SEO or AEO since neither moves at weekly resolution.
- **Monthly:** the default for most marketing reports. Aligns with most planning cycles. Catches month-over-month trends without drowning in noise.
- **Quarterly:** strategic review, executive audiences, board-level reporting. Adequate for slow-moving entity authority work.
- **Annual:** business planning, budget defense, year-in-review.

Most search programs need one monthly tactical report and one quarterly strategic review. Adding more cadences without clear purpose creates work without value.

### 3. What goes in the report?

Tight scope per report. The instinct is to add metrics; resist. Reports that try to cover everything become impossible to read; the audience skips to whatever they came for and misses what mattered.

Standard sections for a monthly search performance report:

1. **Executive summary:** 3-5 sentences. What changed, what it means, what is next.
2. **Top-line metrics dashboard:** 5-8 metrics tracked over time (12-month rolling trend). Includes both SEO and AEO metrics.
3. **What changed:** specific shifts since the last report, with hypotheses for why.
4. **Work shipped:** what was actually done in the period (publishes, refreshes, technical fixes, distribution).
5. **Next period focus:** what is planned, and what the expected impact would look like in the next report.
6. **Notes and caveats:** measurement gaps, anomalies, anything that needs context.

Avoid: raw data dumps, dozens of charts, "interesting findings" sections that bury the actual important signal.

## The Dual-Surface Reporting Frame

Every search report in 2026 should surface both surfaces at every level.

### Top-line metrics (every report)

| SEO surface | AEO surface |
|---|---|
| Organic traffic | AI referral traffic |
| Organic conversions | Mention rate across major AI engines |
| Average position on tracked keywords | Citation rate across major AI engines |
| Indexation health | AI Overview presence on tracked queries |
| GSC clicks and impressions | Competitive citation share |

Trend each one over 12 months. Compare to prior period (month-over-month) and same period prior year. Color-code direction (positive change, negative change, flat).

### Tactical metrics (monthly report)

For the marketing team:

- Top 10 pages by organic traffic gained or lost
- Top 5 cluster performance changes
- New keywords appearing in top 10
- New AI citations in tested query set
- Refresh impact: pages refreshed last month and their delta
- Technical health: indexation issues, CWV changes, schema errors

### Strategic metrics (quarterly report)

For the executive audience:

- Quarterly outcome metrics: leads / conversions / revenue attributed to search
- Cluster-level performance against the strategy plan
- AEO citation share trend versus competitors
- Entity authority indicators (Wikipedia presence changes, named methodology adoption, third-party citations)
- Program ROI: rough investment vs outcomes attributable

## Reporting Cadence Patterns

### Monthly tactical report

Audience: marketing team, agency-to-client, internal stakeholders.

Length: 4-8 pages or equivalent dashboard view.

Cadence: ships within 5 business days of month-end.

Format: PDF, Looker Studio dashboard link, or Notion / Google Doc as the team prefers. PDF for client deliverables when polish matters; live dashboards when ongoing interaction matters more than presentation.

Standard sections (per "what goes in the report" above): exec summary, top-line metrics, what changed, work shipped, next period focus, notes.

### Quarterly strategic review

Audience: brand owner, marketing executive, board.

Length: 10-20 pages or equivalent presentation.

Cadence: ships within 2 weeks of quarter-end, ideally before the executive's quarterly planning.

Format: usually a presentation deck (Keynote, PowerPoint, Google Slides) rather than a dashboard, since the strategic narrative matters more than live data.

Sections beyond the monthly:

- Quarter-over-quarter trend on outcome metrics
- Strategy plan review: which clusters performed against plan, which did not
- Competitive positioning: how the brand stands versus named competitors on both surfaces
- Investment ROI: hours invested versus outcomes generated
- Strategic recommendations for next quarter
- Risks and dependencies

### Annual review

Audience: budget owner, executive team, board.

Length: 20-40 pages or longer presentation.

Cadence: ships 30-45 days after year-end.

Format: comprehensive presentation plus underlying data appendix.

Sections beyond the quarterly:

- Year-over-year metric comparison
- Major strategic moves and their outcomes
- Honest assessment of what worked and what did not
- Forward look: next year's program direction and investment ask

## Output Format

```markdown
# Search Reporting Program: [Client]

**Date:** [YYYY-MM-DD]
**Strategist:** [Agent or user]
**Program owner:** [Person]

## Decision 1: Primary Audience

[Specific named audience for each report type, with what they care about and what decisions they make from the report]

## Decision 2: Cadence

| Report type | Audience | Frequency | Format | Ship target |
|---|---|---|---|---|
| Monthly tactical | [Audience] | Monthly | [PDF / Dashboard / Doc] | 5 business days after month-end |
| Quarterly strategic | [Audience] | Quarterly | [Presentation] | 2 weeks after quarter-end |
| Annual review | [Audience] | Annual | [Presentation] | 30-45 days after year-end |

## Decision 3: Report Contents

### Monthly Report Contents

[Specific sections, what goes in each, links to data sources]

### Quarterly Report Contents

[Specific sections, what goes in each]

### Annual Report Contents

[Specific sections, what goes in each]

## Data Sources

| Source | What it provides | Refresh frequency | Owner |
|---|---|---|---|
| GA4 | Traffic, conversions, channel performance, AI referral | Live | [Person] |
| Google Search Console | Impressions, clicks, position, queries | Daily | [Person] |
| CRM (HubSpot/Salesforce) | Lead source attribution, pipeline value | Real-time | [Person] |
| AEO citation tracker | Mention rate, citation rate, position-in-response, AI Overview presence | Monthly | [Person] |
| Rank tracker | Position on tracked keyword set | Daily | [Person] |
| Brand monitoring | Unlinked mentions, brand sentiment | Weekly | [Person] |

## Dashboard Set

| Dashboard | Audience | Tool | Refresh | URL |
|---|---|---|---|---|

## Reporting Calendar

[Specific dates for next 12 months when each report ships]

## Roles

- **Report owner:** [Person, what they do]
- **Data sources owner:** [Person, what they do]
- **Stakeholder distribution:** [Person, who gets what]

## Notes

[Any constraints, dependencies, evolving items]
```

## Practical Patterns

### The five-sentence executive summary

For every monthly report, the first thing the audience sees should be five sentences or fewer:

1. Headline number with direction (e.g., "Organic traffic grew 12% vs last month; AI referral grew 38%.")
2. The most important driver (e.g., "Driven primarily by the insurance cluster going live in week 2.")
3. The most important risk or concern (e.g., "AI Overview presence on cost queries dropped from 4 to 2 cited sources; investigating.")
4. The most important upcoming work (e.g., "Cardinal Ridge insurance methodology launches next sprint.")
5. The headline ask if any (e.g., "Need stakeholder review of the storm-damage data piece by month-end.")

If a stakeholder reads only this, they know the state of the program. The rest of the report supports the summary; the summary does not bury the conclusion at the end.

### The "what changed" section

A list of specific deltas since last report, each with a 1-2 sentence hypothesis for why.

- "Organic traffic to /resources/roof-replacement-cost-indianapolis/ grew 23% MoM (was 412 visits, now 506). Hypothesis: page-2-push refresh ship on June 10 moved the page from position 14 to position 9."
- "AI citation rate for 'best Indianapolis roofer' query dropped from 12% to 4% across ChatGPT and Perplexity. Hypothesis: a competitor published a strong comparison piece in May; investigating whether to refresh our equivalent."

Specific, dated, with cause-and-effect hypotheses. Generic "traffic went up" entries train the audience to ignore the section.

### The honest "did not work" section

Every report should include something that did not work. Programs without failure sections train stakeholders to distrust the success sections.

- "Refreshed /blog/storm-damage-tips/ on May 18; traffic has not yet moved. Will reassess at 60-day mark."
- "Launched neighborhood page for Brownsburg on May 22; indexation is taking longer than the Carmel/Fishers pages did. Investigating."

Honest reporting builds trust faster than uniformly positive reporting.

## When the User Pushes Back

**"The client just wants to see the numbers go up."** Probably true at first. The five-sentence summary serves this. The rest of the report serves the operator who needs to know what to do next. Both audiences can be served by the same report when it is layered.

**"We do not have time to write narrative reporting; can we just send the dashboard?"** Sometimes. A live dashboard works when the audience is technical enough to interpret it AND interacts with it regularly. For non-technical executives, a live dashboard with no narrative gets opened once and abandoned. The narrative is what makes the data legible.

**"Our stakeholders want weekly reports."** Push back. Weekly reports for search programs create noise without signal; SEO and AEO both move at month-plus resolution. Offer a weekly health-check spotcheck (just the top-line metrics dashboard) plus the standard monthly report instead.

**"We have not been reporting AEO and the client did not ask for it."** Lead the conversation. Introduce one or two AEO metrics in the next report with a brief explanation. As AI search grows as a share of buyer behavior, clients increasingly expect this; being proactive frames the agency as ahead of the curve.

## Common Pitfalls

- **Reports that only cover SEO.** Half the picture in 2026. Add AEO measurement even if the client did not ask.
- **Dashboard-only reporting with no narrative.** Numbers without interpretation are open to misreading. Always pair data with summary.
- **No "what did not work" section.** Uniformly positive reports erode trust over time.
- **No specific next-period actions.** A report that does not say what is happening next is harder to discuss in the stakeholder meeting.
- **Inconsistent cadence.** A monthly report that ships in week 2 of one month and week 4 of the next loses its usefulness. Lock the ship date.
- **Drowning the report in metrics.** 30 charts trains the audience to skip the report. 5-8 well-chosen charts plus narrative beats it every time.
- **Reporting on activity, not outcomes.** "We published 8 pieces this month" is activity. "Those 8 pieces contributed 32 conversions" is outcome. Surface outcomes; mention activity as context.
- **Letting the report become the agency's record of work** rather than the client's tool for decisions. Activity belongs in invoices; outcomes belong in reports.

## References

- `references/report-templates.md`: Starter templates for monthly tactical, quarterly strategic, and annual review reports, including section structures and metric sets.
