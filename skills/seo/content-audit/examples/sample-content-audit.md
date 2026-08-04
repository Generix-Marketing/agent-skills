# Content Audit: Cardinal Ridge Roofing Co.

> Fictional example for illustration. Brand name, URL, and findings are made up.

**Date:** 2026-05-23
**Auditor:** Agent (using `content-audit` skill, with client-context for Cardinal Ridge Roofing loaded; pairs with prior `technical-audit` and `competitor-analysis` outputs)
**Scope:** Full site
**Inventory size:** 340 indexable URLs (per crawl 2026-05-22)
**Tools used:** Screaming Frog crawl 2026-05-22 (with GSC and PageSpeed API connections), GSC Pages and Performance reports (90 days), Ahrefs Site Explorer (backlinks per URL)

## Executive Summary

Cardinal Ridge's content portfolio has a classic post-HCU profile: a small core of pages doing the real work (homepage, main service pages, a handful of strong blog posts) surrounded by a larger inventory of pages that are not helping and may be hurting. Most of the bloat sits in two areas: 67 blog posts published in 2022-2024 (many sub-400 words, most with zero search traffic) and the 12 thin neighborhood landing pages already flagged in the `technical-audit` and `competitor-analysis`. Recommended cleanup: prune 142 URLs, redirect 38, consolidate 11 clusters, and improve 23 priority pages. The site will be roughly 50% smaller and meaningfully stronger. Recovery from the August 2025 helpful content update impact should begin within 3-6 months of cleanup completion, with full effect over 9-12 months.

## Portfolio Snapshot

| Bucket | Count | % of total | Estimated action effort |
|---|---|---|---|
| Keep | 96 | 28% | None |
| Improve | 23 | 7% | ~140 writer hours over 6 months (cross-references on-page-audit) |
| Consolidate | 40 (into 11 clusters) | 12% | ~40 writer hours + 8 dev hours |
| Prune | 142 | 42% | 4 dev hours (batch deletion + 410 responses) |
| Redirect | 38 | 11% | 4 dev hours (batch 301 implementation) |

Total addressable URLs: 340. Post-cleanup, the indexable inventory drops to approximately 178 URLs, with 23 of those marked for active improvement.

## Top Themes

- **Sub-400-word blog posts from 2022-2024 are the largest drag.** 67 blog posts in this category, almost all with zero impressions, zero backlinks, and topics that range from in-scope to clearly off-topic. This is the single biggest pruning opportunity and the most likely contributor to the August 2025 HCU impact.
- **The neighborhood landing pages cluster is well-known and addressed elsewhere.** 12 pages flagged in `technical-audit` (duplicate content) and `competitor-analysis` (the rebuild workstream). This audit confirms they belong in Consolidate-or-Improve, not Prune (they have real strategic value once rebuilt).
- **The site has 6 strong cornerstone-style pages that punch above their weight.** Worth identifying explicitly so they get prioritized for future internal linking and updates: the homepage, three primary service pages, and two blog posts (storm damage tips, choosing a contractor red flags). These are the lifters.
- **A 2023 site-wide content push that produced templated blog posts hurt more than it helped.** Identifiable as a cluster of 28 posts published in a 6-week window in early 2023, all formulaic, all with zero current traffic. Recommend a single batch prune for this cluster.
- **Surprise finding: an unused "case studies" subdirectory has 18 URLs with detailed customer project writeups, modest traffic, and 4 backlinks.** These have been buried in the navigation. Recommend surfacing in the main nav and treating as Improve (light editorial pass plus internal linking) rather than allowing them to languish.

## Improve Priority List (Top 15)

| URL | Current state | Recommended action | Effort | Impact estimate | Owner |
|---|---|---|---|---|---|
| /services/roof-replacement-indianapolis/ | Top traffic, ranks #14 for primary term | Per `on-page-audit` recommendations: title rewrite, content expansion, schema | 8 hrs | High (page-2 push for head term) | Writer + Dev |
| /resources/roof-replacement-cost-indianapolis/ | Ranks #11 for cost term | Expand cost breakdown with real numbers, add financing section, add FAQ | 6 hrs | High (page-2 push for high-intent term) | Writer |
| /services/storm-damage-inspection/ | Ranks #19 for storm term | Rewrite as full guide: process, what to expect, insurance integration | 8 hrs | High | Writer + Owner SME |
| /services-areas/carmel/ | Thin templated location page | Rebuild with neighborhood-specific copy per `on-page-audit` and `competitor-analysis` | 6 hrs | High | Writer + Owner review |
| /services-areas/fishers/ | Same | Same rebuild pattern | 6 hrs | High | Writer + Owner review |
| /services-areas/greenwood/ | Same | Same rebuild pattern | 6 hrs | High | Writer + Owner review |
| /services-areas/westfield/ | Same | Same rebuild pattern | 6 hrs | High | Writer + Owner review |
| /blog/storm-damage-tips/ | Strong blog, ranks #4 for "indianapolis storm damage roof" | Refresh with 2026 data, add internal links to insurance cluster (when built) | 3 hrs | Medium | Writer |
| /blog/choosing-a-roofing-contractor/ | Strong blog, ranks #6 | Refresh, expand "red flags" section, add internal links to about page | 3 hrs | Medium | Writer |
| /case-studies/[various, 18 URLs] | Buried in nav, modest traffic, real content | Light editorial pass on each, surface in main nav, add internal links | ~36 hrs across all | Medium (compounds with nav fix) | Writer + Dev |
| /contact/free-roof-inspection/ | Ranks #12 for "free roof inspection indianapolis" | Improve trust signals, CTA flow, social proof | 4 hrs | Medium | Writer + Designer |
| /services/hail-damage-repair/ | Currently doesn't exist as a dedicated page | NEW page (covered in `keyword-research` Tier 1) | 6 hrs | Medium | Writer |
| /resources/insurance-claim-roof-replacement-guide/ | Doesn't exist | NEW cornerstone page (top opportunity per `competitor-analysis`) | 12 hrs | High | Writer + Owner SME |
| /resources/roof-warranty-explained/ | Doesn't exist | NEW page, no competitor has one | 4 hrs | Medium | Writer + Owner SME |
| /resources/how-to-choose-roofing-contractor/ | Doesn't exist (different from existing /blog/choosing-a-roofing-contractor/) | NEW cornerstone informational page | 6 hrs | High | Writer |

Total: ~140 writer hours over the recommended 6-month sequencing.

## Consolidation Plan

### Cluster 1: Roof Replacement Cost

- **Canonical URL:** `/resources/roof-replacement-cost-indianapolis/` (rewrite as part of Improve)
- **URLs to merge in:**
  - `/blog/how-much-does-a-new-roof-cost/`
  - `/blog/roof-replacement-pricing-guide/`
  - `/blog/2023/04/cost-of-roof-replacement-in-indiana/`
- **Action:** Migrate best content from each into the canonical. 301 the others. Update internal links across the site.
- **Effort:** 4 hrs

### Cluster 2: Storm Damage

- **Canonical URL:** `/blog/storm-damage-tips/` (or migrate to a new `/resources/storm-damage-guide/`; assess during consolidation)
- **URLs to merge in:**
  - `/blog/2023/06/what-to-do-after-storm-damage/`
  - `/blog/2024/05/hail-damage-roof/`
  - `/blog/2022/08/wind-damage-roof-checklist/`
- **Action:** Combine into a single comprehensive storm damage hub. 301 the others.
- **Effort:** 5 hrs

### Cluster 3: Choosing a Contractor

- **Canonical URL:** `/resources/how-to-choose-roofing-contractor/` (new page from keyword-research Tier 1)
- **URLs to merge in:**
  - `/blog/choosing-a-roofing-contractor/` (existing strong blog)
  - `/blog/2023/02/red-flags-when-hiring-a-roofer/`
  - `/blog/avoid-roofing-scams/`
- **Action:** Build the new cornerstone page using the strongest material from each. The existing strong blog redirects in once the new cornerstone is published.
- **Effort:** 6 hrs

### Cluster 4: Insurance Claims (Build New Cornerstone)

- **Canonical URL:** `/resources/insurance-claim-roof-replacement-guide/` (new)
- **URLs to merge in:**
  - `/blog/insurance-and-roof-replacement/`
  - `/blog/2024/09/filing-roof-insurance-claim/`
  - `/blog/what-insurance-covers-roof-damage/`
- **Action:** Build new cornerstone using owner's deep expertise (per competitor-analysis). Three existing thin blog posts fold in.
- **Effort:** 12 hrs (counted in Improve list above)

### Clusters 5-11: Smaller consolidations

Seven additional 2-3 page clusters in similar pattern: shingles/materials cluster, roof maintenance cluster, gutters cluster, ventilation cluster, two location-related clusters, and a small ice-dam cluster. Each averages 3-4 hours of consolidation work.

Total consolidation effort: ~40 writer hours + 8 dev hours.

## Prune List

142 URLs to delete with 410 response. Categorized:

| Category | Count | Reason | Status code |
|---|---|---|---|
| Sub-400-word blog posts, 0 impressions, 0 backlinks, topics in scope | 49 | Thin, no recovery path, HCU drag | 410 |
| Sub-400-word blog posts, off-topic (general home improvement, lifestyle) | 18 | Off-topic noise | 410 |
| 2023 templated content push (formulaic blog posts) | 28 | Templated content at scale, HCU drag | 410 |
| Outdated event/news posts (storm event recaps, 2022-2023) | 14 | No evergreen value | 410 |
| Old promotional / campaign pages, no backlinks | 11 | Expired offers | 410 |
| Author archive pages (only used by one departed contractor) | 6 | No purpose | 410 |
| Tag archive pages with under 3 posts each | 9 | Thin taxonomy archives | 410 |
| Test / staging pages accidentally indexed | 4 | Dev artifacts | 410 |
| Old "team member" pages for departed employees | 3 | Outdated | 410 |

All prune URLs have been validated for: zero backlinks, zero referral traffic, no critical internal hub references.

## Redirect List

38 URLs to 301 redirect. Sample:

| Old URL | New URL (redirect target) | Reason |
|---|---|---|
| /services-old/ | /services/ | Old services hub, 3 backlinks |
| /blog/why-cardinal-ridge/ | /about/ | Promotional content, 1 backlink |
| /promo/winter-2024-special/ | /resources/ | Expired campaign, 2 backlinks |
| /old-team/john-smith/ | /about/our-team/ | Departed employee, 1 backlink |
| /blog/2024/01/our-new-website-launch/ | /about/ | Internal news post, 1 backlink |
| [... 33 more] | | |

All redirects validated for relevance and verified to receive backlinks worth preserving.

## Roadmap

1. **Sprint 1 (next 2 weeks):** Implement the prune batch (142 URLs to 410) and the redirect batch (38 URLs to 301). Both are dev work; one ticket each. Resubmit XML sitemap to GSC after.
2. **Sprints 2-4 (next 6 weeks):** Execute the 11 consolidation clusters. Writer-led with owner review. Pair with the technical-audit redirect chain fix so the consolidation 301s flow cleanly.
3. **Quarter 2 (next 12 weeks):** Improve list, top 15 URLs. Sequence matches the `competitor-analysis` and `keyword-research` priorities: neighborhood landing pages first, then insurance cluster, then cost guide expansion, then warranty and "how to choose" cornerstones.
4. **Quarter 3:** Improve list, remaining URLs (case studies surfacing, materials cluster).
5. **Ongoing:** Quarterly content health spot-checks. New content additions get evaluated against HCU-friendly standards from the start.

## Re-audit Recommendation

Schedule the next full content audit in 12 months (May 2027). Earlier triggers: any meaningful traffic shift, post-migration verification if the site replatforms, or after publishing 50+ new pages in any quarter.

## Notes

- The 142-URL prune is aggressive. Owner should preview the prune list before execution. Typical response is "delete most, restore 5-10, redirect a few." Build that conversation into the workflow.
- Backlink preservation has been validated URL-by-URL for everything in Prune. If any backlink discovery happens between this audit and execution (a new link comes in to a prune-target URL), reclassify to Redirect.
- This audit assumes the `technical-audit` Top Five Fixes are completed in parallel or just before. Specifically, the redirect chain cleanup needs to happen so the 38 redirects from this audit do not extend existing chains.
- Estimated HCU recovery timing: cleanup begins early June 2026, completes by end of Q3 2026. Recovery begins by Q4 2026, full effect visible by Q2 2027.
- Per client-context, content suggesting insurance fraud or aggressive claim tactics is off-limits. The insurance cluster build will be vetted for this constraint at writer brief and owner review.
- Per client-context, the August 2025 HCU impact was small but real. This audit addresses the most likely contributors. If recovery does not materialize within the 9-12 month window, revisit the diagnosis using the HCU recovery playbook reference.
