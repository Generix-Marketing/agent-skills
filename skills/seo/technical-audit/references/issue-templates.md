# Issue Templates

Pre-written ticket descriptions for the ten most common technical SEO findings. Drop into Jira, Linear, Asana, or paste into Slack for the dev team. Replace bracketed placeholders.

Each template includes: a one-line summary, a description, acceptance criteria, and a priority recommendation.

## 1. Redirect Chains

**Summary:** Collapse redirect chains affecting [N] URLs.

**Description:** Crawl identified [N] URLs that pass through 2 or more redirects before reaching their final destination (e.g., `/old-path` → `/intermediate-path` → `/final-path`). Each hop slows users, wastes crawl budget, and reduces the link equity passed to the final URL.

**Acceptance criteria:**

- All redirect chains in the attached export are collapsed to single 301 redirects (`/old-path` → `/final-path` directly).
- No redirect targets are themselves redirects.
- Re-crawl confirms 0 chains remain.

**Priority:** P1 if any chain involves a high-traffic URL; P2 otherwise.

---

## 2. 4xx Errors on Linked Pages

**Summary:** Fix [N] internal links pointing to 404 pages.

**Description:** Crawl found [N] internal links pointing to URLs returning 404. These are dead links from live pages, harming user experience and wasting crawl equity.

**Acceptance criteria:**

- For each broken link in the attached export: either update the link to point to a live URL, remove the link, or 301 the target URL to a relevant live page.
- Re-crawl confirms 0 internal links pointing to 4xx URLs.

**Priority:** P1 for broken links on high-traffic pages; P2 otherwise.

---

## 3. Missing Canonical Tags

**Summary:** Add canonical tags to [N] pages missing them.

**Description:** [N] URLs do not have a `<link rel="canonical">` tag in the `<head>`. Without explicit canonicals, Google decides which version of duplicate/near-duplicate URLs to index, often unpredictably.

**Acceptance criteria:**

- Every public URL has a self-referential canonical tag in the `<head>`.
- Tag format: `<link rel="canonical" href="https://www.example.com/exact-url/">`.
- Canonical URL matches the actual URL of the page (correct protocol, host, path, trailing slash convention).

**Priority:** P1 if missing canonicals correlate with indexation issues; P2 otherwise.

---

## 4. Mixed Trailing Slash URLs

**Summary:** Standardize URL trailing slash convention sitewide.

**Description:** Site serves both `/page` and `/page/` versions of URLs with 200 responses. This creates duplicate content and splits link equity.

**Acceptance criteria:**

- Pick one convention: trailing slash or no trailing slash.
- 301 the non-canonical version to the canonical version, sitewide.
- Update internal links to use the canonical version.
- Update sitemap to use the canonical version.
- Re-crawl confirms only one version returns 200 per URL.

**Priority:** P2.

---

## 5. XML Sitemap Contains Non-Indexable URLs

**Summary:** Clean [N] non-indexable URLs from XML sitemap.

**Description:** XML sitemap includes URLs that are noindexed, canonicalized to other URLs, 301 redirected, or returning 4xx. Sitemaps should list only URLs the site wants indexed, in their canonical, indexable form.

**Acceptance criteria:**

- Audit the sitemap against the most recent crawl.
- Remove URLs that are: noindexed, 4xx, 5xx, canonicalized to a different URL, 301 redirected.
- Re-submit the cleaned sitemap in Google Search Console.

**Priority:** P2.

---

## 6. Robots.txt Blocking CSS / JS

**Summary:** Update robots.txt to allow CSS and JavaScript crawling.

**Description:** Current robots.txt blocks `/wp-content/` (or equivalent) which contains CSS and JavaScript files Google needs to render the page correctly. Without rendering access, Google may misjudge page quality, mobile-friendliness, and Core Web Vitals.

**Acceptance criteria:**

- Robots.txt allows Googlebot to fetch all CSS and JS resources referenced in page rendering.
- Test in GSC's URL Inspection tool: rendered HTML should match what a user sees.
- Specifically: allow `/wp-content/uploads/` or equivalent for images, and `/wp-includes/` or equivalent for core scripts.

**Priority:** P1.

---

## 7. Missing Meta Description on High-Traffic Pages

**Summary:** Add meta descriptions to top [N] traffic pages missing them.

**Description:** [N] pages with significant impressions in GSC have no meta description. Google auto-generates one from page content, often choosing poorly. A written meta description controls the SERP snippet and improves CTR.

**Acceptance criteria:**

- Each page in the attached list has a written meta description between 140 and 160 characters.
- Each meta includes the page's primary keyword and a clear value prop or call to action.

**Priority:** P1 for pages with >1,000 monthly impressions; P2 otherwise.

---

## 8. Duplicate H1 Tags

**Summary:** Resolve duplicate H1 tags on [N] pages.

**Description:** [N] pages have either zero H1 tags or multiple H1 tags. Each page should have exactly one H1 describing the page's primary topic. Multiple H1s confuse topical relevance signals; zero H1s leave the topic ambiguous.

**Acceptance criteria:**

- Every page has exactly one H1.
- H1 describes the page's primary topic and includes the primary keyword or close variant.
- H1 is unique across the site (templates with shared H1s, e.g., "Welcome" on every page, get rewritten).

**Priority:** P2.

---

## 9. Slow LCP on Top Traffic Template

**Summary:** Improve Largest Contentful Paint on [template name] pages.

**Description:** [Template name] pages account for [N]% of organic traffic and are flagged "Poor" for LCP in GSC (current median: [X] seconds; threshold: 2.5 seconds). Slow LCP hurts both user experience and ranking signals.

**Acceptance criteria:**

- LCP median for [template name] pages drops below 2.5 seconds (measured in CrUX or PageSpeed Insights).
- Specifically: optimize the hero image (convert to WebP, properly size, lazy-load offscreen images), defer non-critical CSS and JavaScript, and preload the LCP element.
- Verified in Lighthouse and confirmed in GSC Page Experience report within 28 days of deployment.

**Priority:** P1.

---

## 10. Orphan Pages

**Summary:** Internally link [N] orphan pages or remove them.

**Description:** [N] URLs are in the XML sitemap and indexable but have zero internal links pointing to them. Orphans are hard for Google to discover and signal low importance.

**Acceptance criteria:**

- For each orphan URL: either add at least 3 contextual internal links from related pages, or noindex and remove from sitemap if the page is not strategically valuable.
- Re-crawl confirms no orphans remain among indexable URLs.

**Priority:** P2 for medium-value orphans; P3 for low-value orphans.

---

## Template Format Notes

Each ticket should specify:

- **Summary:** one line, action verb.
- **Description:** the symptom, the evidence (link to the crawl export or GSC report), the impact.
- **Acceptance criteria:** measurable, specific, verifiable.
- **Priority:** P0 / P1 / P2 / P3, with a reason if not obvious.

Avoid: vague descriptions ("fix SEO issues"), missing acceptance criteria, priorities without justification. Devs and writers ignore tickets that do not give them a clear "done" condition.
