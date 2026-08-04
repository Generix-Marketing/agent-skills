---
name: citation-tracking
description: Use this skill when the user wants to measure AEO performance, track AI search visibility, monitor brand mentions or citations in ChatGPT/Claude/Perplexity/Gemini, set up an AEO measurement program, build a baseline, or report on AI search results to a stakeholder. Triggers include "track AI search," "measure AEO," "AI visibility tracking," "monitor ChatGPT mentions," "track brand in Perplexity," "AEO reporting," "citation tracking," "AI search measurement," "LLM monitoring," "AI mention monitoring." This skill produces a measurement program covering mention rate, citation rate, position in response, and competitive presence, with a monthly cadence and clear reporting format. Works tool-agnostically with manual tracking or with paid AI search tracking platforms.
---

# Citation Tracking

This skill produces an AEO measurement program. The output is a tracking workflow the user can run monthly, with a defined query set, defined metrics, and a reporting format that holds up in front of a stakeholder.

The core distinction the program enforces: **mention rate** is brand awareness; **citation rate** is authority. Most AEO measurement tools focus on the easier-to-measure mention rate. This skill measures both, separates them in the report, and adds position-in-response tracking as the most sensitive leading indicator.

## When to Run This Skill

Run it when:

- The user is setting up AEO measurement for the first time
- The user has been running AEO work but cannot prove impact
- The user wants to baseline before launching AEO work
- The user wants a monthly reporting template for stakeholder updates
- The `ai-search-audit` flagged Check #12 (citation rate) or Check #20 (position tracking) as gaps

Skip it when:

- The user wants help acting on tracking results (use the relevant tactic skill)
- The user wants a one-time audit, not a recurring program (use `ai-search-audit`)
- The user is asking what to track conceptually (use `aeo-foundations`)

## Before You Start

Read `client-context.md` for brand, category, and competitors. The query set depends on all three. Competitor list from `competitor-analysis` becomes the competitive presence comparison set.

Decide manual vs platform. Several paid AI search tracking platforms have emerged that automate query running and metric calculation. They typically cost $100-1000+/month depending on scale. Manual tracking with a spreadsheet is free, takes 2-4 hours/month, and produces the same insights at small scale. Default to manual for the first 3-6 months; consider platform if scale or stakeholder polish warrants.

## The Four Metrics

These are what the program tracks. Use these consistently across all reporting.

### 1. Mention Rate

The percentage of AI responses (within the defined query set) that mention the brand name in any form.

- Easy to measure: query, read, count.
- Easy to feel good about: most brands have higher mention rate than citation rate.
- Useful as: brand awareness signal, comparative competitive presence indicator.
- Limited because: a mention without a citation does not drive traffic.

### 2. Citation Rate

The percentage of AI responses that cite the brand's URL as a source, not just mention the name.

- Harder to measure: in Perplexity, citations are visible. In ChatGPT and Claude, you must explicitly ask the model to cite sources with URLs.
- The actionable metric: citation drives clicks, drives trust, drives brand visibility in the response itself.
- Useful as: the primary KPI of an AEO program.
- Limited because: not all engines surface URLs reliably; tracking is more labor-intensive.

### 3. Position in Response

Where the brand appears within an AI response that mentions it: first brand named, named alongside others in the first sentence, named in a list (and what position), named late, or named only in direct brand queries.

- More sensitive than mention rate: a mention moving from "named fifth" to "named first" is a real shift before mention rate itself changes.
- The leading indicator: brands often see position improve before mention rate improves.
- Useful as: the earliest signal that AEO work is moving the needle.
- Limited because: requires interpretation, harder to chart over time.

### 4. Competitive Presence

Which competitor brands appear in responses to the same queries. Track each named competitor's mention rate and citation rate using the same query set.

- Useful as: the comparative score that puts the brand's own metrics in context.
- Useful for: identifying competitors gaining ground (a brand whose mention rate is climbing fast in your query set is doing AEO work).
- Limited because: only shows the brands you actively name; emerging competitors get missed unless the query set is broad enough.

## Two Realities to Set Expectations Against

Before designing the tracking program, ground the user in two findings that change how to read every number the program produces.

**Citation instability is the default, not the exception.** Industry research in 2026 found that only about 30% of brands remain visible from one AI answer to the next on identical queries, and only about 20% remain visible across five consecutive runs of the same query. This is not a measurement bug; AI engines re-retrieve and re-synthesize on each query, and the source set genuinely shifts. Implication: a single snapshot is unreliable. A query that surfaces the brand today may not surface it tomorrow. The point of monthly tracking is to find the trend through the noise, not to chase any single result.

**Traditional search rank is correlated with citation but not as foundational as commonly claimed.** Industry research has shown that roughly 60% of AI Overview citations come from pages that do NOT rank in the top 20 organic search results. Strong Google rank correlates with citation; it does not guarantee it, and the absence of strong rank does not preclude it. AEO is built on top of SEO foundations to a degree, but the relationship is looser than the popular "AEO = SEO + schema" framing suggests. A page can be invisible in Google and cited in ChatGPT because its content extracts cleanly; a page can rank #1 in Google and be invisible in Perplexity because its content does not extract cleanly.

These two findings together mean: track relentlessly over time, expect noise, do not assume rank-correlated wins automatically. Citation rate is the metric that matters; rank is an input but not a substitute.

## The Query Set

The program's quality depends entirely on the query set. A bad query set produces metrics that swing on noise. A good query set produces metrics that track real brand strength changes.

Build the query set as 20-30 queries covering five categories:

- **Problem-aware** (4-6 queries): "we have X problem, what should we do" / "how do I solve X." The customer's earliest framing of the need.
- **Category recommendation** (4-6): "what is the best X" / "who are the top X for Y" / "recommend an X." The buyer-research stage.
- **Comparison** (4-6): "X vs Y" / "is X better than Y for Z." Active evaluation.
- **Expert recommendation** (4-6): "who is the best X consultant in Y" / "who should I hire for X." Trust-stage queries with strong brand-recommendation behavior.
- **Brand-direct** (4-6): "describe [brand] in one paragraph" / "what does [brand] do" / "is [brand] good." Direct-brand queries that test entity authority specifically.

Rules:

- **Use the customer's words.** From `client-context.md` ICP language, real support tickets, sales call transcripts. Not internal jargon.
- **Match the brand's actual category.** Generic "best digital marketing agency" queries are too broad for an SEO/AEO agency.
- **Include geo modifiers when relevant.** For local services, "in [city]" or "near me" matters.
- **Keep the set stable.** Changing queries between cycles means you cannot compare months. Lock the set for 6-12 months minimum.

Document the query set in the tracking spreadsheet. Update only with explicit reason and note the change in the reporting.

## The Tracking Workflow

Monthly, repeat this workflow.

### Step 1: Run the Query Set

For each of the 25-30 queries, run on:

- ChatGPT (no special mode; default response)
- Claude (default response, with "Please cite your sources with URLs" appended)
- Perplexity (default)
- Gemini (default)

Capture:

- Whether the brand was mentioned
- Whether the brand's URL was cited (Perplexity: visible; ChatGPT/Claude: cited via the "cite your sources" prompt; Gemini: visible when AI Overview format)
- Position of the brand in the response (first, in-list at position N, late, or in direct-query-only)
- Which competitors were mentioned
- Top 3 cited domains in the response (for competitive citation map)

This is 100-120 queries total (25-30 × 4 engines). At 1-2 minutes per query, the run takes 2-4 hours per cycle.

### Step 2: Calculate the Metrics

In the tracking spreadsheet:

- Mention rate per engine = (queries where brand mentioned) / (total queries) × 100
- Citation rate per engine = (queries where brand URL cited) / (total queries) × 100
- Position distribution per engine = count of (first / list-N / late / direct-only)
- Competitive mention rate per engine = same calculation for each named competitor

Roll up across engines for a combined view.

### Step 3: Compare to Baseline and Prior Months

- Trend of brand mention rate over 3, 6, 12 months
- Trend of citation rate
- Position distribution shifts
- Competitive movement (which competitors are gaining / losing)
- Which queries are now responding favorably vs not (heatmap)

Look for:

- Mention rate stable, citation rate rising: AEO work paying off, brand becoming authoritative.
- Mention rate rising, citation rate flat: brand awareness work paying off, content authority work still needed.
- Position improving (more "first" or "named alongside others") without mention rate change: leading indicator of AEO work taking hold.
- Competitor mention rate climbing fast: investigate their AEO investments.

### Step 4: Produce the Report

Use the format below. Send monthly to the stakeholder. Keep cumulative history.

## Output Format (Monthly Report)

```markdown
# AI Search Tracking: [Client], [Month YYYY]

**Period:** [Date range covered]
**Query set:** [Brief description; full set in tracking sheet]
**Engines tested:** ChatGPT, Claude, Perplexity, Gemini

## Summary

[Three to five sentences. The headline movement (or lack of it), what drove it, what to watch for next month.]

## Top-Line Metrics

| Metric | ChatGPT | Claude | Perplexity | Gemini | Combined | MoM Change |
|---|---|---|---|---|---|---|
| Mention rate | N% | N% | N% | N% | N% | +/-N% |
| Citation rate | N% | N% | N% | N% | N% | +/-N% |

## Position Distribution (Combined)

| Position | Count this month | Count last month |
|---|---|---|
| First brand named | N | N |
| Named alongside others (first sentence) | N | N |
| Named in list (position 1-3) | N | N |
| Named in list (position 4+) | N | N |
| Named late in response | N | N |
| Direct brand queries only | N | N |

## Competitive Presence (Mention Rate by Competitor)

| Competitor | This month | Last month | Trend |
|---|---|---|---|
| Brand (us) | N% | N% | +/- |
| Competitor A | N% | N% | +/- |
| Competitor B | N% | N% | +/- |
| Competitor C | N% | N% | +/- |

## Top Cited Domains (across all queries)

[Top 10 cited domains across the query set. Useful for tracking which sources the engines are trusting in the category over time.]

## Query-Level Highlights

- **Queries where the brand newly appeared:** [List]
- **Queries where the brand dropped out:** [List]
- **Queries where the brand citation rate improved:** [List]
- **Queries where a competitor newly appeared:** [List]

## What Changed (Hypothesis)

[Map any observed metric movement to AEO work shipped in the prior 30-90 days. Examples: the insurance cluster published in March is correlating with new mention rate in insurance-related queries; the new author bios deployed in April have not yet shown impact, which is expected given training cycle lag.]

## Recommendations for Next Cycle

1. [Specific work to ship in the next 30 days based on findings]
2. [Specific monitoring focus for the next cycle]
3. [Any query-set adjustments to flag for the next quarterly review]

## Notes

[Caveats: any platform glitches, query set changes, methodology updates, etc.]
```

## Manual Tracking Setup (Spreadsheet)

For manual tracking, set up a Google Sheet or Excel with these tabs:

1. **Query set.** One row per query. Columns: query text, category, date added, notes.
2. **Monthly results.** One row per (query × engine) combination per month. Columns: month, query, engine, brand mentioned (Y/N), brand cited (Y/N), position, competitors mentioned, top 3 cited domains, notes.
3. **Metrics rollup.** Calculated from monthly results. Charts pulling from this tab.
4. **Competitive rollup.** Mention rate per named competitor per month.
5. **Highlights log.** Free-form text per month: notable changes, new appearances, qualitative observations.
6. **GA4 referral.** If GA4 is set up, configure a custom segment for traffic from AI sources (chatgpt.com, perplexity.ai, claude.ai, copilot.microsoft.com, gemini.google.com, plus AI Overview referrals from google.com with the appropriate referrer signals). AI referral traffic is currently underreported but growing fast; capturing the baseline now lets you correlate citation rate to actual visits over time.

Total setup time: 1-2 hours. Total monthly upkeep: 2-4 hours.

## When to Add a Paid Platform

Manual tracking suffices for most small clients. Move to a paid platform when:

- Query set exceeds ~50 queries (monthly time crosses 6+ hours)
- The user wants automated daily or weekly snapshots rather than monthly
- Stakeholder reporting expectations include polished dashboards
- Multiple clients are being tracked and per-client manual time aggregates to a workload problem
- The user wants competitive intelligence on tens of competitors rather than 3-5

Search for "AEO tracking platform" or "AI search visibility tool" to find current options. Several have emerged in 2025-2026. Pricing typically varies from $99/month to enterprise-tier. Most offer free trials; verify current capabilities before committing.

## When the User Pushes Back

**"Do I really need to track all four engines?"** The minimum useful set is ChatGPT and Perplexity. ChatGPT for the largest audience, Perplexity for the most transparent citations. Add Claude and Gemini once the basic cadence is established. Tracking only one engine produces a distorted picture.

**"The numbers do not move month to month."** Partially expected, but often the deeper truth is that AI citations are inherently noisy. Industry research has found brands retain visibility on only ~30% of consecutive runs of the same query and only ~20% across five consecutive runs. Even with great work, individual data points will swing. AEO is also slow at the entity-authority layer: mention rate often moves in 30-60 day windows for live-retrieval-driven queries; citation rate often takes 90-180 days; entity-level shifts take 6-12+ months. The point of monthly tracking is direction and competitive movement, smoothed across noise.

**"Just give me one number."** Combined citation rate across all four engines, in the brand's primary query category. That is the closest thing to a single AEO KPI. But surface mention rate, position, and competitive presence in any real report; the single number is too easy to misread.

## Common Pitfalls

- **Changing the query set between months.** Kills comparability. Lock the set; document any change.
- **Tracking only "did the brand appear" without position.** Misses the most sensitive signal.
- **Treating mention rate as success.** Easy to game (any presence in any answer counts), low correlation with traffic.
- **Skipping the "cite your sources" prompt in ChatGPT and Claude.** Without it, citation rate is undercounted in those engines.
- **Querying from a logged-in personalized session.** Use a fresh / incognito session for consistent results.
- **Reporting absolute numbers without trends.** A 12% citation rate this month means nothing without 7% last month and 4% three months ago. Always show trend.
- **Ignoring shadow citations.** Some engines paraphrase content without explicit attribution. Manual tracking will undercount this. Worth a qualitative note in the report when noticed.

## References

- `references/query-set-templates.md`: Starter query sets for common categories (local services, SaaS, ecommerce, professional services, B2B agencies) that the user can adapt.
