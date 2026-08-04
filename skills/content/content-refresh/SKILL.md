---
name: content-refresh
description: Use this skill when the user wants to refresh existing content, update an evergreen page, run a content refresh program, decide which pages to refresh, refresh a piece without breaking what's working, or set up a recurring refresh cadence. Triggers include "refresh content," "update old posts," "content refresh," "refresh schedule," "evergreen content updates," "update existing pages," "refresh program," "should we refresh this page," "how to update old content." This skill produces a refresh program and a page-level refresh workflow. Distinct from content-audit (portfolio-level keep/cut decisions) and on-page-audit (single-page diagnostic). Reads client-context.md.
---

# Content Refresh

This skill produces a content refresh program and a per-page refresh workflow. The output is a recurring system for keeping existing content current, plus a checklist for executing a refresh well.

Most content programs over-invest in new and under-invest in refresh. Existing pages compound. A page that ranks #4 for a 1,500-search-volume term and gets a quarterly refresh outperforms a new page targeting an unproven 200-search-volume term. The math favors refresh, but it requires a system to actually happen.

This skill builds the system.

## When to Run This Skill

Run it when:

- The user has an existing content footprint and wants to establish a refresh program
- The user needs to refresh a specific page and wants a workflow
- The user has been publishing for 2+ years and has not been refreshing
- The user notices traffic decay on previously high-performing pages
- The user wants to define refresh cadence as part of the content strategy

Skip it when:

- The user wants portfolio-level keep/cut decisions (use `content-audit`)
- The user wants to audit a single page in deep diagnostic mode (use `on-page-audit`)
- The user wants to write a new piece (use `content-briefs`)
- The user wants to launch a new content program (use `content-strategy`)

## Refresh Serves Both SEO and AEO

A content refresh program in 2026 maintains both surfaces in parallel.

**The SEO refresh dimension:** ranking position, traffic, conversion. Pages that lose rank, lose traffic, or lose conversion get refresh attention. Tools: GSC, GA4, rank tracking.

**The AEO refresh dimension:** citation rate, mention rate, position-in-response, AI Overview presence. Pages that lose citation share, drop out of AI Overviews, or get displaced by better-extractable competitor content get refresh attention. Tools: monthly query testing per `citation-tracking`, AI Overview spot checks.

The two dimensions can diverge. A page can hold SEO rank while losing AEO citation (the content is dated for AI extraction even though Google still ranks it). A page can lose SEO rank while holding AEO citation (the page was overtaken by a better competitor but the brand still gets cited for the topic). Both signals matter; both should feed refresh decisions.

Throughout this skill, refresh assessments and triggers cover both dimensions explicitly.

## Two Modes

This skill has two modes that the user is choosing between.

### Mode A: Set Up the Refresh Program

Define the cadence, the ownership, the prioritization. Output: a refresh program plan.

### Mode B: Refresh a Specific Page

Apply the refresh workflow to one page. Output: the refreshed page, with documentation of what changed and why.

## Mode A: Setting Up the Refresh Program

### Step 1: Inventory the Refresh Candidates

Pull every published URL. From that list, identify candidates by tier.

**Tier 1: High-value pages.** Top 10-20 traffic drivers, top 10-20 conversion drivers, every pillar page, the brand's named methodology pages, anything the brand strategically must keep current.

**Tier 2: Mid-value pages.** Pages ranking in the top 30 for any meaningful query, supporting pages within active clusters, pages with growing traffic trends.

**Tier 3: Tail pages.** Everything else.

This tiering drives cadence.

### Step 2: Set Cadence by Tier

A reasonable starting cadence:

- **Tier 1:** Quarterly substantive review. Real content updates, not just date changes.
- **Tier 2:** Biannual review. Lighter-touch updates plus quality assessment.
- **Tier 3:** Annual review OR triggered review (when traffic drops, data goes stale, or product changes affect the page).

Adjust per brand. A fast-moving category (AI tools, financial markets, regulated industries) needs more frequent refresh. A stable category (basic home maintenance, historical reference) needs less.

### Step 3: Build the Refresh Calendar

Distribute the Tier 1 reviews across the quarter so refresh work is steady, not a quarter-end crunch.

- 5 Tier 1 pages per quarter? Schedule 1-2 per month.
- 20 Tier 1 pages per quarter? Schedule 2 per week.

Use the editorial calendar (from `content-strategy`) with a separate refresh queue alongside the new-content queue.

### Step 4: Assign Ownership

- **Refresh editor:** triages incoming refresh candidates, briefs writers, reviews refreshed pages. Often the same person as the editorial owner; for larger programs, sometimes a separate role.
- **Writers:** the person who refreshes a page is often the original author. When they are not (new writer, original writer gone), the refresh takes longer.
- **SME review:** for pages with technical or regulated content, SME availability needs to be planned for refresh, not just initial creation.

### Step 5: Define the Triggered-Refresh Triggers

Beyond scheduled cadence, certain events trigger refresh outside the schedule.

**SEO triggers:**

- Traffic drops more than 20% week-over-week or month-over-month.
- A major algorithm update (Helpful Content, Core Update) lands.
- Ranking drops from top 10 to page 2+ for the primary query.
- A page's primary keyword's intent shifts (verified by SERP inspection).
- A new competitor publishes a stronger piece on the same topic in traditional search.

**AEO triggers:**

- Citation rate drops measurably for the page's primary queries across two consecutive monthly tracking cycles.
- The page falls out of an AI Overview it previously appeared in.
- A competitor's content begins appearing as a cited source for queries the brand previously owned.
- An AI engine's response to the page's primary query begins citing the brand inaccurately (suggests the brand description has drifted or the page is being misinterpreted).
- A named methodology or original data point on the page has been overtaken by newer research.

**Shared triggers:**

- A statistic, price, product detail, or fact on the page changes in reality.
- A product launch, pricing change, or service change makes the page partially incorrect.
- The page's schema has broken or stopped updating dateModified correctly.

Document the triggers. Without explicit triggers, triggered-refresh becomes ad hoc.

### Step 6: Measure the Program

Track both SEO and AEO impact per refresh:

**SEO impact (per refresh, compare 60-day windows before/after):**

- Ranking position delta on the primary query
- Traffic delta
- Conversion delta if attribution allows

**AEO impact (per refresh, compare 60-day windows before/after):**

- Citation rate delta across ChatGPT, Claude, Perplexity, Gemini
- AI Overview presence change
- Position-in-response change

**Program-level (quarterly):**

- Refreshes completed per quarter (output)
- Aggregate SEO traffic delta on refreshed pages
- Aggregate AEO citation rate delta on refreshed pages
- Time per refresh (calibration for capacity planning)

After a year of data, the refresh program can be evaluated against new-content production for ROI per hour on both surfaces. Often refreshes outperform new content on a per-hour basis, especially for AEO outcomes.

## Mode B: The Per-Page Refresh Workflow

When refreshing a specific page. Walk through these steps.

### Step 1: Pre-refresh assessment

Before touching the page, gather both SEO and AEO baselines.

**SEO baseline:**

- **Current ranking position** for the primary keyword (GSC last 28 days)
- **Current traffic** (GSC last 90 days, GA4 if relevant)
- **Current conversion rate** if measurable
- **Current top queries** the page is ranking on (sometimes different from the original target)
- **The top 5 pages currently ranking** for the primary keyword (the new SEO competition)

**AEO baseline:**

- **Current citation rate** for the page's URL across ChatGPT, Claude, Perplexity, Gemini on the page's target queries (from `citation-tracking` data or a quick manual check)
- **AI Overview presence** on the page's primary query (logged-out Google search)
- **Currently cited sources** in AI Overviews and Perplexity for the page's primary query (the AEO competition, which often differs from the SEO competition)
- **Whether the page passes the inverted-pyramid test** per `content-for-citations` (a fast spot-check before deciding refresh scope)

**Shared:**

- **The date the page was last meaningfully updated** (not the dateModified field; the actual content change)
- **Schema validity** (re-validate via Rich Results Test; dateModified configuration may have drifted)

This is the baseline. Document it. Both dimensions feed the scope decision in Step 2.

### Step 2: Decide the refresh scope

Three scopes:

**Light refresh (1-2 hours):**
- Update stats and dates
- Update screenshots if needed
- Fix broken links
- Update dateModified
- Suitable for: pages performing well, recent enough that the underlying content is still right

**Medium refresh (3-6 hours):**
- Everything in light refresh
- Restructure sections that have weak performance signals (low time on page on a specific scroll segment)
- Add a section addressing a new PAA question or related query
- Refresh the meta description and title if CTR has dropped
- Suitable for: pages still ranking but underperforming relative to past performance, or pages that have aged 12-18 months

**Heavy refresh (6-20 hours):**
- Substantial rewrite
- Re-research the topic from scratch
- New original data or examples
- Schema updates if applicable
- New images or media
- Suitable for: pages that have lost meaningful ranking, pages that need to compete with new high-quality competitors, pages that need a full E-E-A-T upgrade

Pick the scope based on the page's importance and current state. Most refreshes should be light or medium; heavy refreshes are rare.

### Step 3: Execute the refresh

Per scope, do the work. A few patterns:

- **Don't change the URL** unless absolutely necessary. URL changes break inbound links, reset Google's signal accumulation, and create 301-chain risk.
- **Don't change the H1** unless the page's target is genuinely shifting. The H1 anchors topical signal.
- **Update dateModified honestly.** Only set it if substantive content changed. Fake date updates are detectable and counterproductive.
- **Add a visible "last updated" date** to the page. Helps both readers and engines.
- **Update internal links** to and from the page if the page's role has shifted within the cluster.

### Step 4: Post-refresh verification

- Validate schema after the update
- Spot-check the page renders correctly across templates
- Confirm dateModified updated in the schema (test with View Source or Rich Results Test)
- Submit the URL to Google Search Console for re-indexing
- Note the refresh in the page log

### Step 5: Measure the impact

- 30 days later: compare GSC metrics to baseline
- 60 days later: compare again, the more reliable check
- 90 days later: confirm the refresh paid off

If a refresh produces no improvement (or worse, a decline) over 60-90 days, the diagnosis was wrong. Either the page needed a different refresh scope or the page is genuinely on its way out (consider `content-audit` decisions).

## When NOT to Touch a Page

Pages that are working. Specifically:

- Pages ranking #1-3 for their primary query with stable traffic
- Pages with strong conversion rates that have not declined
- Pages where recent attempts to refresh have hurt rather than helped (rare but real)
- Pages in the middle of a Google update settling period (wait until rankings stabilize)

The instinct to "always update everything" creates churn that can hurt performing pages. If it isn't broken, don't fix it. Move the refresh budget to pages that need it.

## Output Format

### Mode A output: Refresh program plan

```markdown
# Content Refresh Program: [Brand]

**Date:** [YYYY-MM-DD]
**Strategist:** [Agent or user]
**Total pages in program:** [N]

## Tier Assignment

| Tier | Page count | Cadence | Owner |
|---|---|---|---|
| Tier 1 | N | Quarterly substantive | [Person] |
| Tier 2 | N | Biannual review | [Person] |
| Tier 3 | N | Annual or triggered | [Person] |

## Triggered-Refresh Triggers

[List the specific events that trigger an out-of-cadence refresh.]

## First-Quarter Refresh Schedule

| Week | Page | Tier | Refresh scope | Writer |
|---|---|---|---|---|

## Measurement

- Output metric: [Refreshes per quarter target]
- Traffic delta tracking: [Method]
- Time-per-refresh tracking: [Method]
- Quarterly program review: [Date]

## Notes

[Capacity considerations, dependencies, sequencing notes]
```

### Mode B output: Per-page refresh documentation

```markdown
# Refresh Log: [URL]

**Date refreshed:** [YYYY-MM-DD]
**Refreshed by:** [Name]
**Scope:** [Light / Medium / Heavy]

## Baseline (pre-refresh)

- Last meaningful update: [Date]
- Current rank for primary query: [Position]
- Current traffic (90 days): [Visits]
- Current top queries: [List]
- Current top-5 ranking competitors: [List with URLs]

## Changes made

[Bullet list of what changed. Be specific. "Updated stats" is not enough; "Updated 2024 pricing data to 2026; added section on financing options; rewrote opening using inverted pyramid" is.]

## Post-refresh checks

- Schema validated: Yes / No
- dateModified updated: Yes / No (and what value)
- URL submitted for re-indexing: Yes / No
- Page log entry added: Yes / No

## Measurement plan

- 30-day check: [Date]
- 60-day check: [Date]
- 90-day check: [Date]
```

## Common Pitfalls

- **Updating dateModified without changing content.** Detectable, counterproductive. Fake freshness signals lose trust over time.
- **Refreshing pages that don't need it while ignoring pages that do.** Without a tiering and triggered-refresh system, refresh work goes to whatever's easiest, not what produces the most ROI.
- **Heavy refresh on a page that needed light.** Wasted hours. Match scope to need.
- **Light refresh on a page that needed heavy.** The page does not recover; the team thinks "refresh doesn't work."
- **No baseline measurement.** Without it, the team cannot tell whether refreshes are helping. Always document the pre-refresh metrics.
- **Refresh as cleanup, not investment.** Refresh is the highest-ROI content work for established sites. Budget it like new content, not like maintenance overhead.
- **No triggered-refresh definition.** Without explicit triggers, triggered refresh is ad hoc and slow. Document the triggers in the program plan.

## References

- `references/refresh-decision-tree.md`: A decision tree for choosing refresh scope (light, medium, heavy, or do not refresh) based on page state.
