# Content Gap Method

Step-by-step methods for running a content gap analysis with each major toolset. Pick the section that matches what you have access to.

The goal is the same regardless of tool: a short, sorted list of keywords and content types competitors have that the client does not, ranked by realistic opportunity.

## Method 1: Ahrefs

Ahrefs' Content Gap report is the most direct path.

1. Open Site Explorer for the client's domain.
2. Open the Content Gap report (under the Competitive Analysis section).
3. Add 2-5 competitor domains in the "But the following targets do" field. Use the direct competitor list from `client-context.md`.
4. Run the report. Output: a sorted list of keywords where at least one of the competitors ranks and the client does not.
5. Filter:
   - **Intersections:** require at least 2 (so keywords where multiple competitors rank are surfaced, not one-offs)
   - **Volume:** filter to 50+ minimum (adjust for niche markets)
   - **KD:** filter to under 40 for "winnable" candidates; relax to 50 for aspirational
6. Sort by volume descending.
7. Manually scan the top 100. Mark intent (transactional, commercial, informational). Flag the most relevant 15-25 for the report.

## Method 2: Semrush

Semrush has a Keyword Gap tool with similar functionality.

1. Open the Keyword Gap tool.
2. Enter the client's domain in the "You" field.
3. Enter 2-4 competitor domains in the comparison fields.
4. Set comparison type to "Missing" (keywords competitors rank for but the client does not).
5. Filter by volume and KD as above.
6. Export the result.
7. Manually annotate intent on the top 100. Surface the top 15-25.

Semrush also has an Organic Research tool that pulls a single competitor's keywords. Combine pulls from multiple competitors manually in a spreadsheet for the same effect.

## Method 3: Free / Manual

Without paid tools, the method is slower but workable for small-to-mid sites.

1. List the direct competitors (3-5).
2. For each competitor, visit the site. Click through:
   - Main navigation: what services, products, or topics are surfaced?
   - Blog index: what topics has the competitor written about? Capture titles.
   - Footer: any topic hubs, learning centers, locations pages?
   - Sitemap (try `competitor.com/sitemap.xml`): the full URL inventory.
3. For each page or topic on each competitor that the client does not have an equivalent for, add to a gap list.
4. For each gap, manually search the page's likely target keyword on Google. Note:
   - Does the competitor actually rank for it (top 10)?
   - Is the intent clear (transactional, commercial, informational)?
   - Is the SERP winnable (look at the other top 10 results' authority)?
5. Filter to gaps where the competitor ranks and the SERP looks winnable. Surface the top 15.

This is significantly slower than the paid-tool method, but it produces higher-fidelity results because the analyst sees the actual pages and SERPs.

## Method 4: GSC + Manual SERP Mapping

If the client has GSC but no paid keyword tool, use this method.

1. Pull the client's top 200 queries from GSC (last 90 days).
2. For each competitor, manually run their top traffic-driving pages (estimated from a free Ahrefs Backlink Checker or SimilarWeb) through Google to identify what they rank for.
3. Build a side-by-side: queries the client gets impressions on, queries the competitor gets impressions on. Subtract.
4. The competitor-only set is the gap.

Slower and less complete than paid tools, but uses ground-truth data on the client side.

## Annotating the Gap

Regardless of method, the raw gap list is not the deliverable. The deliverable is the annotated short list.

For each candidate keyword in the gap:

- **Intent:** transactional, commercial investigation, informational.
- **Volume:** estimate from tool.
- **KD:** estimate from tool or manual SERP inspection.
- **Page type required:** service page, location page, blog post, comparison page, FAQ.
- **Effort estimate:** writer hours plus dev hours, if any.
- **Recommended action:** new page, page-2 push if the client is close, content cluster if multi-page.

Drop:

- Brand keywords of the competitor (the client cannot reasonably target these)
- Keywords with intent that does not match the client's business model
- Keywords with KD higher than the client can realistically achieve

Promote:

- Keywords with high intent alignment, realistic KD, decent volume, and SERPs where a similar-authority site is winning. These are the Tier 1 gap opportunities.

## Bundling Gaps Into Clusters

A list of 25 isolated keywords is harder to act on than 5 topic clusters with 4-6 keywords each. Where possible, bundle:

- "roof replacement cost," "roof replacement cost indianapolis," "average cost of roof replacement," "how much does a new roof cost" all belong to one cost cluster anchored by a single cost guide page.
- "carmel roof replacement," "fishers roof replacement," "greenwood roof replacement" are separate pages but the same template, briefed as one content workstream.

Bundling helps with sequencing and helps the writer understand why each page exists.

## When the Gap Looks Tiny

Sometimes the gap analysis surfaces only 3-5 keywords worth pursuing. Two possible reasons:

- **The client already covers the topic well.** Real outcome, real signal. Confirm by spot-checking that the client's pages actually rank, then redirect the analysis to off-page work (backlinks, GBP, PR).
- **The competitor set was too narrow.** Add 1-2 adjacent or aspirational competitors and re-run. Often the bigger gaps are against aspirational competitors, not direct rivals.

## When the Gap Looks Overwhelming

When the analysis surfaces 200+ candidate keywords, the client cannot act on all of them, and an unsorted list of 200 will go unused.

Discipline:

- Sort ruthlessly by ROI. Bundle into 8-15 opportunities.
- Surface only those in the report. Mention the raw count in the notes ("Underlying gap analysis surfaced 247 candidate keywords; full export attached for reference.") but make the deliverable the 8-15 prioritized opportunities.

A well-bounded recommendation gets executed. An exhaustive recommendation gets archived.
