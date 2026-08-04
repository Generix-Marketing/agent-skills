# Restructure Migration Checklist

The detailed checklist for restructuring an existing site's architecture without losing ranking equity. A site restructure that mishandles redirects, breaks internal links, or fails to communicate with Google can produce a 30-70% traffic drop that takes 6-12 months to recover. This checklist exists to prevent that.

Use sequentially. Do not skip steps.

## Phase 1: Pre-Restructure (Weeks 1-2)

### Establish the baseline

- [ ] Pull GSC performance data for the last 12 months. Save as a reference point.
- [ ] Pull GA4 traffic data for the last 12 months.
- [ ] Document current top 50 pages by traffic, rank, and conversion.
- [ ] Crawl the current site with Screaming Frog or equivalent. Export full URL inventory with status codes, titles, meta descriptions, H1s, canonicals, internal links.
- [ ] Document current sitemap (URLs, last modified dates).
- [ ] Document current robots.txt rules.

### Build the URL change map

- [ ] For every URL on the current site, decide: keep at current URL, move to new URL, or remove.
- [ ] For moved URLs, document the exact new URL.
- [ ] For removed URLs, document the redirect target (the most relevant live page on the new structure).
- [ ] Sanity-check the map: every old URL has a destination. Every redirect chain is one hop.
- [ ] Validate special cases: parametrized URLs, paginated URLs, hreflang variants.

### Internal links plan

- [ ] Identify every internal link on the current site (from the crawl).
- [ ] Map old internal links to new internal links per the URL change map.
- [ ] Plan find-and-replace operations sitewide (CMS-dependent; some require database updates, some require search-and-replace in templates and content).

### Communication plan

- [ ] Identify external sites that link to URLs being moved. Pull from backlink data (Ahrefs, Semrush, or GSC Links).
- [ ] For high-value backlinks, plan outreach to update links manually after migration (most won't update, but 301s should still pass equity; outreach is for the highest-value links).
- [ ] Notify partners, affiliates, and any third parties whose links may break.

## Phase 2: Staging Build (Weeks 2-4)

### Build on staging

- [ ] Build the new architecture on a staging environment, not on production.
- [ ] Confirm robots.txt on staging is `Disallow: /` to prevent crawler access during build.
- [ ] Build every page in the new structure.
- [ ] Implement the new internal linking pattern.
- [ ] Implement BreadcrumbList schema sitewide on the new architecture.
- [ ] Implement Organization, Article, and other relevant schema per the schema templates from the AEO category.
- [ ] Verify the staging site renders without JavaScript (for AI crawler access per `ai-crawler-access`).

### Pre-launch validation on staging

- [ ] Crawl the staging site. Confirm zero 404s, zero broken links, zero infinite redirects.
- [ ] Validate every schema block.
- [ ] Spot-check 10-20 pages for content accuracy after migration.
- [ ] Verify the URL change map by manually checking 20 random old URLs would 301 to the right new URLs.
- [ ] Test the staging site on mobile (multiple devices and widths).
- [ ] Test load time on staging matches or exceeds production current state.

## Phase 3: Launch (Migration Day)

### Pre-launch sequence

- [ ] Take a final backup of the current production site (full snapshot, database and files).
- [ ] Lock the current site (read-only) or warn the team not to make changes during the migration window.
- [ ] Final crawl of current production to confirm the URL change map is still accurate.

### Launch sequence

- [ ] Deploy the new architecture to production.
- [ ] Implement all 301 redirects per the URL change map.
- [ ] Update robots.txt on production to allow crawling.
- [ ] Submit the new sitemap to Google Search Console.
- [ ] Submit the new sitemap to Bing Webmaster Tools (and other search engines if used).

### Immediate post-launch verification (first 4 hours)

- [ ] Spot-check 30 random old URLs: do they 301 to the correct new URLs?
- [ ] Spot-check the new pages render correctly to a fresh browser session.
- [ ] Verify Google Search Console can crawl a sample of the new URLs (URL Inspection tool).
- [ ] Verify analytics tracking is firing on the new pages (GA4, any other tags).
- [ ] Verify GBP and other external listings still link to live URLs.
- [ ] If any critical error is found: pause, fix, retest before proceeding.

## Phase 4: Active Monitoring (Weeks 1-4 Post-Launch)

### Daily for the first week

- [ ] Monitor GSC Coverage report for new errors (4xx, 5xx, crawl issues).
- [ ] Monitor server logs for unusual crawl patterns.
- [ ] Check Google's index for the new URLs: `site:example.com` and `site:example.com/[new-structure]/`.
- [ ] Spot-check 5 random old URLs to confirm 301s are still working.
- [ ] Watch GSC Performance report for any sudden drops (expected: some volatility; concerning: sustained drop >20%).

### Weekly for the first month

- [ ] Full GSC review: new pages indexed, redirects honored, no spike in errors.
- [ ] Traffic comparison: new structure vs baseline same-week last year (adjust for seasonality).
- [ ] Rank tracking: are key terms holding rank?
- [ ] User feedback: any reports of broken links, missing content, navigation confusion?

### Indexation re-acquisition

- [ ] After 2 weeks: how many old URLs has Google rolled into new URLs (visible as 301 in GSC)?
- [ ] After 4 weeks: how many old URLs still show in GSC as "Page with redirect"? (Some lag is normal; most should be resolved by 4 weeks.)
- [ ] After 8 weeks: if a large number of old URLs are still being shown as redirects rather than being replaced by the new URL in the index, investigate (sometimes the 301s are correct but Google is slow to consolidate; sometimes there's an issue).

## Phase 5: Stabilization (Months 2-6)

### Monthly review

- [ ] Traffic comparison vs pre-migration baseline (month over month, year over year)
- [ ] Rank tracking for the brand's top 50 terms
- [ ] Indexation health: are new URLs in, old URLs consolidated?
- [ ] Internal link audit: any pages now orphaned that weren't before?
- [ ] Conversion rate: are users finding what they need?

### Recovery curve

A clean migration typically shows:

- **Week 1-2:** Some volatility, occasional dips. Expected.
- **Week 3-4:** Stabilization. Traffic should be close to baseline.
- **Month 2-3:** Recovery if any dip occurred. Often equal to or slightly better than baseline by month 3.
- **Month 4-6:** Compounding benefits of the new architecture begin to show (better internal linking signal, cleaner topical clustering, improved AEO citation rate).

A migration that has not recovered to baseline by month 6 either had a missed step or had structural problems that the new architecture revealed. Diagnose and address.

## Specific Risks to Watch For

### Redirect chains beyond one hop

Sometimes during migration, an old URL that was already a redirect gets included in the URL change map, creating a 2-hop chain. Crawl after launch to find chains; collapse to one hop.

### Missing 301s

A URL that 404s loses all equity. Crawl the old URL list against the new site; verify every old URL either 200s on its new location or 301s to a destination.

### Lost internal links

If a page that was linked from 30 places no longer is, its topical signal drops. Verify internal link counts after migration.

### Sitemap drift

The new sitemap should list only the new URLs. Old URLs in the sitemap signal confusion to crawlers.

### robots.txt errors

The most catastrophic miss: launching with `Disallow: /` from staging accidentally left in production. Verify robots.txt immediately after launch.

### Analytics misconfiguration

GA4 events that depended on old URL patterns may stop firing. Audit tracking on the new pages.

## When to Roll Back

If during the first 24-48 hours after launch:

- More than 30% of redirects fail
- A critical page is broken or content is missing
- Traffic drops more than 50% in 24 hours

...consider rolling back to the pre-migration snapshot, fixing the issue, and re-migrating. Rolling back is painful but recoverable; pushing through with a broken migration is harder to recover from.

After 48 hours, rolling back becomes more expensive than fixing in place; commit to fixing forward.

## After Recovery: Document Everything

Once the migration has stabilized:

- Document the URL change map (keep accessible for future audits)
- Document any issues encountered and how they were resolved
- Document the recovery curve actual vs expected
- File the migration in a "decisions log" so future strategists understand why the architecture is what it is

Architectural changes are rare. The team that does the next one will appreciate the documentation from this one.
