# Technical SEO Audit: example.com

> Fictional example for illustration. Brand name, URL, and findings are made up.

**Audit period:** 2026-05-23
**Auditor:** Agent (using `technical-audit` skill, with client-context for Cardinal Ridge Roofing loaded)
**Scope:** Full site (~340 indexable URLs)
**Tools used:** Screaming Frog SEO Spider (paid, JS rendering enabled), Google Search Console export 2026-05-22, PageSpeed Insights, browser inspection of top traffic templates

## Executive Summary

Cardinal Ridge's site is in moderate technical health. The site is correctly served over HTTPS, indexes well overall, and has no manual actions or security warnings. The most material issue is the indexation gap: 89 URLs are in the XML sitemap but only 142 of 340 are indexed, with the bulk of the gap living in the neighborhood landing page template. Combined with thin content on those same templates, this points to a quality threshold issue worsened by the August 2025 helpful content update. The biggest single fix is collapsing redirect chains created during a 2024 URL restructure that no one ever cleaned up. Recommended work is concentrated in three areas: neighborhood landing pages, redirect cleanup, and image performance. Estimated 3-4 sprints of dev/content work to address everything in P0 and P1.

## Top Five Fixes (Do These First)

1. **Collapse 47 redirect chains from the 2024 URL restructure.** P0. Many high-traffic URLs pass through 2-3 hops before landing. Estimated 4 hours of dev work; immediate impact on crawl efficiency and link equity.
2. **Rebuild the neighborhood landing page template.** P1. 12 location pages share near-identical templated content with only the city name swapped. This is exactly the pattern the helpful content system penalizes. Rewrite each with neighborhood-specific copy, real project photos, and local proof points. Estimated 6 hours per page (12 pages = 1.5 sprints of writer time).
3. **Fix the XML sitemap.** P1. Sitemap contains 23 noindexed URLs, 8 redirected URLs, and 4 404s. Clean and resubmit. Estimated 1 hour of dev work.
4. **Address LCP failures on the service page template.** P1. Service pages (top traffic template) median LCP is 3.8s, well above the 2.5s threshold. Hero images are unoptimized JPEGs averaging 580KB. Convert to WebP, properly size, lazy-load below-the-fold images. Estimated 1 day of dev work for site-wide rollout.
5. **Add LocalBusiness schema to all service and location pages.** P1. Site has no structured data deployed despite being a perfect LocalBusiness candidate. Adding correct schema on the service template (1 file change) and the location template (1 file change) covers 47 URLs. Estimated half a day of dev work.

## Findings by Area

### 1. Indexation Health

From GSC Pages report (snapshot 2026-05-22):

- Indexed: 142 URLs
- Not indexed: 198 URLs

Breakdown of "Not indexed":

- Excluded by 'noindex' tag: 67 URLs (intentional, admin, thank-you pages, paginated archives)
- Duplicate, Google chose different canonical: 41 URLs (the neighborhood pages duplicating each other, see §5)
- Crawled, currently not indexed: 38 URLs (mostly neighborhood pages and thin blog posts)
- Discovered, currently not indexed: 19 URLs (blog posts published in early 2025 that never gained traction)
- Page with redirect: 18 URLs (working as intended; covered in §3)
- Not found (404): 9 URLs (cleanup needed)
- Other / soft 404: 6 URLs

**Interpretation:** The "Crawled, currently not indexed" and "Duplicate, Google chose different canonical" buckets are the most actionable. Both point to the neighborhood landing pages and a small set of thin blog posts. Address by rewriting the neighborhood template (see top fixes) and either expanding or pruning the thin blog posts.

### 2. Crawlability

- `robots.txt`: returns 200, references the sitemap correctly. Blocks `/wp-admin/` (correct). Does not block CSS or JS. Pass.
- XML sitemap: returns 200. Lists 197 URLs. Of these:
  - 162 are indexable (200, no noindex, no redirect)
  - 23 are noindexed (should be removed from sitemap)
  - 8 are 301 redirected (should be replaced with destination URLs)
  - 4 return 404 (should be removed)
- Internal linking discoverability: every indexable URL has at least 1 internal link except for 4 orphans (3 old blog posts, 1 abandoned landing page from a 2024 campaign).

**Recommendation:** Clean the sitemap (P1). Decide on the orphans: link them or remove them.

### 3. Status Codes and Redirects

From the crawl export:

- 200 (OK): 340 URLs
- 301 (Permanent Redirect): 89 URLs
- 302 (Temporary Redirect): 3 URLs (should be 301s)
- 404 (Not Found): 12 URLs (9 indexed in GSC, 3 unindexed)
- 5xx: 0

**Redirect chains:** 47 chains identified, ranging from 2 to 4 hops. Sample:

- `/services/roofing/` → `/services/roof-replacement/` → `/services/roof-replacement-indianapolis/` (2 hops)
- `/blog/2024/05/storm-damage-tips` → `/blog/storm-damage-tips` → `/blog/what-to-do-after-storm-damage` (2 hops)

Most chains trace to a URL restructure in mid-2024 that was never cleaned up. **P0 fix.**

**3 remaining 302s:** all on form submission confirmation pages. Convert to 301s.

### 4. Canonicalization

- All 340 indexable URLs have canonical tags. Pass.
- 0 canonicals pointing to non-200 URLs. Pass.
- 0 self-conflicting canonicals. Pass.
- Paginated archives self-canonical correctly. Pass.

Canonicalization is the cleanest area of the audit.

### 5. Duplicate Content

The main offender is the neighborhood landing page template. 12 pages share roughly 85% identical content with only the city name and a couple of demographic stats swapped. Examples: `/service-areas/carmel/`, `/service-areas/fishers/`, `/service-areas/greenwood/`, etc.

Google flagged 8 of these 12 as duplicates with "Google chose different canonical." The remaining 4 are indexed but ranking poorly.

**Recommendation:** Rebuild each page with neighborhood-specific copy (~500 words minimum unique per page), one or more photos of completed work in that neighborhood, named local proof points (HOA names, neighborhood landmarks, common roof types in the area). This is a content workstream, not a dev workstream, owner of writing is the primary writer with input from the owner. See client-context for the 48-72 hour review turnaround constraint.

### 6. Internal Linking and Site Structure

- Average click depth from homepage: 2.3. Good.
- Pages 4+ clicks deep: 18 (mostly old blog posts).
- Most-linked-to internal pages: homepage (340), contact (340), services hub (298), about (276).
- Underlinked: the neighborhood landing pages (3-5 links each, mostly footer). Should be 8-12 each with contextual anchor text.
- Overlinked: a 2023 blog post about hail damage has 89 internal links pointing to it, mostly from outdated footer modules. Reduce or refactor.

### 7. Mobile Rendering

Sampled across 6 templates: homepage, services hub, individual service page, neighborhood landing page, blog post, contact page.

- All render correctly at 375px width. Pass.
- Tap targets meet 44x44 minimum. Pass.
- Hero images on service pages occupy 75-80% of above-the-fold space on mobile, pushing primary value prop below fold. Recommend reducing hero height by 30-40% across the service and neighborhood templates.
- No horizontal scroll on any sampled page.

### 8. Core Web Vitals

From GSC Page Experience report and CrUX data (last 28 days):

| Template | LCP (median) | INP (median) | CLS (median) | Status |
|---|---|---|---|---|
| Homepage | 2.1s | 132ms | 0.03 | Good |
| Services hub | 2.6s | 145ms | 0.05 | Needs Improvement (LCP) |
| Individual service page | 3.8s | 156ms | 0.04 | Poor (LCP) |
| Neighborhood landing | 3.4s | 142ms | 0.06 | Poor (LCP) |
| Blog post | 2.4s | 178ms | 0.08 | Good |
| Contact page | 1.9s | 121ms | 0.02 | Good |

The service page and neighborhood landing templates both fail LCP. Same root cause: unoptimized hero images averaging 580KB.

**Top three Lighthouse opportunities (service page template):**

1. Serve images in next-gen formats (WebP/AVIF). Estimated savings: 1.4s LCP.
2. Properly size images. Estimated savings: 0.7s LCP.
3. Preload LCP image. Estimated savings: 0.3s LCP.

Fixing the image template (1 dev day) should bring both failing templates into the Good zone.

### 9. Schema Markup

- **Current:** None deployed anywhere on the site.
- **Recommended additions:**
  - **LocalBusiness** on the homepage and every service/location page (most important, qualifies for rich results and clarifies entity).
  - **BreadcrumbList** sitewide (cheap to add, shows breadcrumbs in SERP).
  - **FAQPage** on the existing FAQ page and any service pages with FAQ sections.
  - **Article** on blog posts.

LocalBusiness is the highest-impact addition for this client (see top fixes).

### 10. International and Hreflang

N/A. Single-language, single-region (US) site.

### 11. Security and HTTPS

- All URLs serve over HTTPS. Pass.
- No mixed content warnings in browser console on sampled pages. Pass.
- HSTS not enabled. Recommend adding (low effort, low risk).
- SSL certificate valid through 2027.

### 12. Log File Analysis

Not available for this audit. Recommend asking SiteGround for access to access logs at the next quarterly check-in.

## Issue Backlog (for Dev / SEO Team)

| Priority | Issue | Affected URLs | Effort | Owner | Linked Finding |
|---|---|---|---|---|---|
| P0 | Collapse 47 redirect chains | 47 | 4 hours | Dev | §3 |
| P1 | Rewrite neighborhood landing template (12 pages) | 12 | 1.5 sprints | Writer + Owner | §5 |
| P1 | Clean XML sitemap (remove 35 non-indexable URLs) | 35 | 1 hour | Dev | §2 |
| P1 | Fix LCP on service + neighborhood templates (image optimization) | ~60 | 1 day | Dev | §8 |
| P1 | Add LocalBusiness schema to service + location templates | 47 | 0.5 days | Dev | §9 |
| P1 | Add meta descriptions to top 14 traffic pages missing them | 14 | 2 hours | Writer | (per on-page audit work) |
| P2 | Convert 3 remaining 302s to 301s | 3 | 30 min | Dev | §3 |
| P2 | Add BreadcrumbList schema sitewide | 340 | 2 hours | Dev | §9 |
| P2 | Fix 9 indexed 404s (either restore or 301) | 9 | 1 hour | Dev | §3 |
| P2 | Address 4 orphan pages (link or remove) | 4 | 1 hour | Writer / SEO | §2 |
| P3 | Enable HSTS | sitewide | 30 min | Dev | §11 |
| P3 | Reduce internal link count to 2023 hail damage post | 1 | 1 hour | Dev | §6 |

## What This Audit Did Not Cover

- **Server log analysis**, logs not accessible at time of audit.
- **JavaScript-rendered content beyond sampled pages**, JS rendering enabled in crawl, but spot-checks on more templates would tighten confidence.
- **Backlink profile audit**, out of scope; see `off-page-link-building` skill when shipped.
- **Keyword opportunity gaps**, out of scope; see `keyword-research` skill when shipped.
- **Content audit beyond surface-level review**, see `content-audit` skill when shipped.

## Recommended Next Steps

1. Complete the P0 redirect chain fix this week. Quick, high-leverage, no content dependency.
2. Begin the neighborhood landing page rewrite next sprint. This addresses the helpful content update impact directly and is the longest-running workstream, start now to finish before the next audit.
3. Parallel-track the LCP fix and schema deployment with dev. Both can land within the same sprint.
4. Re-audit in 90 days (target: 2026-08-23). Focus the re-audit on the same twelve areas but emphasize indexation recovery on the neighborhood pages.
