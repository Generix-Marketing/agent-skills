---
name: content-audit
description: Use this skill when the user asks for a content audit, content inventory, content cleanup, content portfolio review, or wants to figure out what to do with all the pages on their site. Triggers include "content audit," "audit all our content," "we have too much content," "should we delete old pages," "content pruning," "we got hit by the helpful content update," "what do we do with our old blog posts," "content inventory." This skill produces a portfolio-level review classifying every URL as keep, improve, consolidate, prune, or redirect, with a prioritized roadmap. Especially valuable for sites affected by helpful content algorithm updates. Reads client-context.md if present. Pairs with on-page-audit (page level) and technical-audit (site infrastructure).
---

# Content Audit

This skill operates at the content portfolio level. The output is a classification of every URL on the site with a clear action (keep, improve, consolidate, prune, redirect), prioritized by impact and effort. The deliverable is a roadmap, not a single recommendation.

Most sites accumulate content faster than they retire it. After a few years, the portfolio includes pages that helped at the time, pages that helped then but hurt now, and pages that never helped at all. The Helpful Content System penalizes sites with significant low-quality inventory regardless of how good the recent content is. A content audit is how you find and fix that.

This skill is distinct from:

- **`on-page-audit`**: audits one specific page in depth
- **`technical-audit`**: audits site-wide infrastructure (indexation, redirects, schema, performance)
- **`content-audit` (this skill)**: audits the entire content portfolio at the URL level, makes keep/cut decisions

Use all three for a complete picture. They feed each other.

## When to Run This Skill

Run it when:

- The site has more than 100 URLs (under 100, individual on-page audits cover the same ground)
- The site has been affected (or might be affected) by a Helpful Content algorithm update
- The site has accumulated 3+ years of content without a portfolio review
- The user is preparing to migrate, redesign, or consolidate
- The user wants to "prune" content but does not know what to cut
- Traffic has been declining gradually with no clear technical cause

Skip it when:

- The site is small (under 100 URLs)
- The user wants single-page work (use `on-page-audit`)
- The user wants technical fixes (use `technical-audit`)
- The user wants new content planning, not portfolio review (use `keyword-research`)

## Before You Start

### Read client-context.md

Goals and constraints in `client-context.md` shape audit calls. A lead-gen site cares most about pages that drive estimates; an ecommerce site cares about pages that drive product views. The decisions about what to keep vs cut depend on what the business is optimizing for.

### Get the full URL inventory

Three sources, combine them:

1. **Crawl export** (from `technical-audit`). Every URL the crawler can reach. Authoritative on what exists.
2. **GSC Pages report.** Every URL Google has indexed (or excluded). Authoritative on what Google sees.
3. **XML sitemap.** Every URL the client wants Google to see. Authoritative on intent.

Cross-reference all three. Discrepancies surface problems before the audit starts (orphan pages in the crawl but not the sitemap; sitemap pages not in the index).

### Gather the data per URL

Per URL, capture:

- URL
- Page title
- Page type (homepage, service page, blog post, location page, product page, FAQ, legal, etc.)
- Publish date (or first-seen-by-Google date as a proxy)
- Last-updated date if known
- Word count
- Number of internal links pointing IN
- Number of internal links pointing OUT
- GSC last 90 days: impressions, clicks, average position, top query
- Number of backlinks (from Ahrefs/Semrush)
- Status code

This is a spreadsheet. Most paid tools (Screaming Frog with GSC integration, Ahrefs, Semrush) can produce most of these columns in one export. Build the working file before classification starts.

## The Classification (Five Buckets)

Every URL goes into exactly one bucket. The bucket determines the action.

### Keep

The page is performing or is strategically important. No changes needed beyond standard maintenance.

Criteria:

- Driving meaningful traffic (definition varies by site; for an SMB, 50+ monthly clicks may be meaningful; for a high-traffic site, 500+ may be the threshold)
- OR strategically essential regardless of traffic (homepage, primary service pages, contact, about, legal pages)
- OR strong recent performance trend even if absolute traffic is modest
- AND content quality holds up under spot-inspection

Action: leave alone. Re-evaluate at the next audit.

### Improve

The page has potential that is not being realized. Worth investing in.

Criteria:

- Has impressions in GSC but ranks position 11-30 (page 2-3 territory)
- OR ranks well but has weak conversion (high traffic, low estimate requests / sign-ups / purchases)
- OR covers a topic the client should own but does not yet
- OR is a foundational template that, when improved, lifts many similar pages

Action: rewrite, expand, restructure, add internal links, fix title/meta. Each becomes an `on-page-audit` work item.

### Consolidate

Two or more pages targeting the same query or topic. One winning page would outperform both.

Criteria:

- Multiple pages target overlapping keywords
- Pages cannibalize each other in search (GSC shows multiple URLs ranking, neither dominant)
- Multiple thin posts on the same subject that could become one strong post

Action: pick the canonical page, merge the best content from the others into it, 301 the others to the canonical. Update internal links.

### Prune

The page is doing harm or doing nothing.

Criteria:

- Zero impressions in GSC over 90 days
- AND zero backlinks
- AND covers a topic outside the client's current focus
- AND has no strategic role (legal, contact, etc.)

OR:

- Thin content (under 300 words) with no recovery path
- Outdated content (event recaps, old pricing, expired offers) with no evergreen value

Action: delete the URL and return a 410 Gone status, OR delete and 301 to the most relevant live page. Use 410 when no good redirect exists; use 301 when a relevant replacement exists.

The Helpful Content System weights site-wide quality. Pruning poor pages can lift the rest of the site. Counterintuitive but well-documented effect.

### Redirect

The page should not exist as a unique URL but the topic should live elsewhere.

Criteria:

- Page covers something now better-served by a different page on the site
- Page has backlinks worth preserving even though the content is being retired
- Page is a thin duplicate that should fold into a stronger page (overlaps with Consolidate, but Redirect captures the case where there is no merging of content, just routing)

Action: 301 to the most relevant live page. Verify the redirect is contextually appropriate.

## The Workflow (Six Steps)

### 1. Build the Inventory

Combine crawl, GSC, and sitemap data into one working spreadsheet. One row per URL. Include the data columns listed in "Before You Start."

For sites under 1,000 URLs, this can be a manual review. For larger sites, pre-bucket programmatically and review the borderline cases by hand.

### 2. Apply the Mechanical Filters

A first pass that classifies the obvious cases without human judgment.

- **Status code 404 / 410:** flag for review, likely not in scope (these are not currently in the index).
- **Zero impressions + zero backlinks + page age > 12 months + not a strategic page:** candidate for Prune.
- **High impressions + good position + recent content:** Keep.
- **Two URLs with same title and overlapping queries:** Consolidate.
- **Page with backlinks but no traffic, content topic still relevant:** Improve.

Mechanical filters reduce the human-review workload by 50-70%.

### 2a. Run a Near-Duplicate Sweep (Required for Templated Sites)

This is the single most common content-audit miss. Word-count and impression filters do not catch it.

Run a similarity check across the full URL set:

- **Templated location, industry, or service pages** (e.g., `/healthcare-seo`, `/financial-seo`, `/legal-seo`): the most likely offenders. Often 80%+ identical boilerplate with the vertical or city name swapped.
- **Tag/category archives** auto-generated by the CMS.
- **Old paginated archives** that overlap with newer hub pages.
- **Multiple posts answering the same question** with slightly different titles.

Tools: Screaming Frog's "Near Duplicates" report (configurable similarity threshold), Sitebulb's duplicate-content audit, or `difflib` / `simhash` in Python on extracted body text for a free path.

Document: similarity threshold used, number of URL pairs above 70% similarity, number above 90%. Each high-similarity cluster maps to a Consolidate decision.

### 2b. Cannibalization Check

For each cluster of templated or topically overlapping pages, pull the GSC Queries report and check whether multiple URLs from the cluster rank for the same query.

Signals: multiple URLs ranking positions 5-30 for the same query, none dominant; click share splitting evenly across URLs; impressions stacked on one URL but clicks on another.

Cannibalization clusters become Consolidate work, even if the pages are not literal duplicates.

### 2c. Thin-Page Sweep Across the Full URL Set

Do not flag thin pages by spotting them in a sample. Sweep every URL.

- Build a word-count distribution across the full inventory.
- Flag every URL below the 25th percentile, or every URL under 300 words, whichever is more aggressive.
- Cross-reference with traffic: thin + zero traffic + zero backlinks = Prune. Thin + traffic = Improve (the page is working despite the word count, do not over-correct).

Document the threshold used and the count above/below it. Without this, "thin pages flagged" is a sample observation, not an audit finding.

### 3. Human Review the Borderline Cases

The cases that did not classify cleanly are the work. Open each candidate URL. Read the content. Check the SERP for the page's target query. Look at competing pages. Decide.

Common borderline patterns:

- **Old blog post with modest evergreen traffic.** Improve or Keep depending on update effort vs traffic.
- **Location page with backlinks but no rankings.** Improve (rewrite per `on-page-audit`) or Redirect to a parent service page.
- **Mid-tier content piece that ranks on page 2 for the wrong query.** Improve (re-target) or Consolidate with a better-matched piece.
- **Old promotion or campaign page with backlinks.** Redirect to an evergreen related page so backlinks are preserved.

### 4. Validate the Cuts

Before finalizing Prune and Redirect decisions:

- Confirm the page has no inbound backlinks that would be lost. If it does, redirect instead of delete.
- Confirm the page does not have surprise traffic from sources GSC does not show (sometimes referral or social traffic does not match search traffic).
- Confirm the page is not referenced internally from a critical hub page. If it is, update the hub before deleting.

### 5. Produce the Roadmap

Group the actions into work batches. A typical 500-URL site might produce:

- 80 Keep (no action)
- 60 Improve (becomes 60 `on-page-audit` work items, prioritized by impact)
- 40 Consolidate (becomes 12-15 consolidation tickets, each merging 2-4 pages)
- 200 Prune (becomes one batch deletion ticket)
- 120 Redirect (becomes one batch redirect implementation ticket)

The Prune and Redirect batches are dev work. The Consolidate batches are mixed content + dev. The Improve list is content work that maps to other skills.

### 6. Set the Re-audit Cadence

Recommend annual re-audits for active sites; biannual for slow-changing sites. The first audit is the heaviest; subsequent ones are diff-style against the prior audit.

## Output Format

```markdown
# Content Audit: [Client / Site]

**Date:** [YYYY-MM-DD]
**Auditor:** [Agent or user]
**Scope:** [Full site / specific section / sample]
**Inventory size:** [N URLs]
**Tools used:** [Crawl source, GSC export YYYY-MM-DD, etc.]

## Executive Summary

[Three to five sentences. The overall portfolio health. The biggest theme that emerged. The expected impact of executing the roadmap. Recommended sequencing.]

## Portfolio Snapshot

| Bucket | Count | % of total | Estimated action effort |
|---|---|---|---|
| Keep | N | N% | None |
| Improve | N | N% | N writer hours, N dev hours |
| Consolidate | N | N% | N writer hours, N dev hours |
| Prune | N | N% | N dev hours (batch) |
| Redirect | N | N% | N dev hours (batch) |

## Top Themes

[Three to five bullets describing patterns across the portfolio. Examples: "60% of blog posts published in 2022-2023 are sub-300 words and have zero impressions, classic Helpful Content signal," "Location pages for Hendricks county all underperform Hamilton county equivalents by 10x, content quality gap, not algorithmic.")]

## Improve Priority List (Top 15)

| URL | Current state | Recommended action | Effort | Impact estimate | Owner |
|---|---|---|---|---|---|

## Consolidation Plan

For each consolidation cluster:

### Cluster 1: [Topic]

- **Canonical URL:** [The page that wins]
- **URLs to merge in:** [List]
- **Action:** Migrate best content from each into the canonical. 301 the others. Update internal links across the site.
- **Effort:** [N hours]

[Repeat per cluster]

## Prune List

[Either a full table or, if very long, a summary count with the full list attached.]

| URL | Reason | Backlink check | Recommended status code |
|---|---|---|---|
| /old/post/ | 0 impressions, 0 backlinks, off-topic | Verified 0 | 410 |
| /old/campaign/ | Expired campaign, 4 backlinks | Verified | 301 to /resources/ |

## Redirect List

| Old URL | New URL (redirect target) | Reason |
|---|---|---|

## Roadmap

1. **Sprint 1:** [Quick wins, e.g., implement the prune batch and redirect batch]
2. **Sprints 2-4:** [Top consolidation clusters]
3. **Quarter 2:** [Improve list work, prioritized]
4. **Ongoing:** [Maintenance items]

## Re-audit Recommendation

[Cadence and focus areas for the next audit.]

## Notes

[Caveats: data gaps, items intentionally excluded, dependencies on other work, recommendations for related audits like an updated `technical-audit` to verify the implementation.]
```

## How to Decide When the Helpful Content Update Hit

A common reason for running this audit is suspected Helpful Content System impact. Diagnostic signals:

- **Traffic decline aligned with a known HCU rollout date.** Check the GSC performance chart against documented Google update windows.
- **The decline is disproportionate on certain page types** (often blog content over service content, or templated location pages, or thin product description pages).
- **The decline is gradual rather than sudden.** HCU effects compound over weeks, unlike a manual action.
- **Specific pages lost rankings on queries they previously won.** Indicating the pages, not the site, are the diagnosis.

If two or more of these signals match, the audit should weight Prune and Consolidate more aggressively. Recovery from HCU typically requires meaningful inventory cleanup, not just on-page tweaks.

## When the User Pushes Back

**"I do not want to delete content."** Three counters: (1) the Helpful Content System penalizes the whole site for low-quality inventory, so unhelpful content is hurting the helpful content; (2) pruning is reversible (you can always rewrite and republish later if the topic becomes relevant); (3) good redirects preserve any value the URL had. Walk through the specific candidate URLs one at a time. The conversation usually resolves at "delete most of these, redirect the ones with backlinks."

**"We do not have time for an audit."** A focused mini-audit on the worst 50 URLs takes one day and removes the biggest drag. Offer this as a starting point if a full audit feels overwhelming.

## Common Pitfalls

- **Treating structural metrics as content quality.** Word count, H2 count, character lengths, and schema presence are structural attributes, not measures of substance. They are easy to parse and therefore overused. A real content audit reads pages and assesses whether they satisfy the query, not whether they hit a word count. State explicitly which checks are structural and which involved reading the content.
- **Sample-to-population overreach.** Auditing four pages and reporting a site-wide "Content Quality: 55/100" is not a content audit; it is a sample observation extrapolated. Always state how many pages were inspected, how they were selected, and which findings are sample-level vs sweep-level.
- **Pruning without redirect checks.** Deleting a URL with even one backlink throws away link equity. Always check before the delete batch runs.
- **Confusing thin with low-quality.** A 200-word post answering a specific question well can be excellent. A 3,000-word post padding to look comprehensive can be terrible. Word count is a signal, not a verdict.
- **Treating Improve as a one-time pass.** "Improve" pages need ongoing investment if the topic matters. Surface the top 15-20 for the next sprint, then re-evaluate at the next audit.
- **Skipping the validation step.** Inbound backlinks, surprise traffic sources, and internal hub references all create reasons not to prune. Validate before executing.
- **Doing this audit before fixing technical issues.** Indexation problems can make a page look like a poor performer when the real issue is that Google cannot crawl it. Complete the `technical-audit` work first, or note technical issues as the cause of any unusual performance gaps.
- **Underestimating the consolidation work.** Merging 4 pages into 1 is not just a 301 redirect; it is a content rewrite to incorporate the best of each, plus internal link updates across the site. Plan accordingly.

## References

- `references/classification-rubric.md`: The full decision tree for assigning URLs to buckets, with edge cases and worked examples.
- `references/hcu-recovery-playbook.md`: Specific guidance for sites suspected of Helpful Content System impact, including diagnostic checklist and recovery sequencing.
- `examples/sample-content-audit.md`: A worked content audit for the fictional Cardinal Ridge Roofing.
