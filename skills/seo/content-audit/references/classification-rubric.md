# Classification Rubric

The decision tree for assigning every URL to one of five buckets: Keep, Improve, Consolidate, Prune, Redirect.

Walk top to bottom. The first matching rule wins. When a URL hits multiple rules, the order of evaluation determines the bucket.

## Step 1: Is the URL Strategically Essential?

Some pages exist regardless of traffic. They are infrastructure.

- Homepage
- Primary service or product category pages
- Contact page
- About page
- Legal pages (privacy, terms, cookies, accessibility)
- Login or account pages (for SaaS / membership sites)
- Major hub or pillar pages that anchor topic clusters

If yes: **Keep.** Even with zero traffic, these pages stay.

If no: continue.

## Step 2: Is the URL Performing?

Use a tiered threshold based on site size.

For a small site (under 5,000 monthly organic visits sitewide):

- 50+ monthly clicks OR ranking top 10 for any meaningful query: **Keep.**
- 10-49 monthly clicks OR ranking 11-30 for any meaningful query: continue to Step 3.
- Under 10 monthly clicks AND no top-30 rankings: continue to Step 5.

For a medium site (5,000-50,000 monthly organic visits sitewide):

- 200+ monthly clicks OR top 10 rank: **Keep.**
- 50-199 monthly clicks OR ranking 11-30: continue to Step 3.
- Under 50 monthly clicks AND no top-30 rankings: continue to Step 5.

For a large site (50,000+ monthly organic visits sitewide):

- 500+ monthly clicks OR top 5 rank for a high-value query: **Keep.**
- 100-499 monthly clicks: continue to Step 3.
- Under 100 monthly clicks AND no meaningful rankings: continue to Step 5.

The thresholds are directional, not exact. Use judgment on edge cases. A 10-click page that drives a $50,000 deal is more valuable than a 1,000-click page that drives nothing.

## Step 3: Is There Untapped Potential?

For URLs that are partially performing but not winning:

- Ranks 11-30 for a query relevant to a business goal: **Improve.**
- Ranks well but converts poorly (high traffic, low estimate requests / sign-ups / purchases): **Improve.**
- Covers a topic the client should own but the page is currently weak: **Improve.**
- Is a template (location page, product page, blog category page) where improving one improves all instances: **Improve.**

If yes to any: **Improve.**

If the page is performing modestly but cannot be obviously improved: **Keep** (it is doing its job at its current ceiling).

## Step 4: Does the URL Overlap with Another?

For Keep and Improve URLs, check for cannibalization:

- Two or more URLs target the same primary query: **Consolidate.**
- Two or more URLs cover the same topic with overlapping content: **Consolidate.**
- A blog post and a service page compete for the same query, neither dominant: **Consolidate** (usually into the service page; the blog can become a section of the service page or a related-resource link).

When you flag a cluster for Consolidate, pick the canonical winner using these tiebreakers (in order):

1. The page with the higher historical traffic
2. The page with more backlinks
3. The page with the better URL structure (shorter, cleaner, more keyword-relevant)
4. The page that better matches the intent of the target query

Merge the best content from the others into the winner. 301 the others.

## Step 5: Is the URL a Candidate for Removal?

For URLs that are not performing AND are not strategically essential:

Check these conditions in order:

### 5a. Is there harm being done?

- Page is thin (under 300 words) with no recovery path: **candidate for Prune.**
- Page is outdated (event recaps with no evergreen value, expired offers, old pricing, defunct service descriptions): **candidate for Prune.**
- Page targets a topic the client no longer serves: **candidate for Prune.**
- Page is part of a templated content drop that is now dragging site quality (e.g., 200 templated location pages with identical structure): **candidate for Prune** (or Consolidate down to a smaller number with real content).

### 5b. Are there backlinks to preserve?

- Page has inbound backlinks: **Redirect** instead of Prune. 301 to the most relevant live page.
- Page has no inbound backlinks: continue.

### 5c. Are there surprise traffic sources?

- Check non-search traffic: referral, social, direct, email. If meaningful, may need to **Keep** or **Improve** despite poor search performance.
- Internal hub references: if a critical hub page links to this URL, either update the hub or **Keep** the page for now.

### 5d. Final disposition

If no harm, no backlinks, no surprise traffic, no critical internal references: **Prune.**

Use status code 410 (Gone) if there is no logical redirect target. Use 301 if a relevant live page exists.

## Edge Cases

### Old blog posts with modest evergreen traffic (10-30 clicks/month)

- If the topic is still relevant and the post can be updated in 1-2 hours: **Improve.**
- If the topic is dated and updating would require a full rewrite: assess whether the traffic justifies. Often these are best as **Prune** with a 301 to a current evergreen post on a similar topic.

### Location pages with backlinks but no rankings

- Most often: **Improve.** The page exists for a real geographic market; it just needs better content per the `on-page-audit` neighborhood-page treatment.
- If the location is no longer served by the client: **Redirect** to a parent service page or the closest still-served location.

### High-volume product pages with zero sales

- For ecommerce: **Improve.** Often the page has weak description, weak images, or missing schema. Rewrite before pruning.
- If the product is discontinued: **Redirect** to the closest current product or category.

### Old promotional pages with backlinks

- **Redirect** to an evergreen related page. Backlinks need to flow somewhere relevant.

### Pages from a content cluster the client wants to revive

- **Improve** for the top 5-10 in the cluster. **Prune or Redirect** the rest. Revival rarely needs the full original inventory.

### Pages flagged for legal or regulatory reasons (must remain published)

- **Keep,** regardless of traffic. Note in the audit as a legal hold.

### Personal blog posts or founder posts that build brand but do not rank

- Strategic value. If they do represent brand or thought leadership, **Keep** even with low search performance.

## Worked Examples

### Example 1

URL: `/blog/2022/03/storm-season-prep-tips`

- Status: 200
- Strategically essential: no
- Performance: 8 monthly clicks, ranks #34 for "indianapolis storm preparation roof"
- Backlinks: 0
- Topic relevance: yes, still in scope
- Word count: 420

Walk through:

- Step 1: not essential.
- Step 2: under threshold for Keep (small site, 8 clicks).
- Step 3: no top-30 rank. Continue.
- Step 5a: not thin (420 words), not outdated. Continue.
- Step 5b: no backlinks.
- Step 5c: no surprise traffic.

This is a borderline case. The content is on-topic and not terrible. Two options:

- **Improve** if the topic is part of a cluster being built (revive with current data, update target query to long-tail variant).
- **Prune with 301** to the current storm damage hub page if no cluster work is planned.

Default: **Improve** if the page is part of a cluster, otherwise **Prune.** Pick based on the strategy in client-context.

### Example 2

URL: `/services-old/`

- Status: 200
- Strategically essential: no (replaced by `/services/`)
- Performance: 0 clicks, ranking nowhere
- Backlinks: 3 (one from a local business directory, two from old partner sites)
- Topic relevance: no, replaced

Walk through:

- Step 1: not essential.
- Step 2: under threshold.
- Step 3: no potential.
- Step 5a: outdated.
- Step 5b: has backlinks.

**Redirect** to `/services/`. 301. The 3 backlinks pass their equity to the current services page.

### Example 3

URL: `/blog/about-our-team/`

- Status: 200
- Strategically essential: no (separate from the main /about/ page)
- Performance: 2 monthly clicks
- Backlinks: 0
- Topic relevance: yes (the team is real and current)
- Word count: 180

Walk through:

- Step 1: not essential (the canonical About page covers this).
- Step 2: under threshold.
- Step 3: no potential as a standalone post.
- Step 5a: thin.

Two options:

- **Consolidate** into the main `/about/` page if the content adds anything.
- **Prune with 301** to `/about/` if it is redundant.

Pick based on whether the content has any unique value worth preserving.

### Example 4

URL: `/services/roof-replacement/`

- Status: 200
- Strategically essential: yes (primary service page)
- Performance: 480 clicks/month, ranks #5 for "roof replacement indianapolis"

Walk through:

- Step 1: yes. **Keep.**

The page is doing exactly what it should. Standard maintenance only.

### Example 5

URL: `/blog/2023/09/why-cardinal-ridge-is-the-best-roofer-in-indianapolis/`

- Status: 200
- Strategically essential: no
- Performance: 0 clicks
- Backlinks: 0
- Topic relevance: marketing fluff, not a real informational query
- Word count: 850

Walk through:

- Step 1: not essential.
- Step 2: under threshold.
- Step 3: no real query to win.
- Step 5a: not thin by word count but the content is promotional self-praise with no informational value. Effectively low quality. **Candidate for Prune.**
- Step 5b: no backlinks.
- Step 5c: no surprise traffic.

**Prune.** 410. Marketing-claim content drags Helpful Content scoring; nothing to preserve.

## When the Rubric Conflicts with Judgment

Rubrics handle the common cases. The borderline 10-15% require human calls. When a rubric says one thing and your read of the URL says another:

- Trust judgment for content quality calls (the rubric cannot evaluate writing).
- Trust the rubric for data calls (it does not get tired or sentimental).
- Document the override in the audit notes so future audits know why.
