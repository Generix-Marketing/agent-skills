# HCU Recovery Playbook

How to diagnose and recover from Google's Helpful Content System (HCU). The system has been part of Google's core algorithm since March 2024; recovery patterns are now well understood, even if recovery itself remains slow.

## What HCU Penalizes

Google's stated goal: reward content written for humans, demonstrating firsthand experience, satisfying intent fully, from sources with topical authority. HCU penalizes the inverse:

- Content written primarily for search engines (keyword-stuffed, padded for length, formulaic)
- Content that does not demonstrate firsthand experience on the topic
- Content that gives the user a partial answer and leaves them to search again
- Sites with broad topical scope and no demonstrated expertise in any one area
- Templated content at scale (location pages, programmatic pages) without genuine differentiation per instance
- AI-generated content published without meaningful human review and value-add
- Affiliate-heavy content that exists to drive clicks more than to inform

The penalty is sitewide, not page-specific. Even good content on the site loses ranking because the site as a whole has a poor classification.

## Diagnostic Checklist

If the user suspects HCU impact, run through these checks before launching recovery work.

### Timing

- Pull the GSC performance chart for the last 16 months.
- Overlay known Google update windows (the SEO community tracks these; check Search Engine Roundtable, Search Engine Land, or Moz's update tracker).
- HCU rollouts so far: August 2022, September 2023, March 2024 (folded into core), and ongoing core updates that include HCU signals.
- Look for traffic declines aligned with these dates.

### Pattern

HCU declines have characteristic patterns:

- **Gradual, not sudden.** Manual actions drop traffic 30-80% overnight. HCU drops 10-30% over 2-6 weeks.
- **Disproportionate by content type.** Blog content often hit harder than service or product content. Templated location pages often hit harder than unique content.
- **Disproportionate by topic depth.** Topics where the site has shallow coverage hit harder than topics with deep coverage.
- **Affects rankings, not indexation.** Pages stay indexed but rank lower. Different from technical indexation issues.

### Inventory Signals

If the site has a meaningful share of:

- Pages under 500 words on commercial / informational topics
- Pages last updated 18+ months ago
- Pages that read as AI-generated without editorial polish
- Templated pages with minimal per-instance customization
- Affiliate or aggregator pages with little original analysis

...the site has HCU exposure regardless of whether the current decline has hit yet.

## Recovery Sequencing

Recovery from HCU follows a different path than recovery from a manual action. Two key principles:

1. **Recovery is slow.** Even successful recoveries take 3-12 months after the cleanup work is complete. Google needs to observe the cleanup, re-crawl, and re-evaluate site-wide classification across multiple update cycles.
2. **Improving good pages does not fix bad pages.** The cleanup must include the bad pages directly: remove, rewrite, or consolidate.

### Phase 1: Triage (Weeks 1-2)

- Run the full content audit (this skill) with HCU lens weighted heavily.
- Identify the bottom 30-50% of URLs by quality. These are the recovery surface area.
- Prune anything that hits all three: under 500 words, zero traffic, zero backlinks. This is the lowest-risk delete batch.
- For thin pages with backlinks: redirect to a related stronger page.

### Phase 2: Consolidation (Weeks 3-8)

- Identify cannibalization clusters from the audit.
- Merge each cluster to one stronger page. 301 the others.
- Update internal links to point to the new canonical pages.
- This step alone can recover 10-25% of traffic on cleanup-heavy sites.

### Phase 3: Improvement of the Survivors (Months 2-6)

- The Improve list from the audit becomes the next 6 months of content work.
- For each page: substantive expansion, real-world examples, firsthand experience signals, updated data, current screenshots, named experts where appropriate.
- The bar is "would a real expert in this topic say this page is genuinely useful." Not "is this page longer than the competitors."

### Phase 4: Authority Signals (Months 3-9)

- Add author bylines with credentials and bio links to every editorial page.
- Add organization schema with the founder / key experts named.
- Connect to the off-page work (`off-page-link-building`): digital PR and expert sourcing build the third-party signals that confirm authority.

### Phase 5: Monitor and Iterate (Ongoing)

- Track GSC week over week post-cleanup. Expect noise; do not panic on weekly swings.
- Recovery often comes in waves aligned with Google update cycles. Be patient through the 3-12 month window.
- Re-audit at 6 months. If recovery has not started, the cleanup was likely insufficient. Go deeper.

## What Not to Do

- **Do not republish pruned pages with minor edits.** Google detects the same content with cosmetic changes.
- **Do not add disclaimers or "updated 2026" date stamps without actually updating content.** Detected and counterproductive.
- **Do not panic-publish new content to "show Google we are active."** New low-quality content adds to the problem.
- **Do not generate AI content to fill the gap left by pruning.** The whole point is reducing low-quality inventory; AI content at scale recreates the same problem.
- **Do not assume the algorithm will roll back.** It will not. Even Google representatives have stated HCU is part of the core algorithm now, not a periodic refresh.
- **Do not chase the rollback theory online.** Forums are full of users claiming bigger sites have started recovering after specific updates. Some recoveries are real, many are noise. Do the work; do not wait for relief.

## Recovery Stories vs Recovery Reality

Public reports of HCU recovery are heavily survivorship-biased: sites that recovered post about it; sites that did not, do not. The actual recovery rate for sites with significant HCU exposure is probably 30-60% within 12 months of completing the cleanup work, with most "recovered" sites returning to 60-85% of pre-HCU traffic rather than 100%.

This is uncomfortable to tell clients but it is honest. Plan for that range when setting expectations.

## When Recovery Is Not Possible

Some sites built their entire business model on content patterns HCU now penalizes (affiliate aggregation, programmatic location pages, AI content farms). For these, "recovery" may mean rebuilding the business model rather than salvaging the existing content.

Indicators that the situation is structural, not tactical:

- Bottom 70%+ of URLs are pruneable
- Top 30% are also weak by HCU standards
- Original demonstration of expertise across the site is minimal
- Topical scope is broad and shallow rather than narrow and deep

In these cases, the audit recommendation may be: prune aggressively, narrow the topical scope to the strongest 1-2 areas, rebuild from a smaller base. The site will be smaller; it can also be defensibly better.

## When HCU Was Not the Problem

If the audit and cleanup do not produce recovery within 9-12 months, reconsider the diagnosis. Other causes of similar-looking declines:

- **Technical indexation issues** (use `technical-audit`)
- **SERP feature absorption** (AI Overviews, featured snippets eating the clicks)
- **Genuine market changes** (search volume dropping for the category)
- **Competitor moves** (a new competitor with stronger content)
- **Algorithm changes unrelated to HCU** (link spam updates, core updates for non-HCU reasons)

The content audit is a strong first move, but it is not the only possible diagnosis. Pair with the technical and competitor work for the full picture.
