---
name: site-architecture
description: Use this skill when the user wants to design or restructure a site's URL hierarchy, navigation, internal linking patterns, category taxonomy, or information architecture for SEO and AEO. Triggers include "site architecture," "URL structure," "site hierarchy," "information architecture," "category taxonomy," "navigation structure," "breadcrumb design," "silo vs cluster," "hub and spoke," "internal linking structure," "site map planning," "restructure site." This skill produces an architectural plan covering URL hierarchy, navigation, internal linking, and category taxonomy. Reads client-context.md. Pairs with content-strategy (topic clusters drive architecture) and technical-audit (pre-restructure validation).
---

# Site Architecture

This skill produces a site architecture plan: URL hierarchy, navigation, internal linking patterns, category taxonomy, and breadcrumb design. The output is a structural plan a developer can implement and a content team can populate.

Architecture is unglamorous and high-leverage. A site with great content and bad architecture leaks ranking equity, confuses crawlers, and frustrates users. A site with average content and good architecture often outperforms because the structure does signal work the content alone cannot.

Most architectural debates (silo vs cluster, deep vs flat, breadcrumbs vs navigation, parent-child URLs vs flat URLs) have nuance. This skill is opinionated about the trade-offs but acknowledges where reasonable practitioners disagree.

## When to Run This Skill

Run it when:

- The user is launching a new site or redesigning an existing one
- The user has accumulated content without architectural intent and wants to restructure
- The user is post-merger or post-rebrand and needs to consolidate two sites
- The user's `content-audit` revealed structural issues (orphans, sprawl, cannibalization)
- The user is planning a CMS migration and needs to decide structure before the build
- The user's `technical-audit` flagged crawl efficiency or internal linking gaps

Skip it when:

- The user wants to write content (use `content-strategy`)
- The user wants to fix specific pages (use `on-page-audit`)
- The user wants pure technical SEO work (use `technical-audit`)

## Architecture Serves Both SEO and AEO

A site architecture in 2026 does signal work for two surfaces in parallel.

**The SEO surface** uses architecture for topical authority and crawl efficiency. URL hierarchy signals category. Internal linking distributes ranking equity. Navigation tells Google what the site considers important. Breadcrumbs reinforce hierarchy.

**The AEO surface** uses architecture for entity recognition and passage-level retrieval. URL hierarchy helps AI engines understand site topology. Internal linking (fan-out rank) is one of the highest-leverage citation signals. Schema across the architecture (Organization, BreadcrumbList, Article-with-author-Person, FAQPage) builds the entity model AI engines rely on. Clean section-level hierarchy supports passage extraction even within long pages.

The two surfaces want broadly similar things (clean hierarchy, strong internal linking, accurate schema, fast pages), but the optimization weights differ. SEO weights raw equity distribution; AEO weights entity consolidation and per-section extractability. Where they diverge, the architecture decision should be made consciously rather than defaulting to one surface.

Throughout the four decisions below, AEO considerations appear alongside SEO ones. Cross-references to `entity-presence` (entity authority), `schema-for-aeo` (citation-leverage schema), and `ai-crawler-access` (the infrastructure layer) are non-optional during architectural planning.

## The Four Decisions

A site architecture is the answer to four questions, in order.

### 1. URL Hierarchy

What does a URL path look like, and how deep does it go?

**The core trade-off:** deeper paths signal hierarchy and topical grouping but add click depth from the homepage (which can weaken ranking signals for buried pages). Flatter paths keep pages closer to the homepage but lose hierarchical signal.

**A workable default:**

- Homepage: `/`
- Top-level sections: `/services/`, `/resources/`, `/about/`, `/locations/`
- Second-level: `/services/roof-replacement/`, `/resources/insurance-claim-guide/`
- Third-level: `/services/roof-replacement/carmel/`, `/resources/insurance-claim-guide/state-farm-process/`
- Fourth-level and deeper: rare; usually a signal that the architecture is over-nested

Rules:

- **Max 3 levels deep for most sites.** Sites with genuinely hierarchical content (large ecommerce, multi-product SaaS, marketplaces) can justify 4-5. Service businesses rarely need deeper than 3.
- **URLs are lowercase, hyphenated, descriptive.** No underscores, no spaces, no parameters in canonical URLs.
- **URL slugs match the page's primary keyword approximately.** Not stuffed; matched. `/services/roof-replacement-indianapolis/` is fine; `/services/best-affordable-fast-quality-roof-replacement-indianapolis-2026/` is keyword stuffing.
- **Trailing-slash convention is consistent.** Pick one (with or without trailing slash) and 301 the other version sitewide.
- **URL changes are expensive.** Avoid restructuring URLs unless the benefit clearly outweighs the cost of redirects and lost equity.

### 2. Category Taxonomy

How are pages grouped, and how do the groups relate?

**Two dominant patterns:**

**Silos** (strict hierarchy):

- Each piece of content belongs to exactly one category
- Categories do not cross-link
- Strong topical signal per silo; clear separation
- Best for: brands where content cleanly partitions into non-overlapping topics

**Topic clusters** (hub-and-spoke with cross-linking):

- Pillar pages anchor each cluster
- Supporting pages link to the pillar AND to related supporting pages
- Cross-cluster linking happens where topically relevant
- Strong topical signal AND interconnection
- Best for: most modern content programs (the dominant pattern in 2026)

The silo vs cluster debate is largely resolved in favor of clusters for most use cases. Strict silos enforce artificial separation that does not match how readers (or AI engines extracting passages) actually use content. Use clusters as the default unless there is a compelling silo-specific reason.

For AEO specifically, clusters help because AI engines often retrieve passages from multiple related pages when synthesizing a response. A cluster with strong cross-linking signals to the engine that these pages are topically related, which can lead to multi-page citations from the same cluster in a single AI response.

**Taxonomy rules:**

- 3-7 top-level categories for most sites. More fragments navigation; fewer leaves too much in single categories.
- Each top-level category has 5-30 pages beneath it. Smaller categories are signs of over-categorization; larger may need sub-categorization.
- Tags (in addition to categories) work when used sparingly. 5-20 tags total, each used by 5+ pages. Free-floating tag taxonomies that grow unchecked become a noise source.
- Avoid creating categories that exist to hold one or two pages. Either bulk up the category or merge it with a sibling.

### 3. Navigation Design

How does the user reach content from the homepage?

**Three navigation surfaces:**

**Primary navigation (main menu):**

- 5-8 items max. More than 8 dilutes attention and creates choice paralysis.
- Top-level: brand-critical destinations. Services / Products / Resources / About / Contact are typical.
- Dropdowns are acceptable but should be shallow (one level of dropdown, not nested submenus).
- Primary nav links flow strong internal-link equity to their destinations.

**Footer navigation:**

- Comprehensive but organized. The footer is where users go for legal, support, secondary categories.
- Internal links from the footer carry less weight than primary nav links but more than nothing.
- Don't stuff the footer with hundreds of links to inflate internal linking.

**Contextual navigation:**

- Breadcrumbs (always, with BreadcrumbList schema)
- "Related articles" sections on content pages
- Sidebar navigation on specific page types (resource categories, documentation hubs)
- Internal links within body content (the highest-quality internal links, because they are contextual)

**Mobile navigation:**

- Hamburger menus are standard; users have adapted to them
- Primary nav items appear inside the hamburger; do not hide critical destinations
- Important CTAs (Contact, primary service) may appear outside the hamburger as persistent buttons

### 4. Internal Linking Patterns

How do pages within the site link to each other?

**The core principle:** internal links signal importance on both surfaces. On the SEO surface, links distribute ranking equity. On the AEO surface, this is sometimes called **fan-out rank** and is one of the top citation drivers: pages linked from many authoritative pages on the same site signal to AI engines that the site considers them canonical references. Pages with no internal links pointing to them are orphans on both surfaces.

For high-priority pages (pillars, named methodologies, original data pieces, anything the brand most wants to be cited for), target 8-15 contextual internal links from related cluster pages with descriptive anchor text.

**Patterns:**

**Hub and spoke (within a cluster):**

- The pillar page is the hub
- Each supporting page links to the pillar (anchor text: variants of the pillar's primary keyword)
- The pillar links to each supporting page (anchor text: variants of each supporting page's specific topic)
- Supporting pages link to 2-4 related supporting pages within the cluster

**Cross-cluster linking:**

- Where topically relevant, link across clusters
- Example: a "roof insurance claim" page (cluster: Insurance) might link to a "storm damage" page (cluster: Storm) where they intersect
- Avoid forcing cross-links that are not topically warranted

**Contextual linking from body content:**

- Higher quality than navigation links
- Anchor text describes the destination
- 2-5 contextual links per 1,000 words of body content is reasonable

**Anchor text rules:**

- Descriptive, not "click here" or "learn more"
- Variant of the destination page's primary keyword
- Not exact-match keyword-stuffed across many links to the same page (Google notices)
- Mix of exact, partial, and descriptive

## Specific Architectural Patterns by Site Type

### Service Business (Single Location or Local)

```
/
/services/
/services/roof-replacement/
/services/storm-damage/
/services/insurance-claims/
/services-areas/  (or /locations/)
/services-areas/carmel/
/services-areas/fishers/
/resources/  (or /blog/ or /learn/)
/resources/roof-replacement-cost-guide/
/resources/insurance-claim-process/
/about/
/about/team/
/about/our-process/
/contact/
/contact/free-estimate/
```

### Service Business (Multi-Location)

```
/
/locations/
/locations/indianapolis/
/locations/indianapolis/services/
/locations/indianapolis/services/roof-replacement/
/locations/cincinnati/
... (parallel structure per location)
/services/  (national service descriptions)
/services/roof-replacement/  (links to per-location service pages)
```

### B2B SaaS

```
/
/product/
/product/features/
/product/features/[feature-name]/
/product/integrations/
/product/integrations/[integration-name]/
/solutions/  (use-case-driven)
/solutions/for-[role-or-industry]/
/pricing/
/customers/  (case studies)
/resources/
/resources/blog/
/resources/guides/
/resources/templates/
/about/
/contact/
```

### Ecommerce

```
/
/shop/
/shop/[category]/
/shop/[category]/[subcategory]/
/shop/[category]/[subcategory]/[product-slug]/
/collections/  (curated groupings, separate from category taxonomy)
/blog/  (or /learn/, /guides/)
/blog/[post-slug]/
/about/
/contact/
```

### Content / Publisher

```
/
/[primary-category]/
/[primary-category]/[secondary-category]/
/[primary-category]/[secondary-category]/[article-slug]/
/authors/
/authors/[author-slug]/
/about/
/contact/
```

## Output Format

```markdown
# Site Architecture: [Brand]

**Date:** [YYYY-MM-DD]
**Strategist:** [Agent or user]
**Site state:** [New build / Restructure / Migration]

## URL Hierarchy

[Visual or indented list of the full URL structure, including planned pages]

## Category Taxonomy

| Top-level category | Pages | Pattern (silo / cluster) | Pillar URL |
|---|---|---|---|

## Navigation

### Primary nav (max 8 items)
[List]

### Footer
[Structured list of footer sections]

### Contextual elements
- Breadcrumbs: implementation
- Related articles: pattern
- Sidebar nav: where deployed

## Internal Linking Plan

| Page | Links out to | Links in from |
|---|---|---|

(For high-priority pages; not exhaustive for all)

## Schema for Architectural Elements

Architectural schema serves both SEO rich-result eligibility and AEO entity recognition. See `schema-for-aeo` for the citation-leverage versions.

- Organization schema on the homepage (and ideally sitewide via template) with full sameAs array linking every official external profile per `entity-presence`. This is the highest-leverage architectural schema for AEO.
- BreadcrumbList: deployed sitewide except homepage. Serves both SEO breadcrumb display and AEO site-hierarchy comprehension.
- SiteNavigationElement (optional, depends on parser): on main nav.
- ItemList: on category and listing pages.
- Author Person schema on every editorial bio page, linked from Article schema on bylined pages. Critical for AEO entity authority.

## Migration Plan (if restructure)

- URL change map: old URL → new URL (full list as separate document)
- 301 redirects to implement
- Internal links to update (sitewide find/replace)
- Sitemap to resubmit
- GSC re-indexing schedule

## Notes

[Constraints, dependencies, expected timeline, expected impact]
```

## When the User Pushes Back

**"Our developer says deeper URLs are bad."** Sometimes correct, often overstated. URL depth correlates with click depth from homepage; click depth correlates with reduced ranking signal. But a well-structured 3-level URL on a strong site outranks a 1-level URL on a weak site. Depth is one factor among many.

**"We want to put everything at the root for simplicity."** Resist. Root-level URLs (`/page-name/`) work for small sites with under 30 pages. Larger sites need hierarchy or the architecture becomes unsearchable for users and for crawlers.

**"Our CMS doesn't easily support this structure."** Architecture should be CMS-agnostic in the planning phase. The implementation may require CMS configuration or a plugin. The CMS should not dictate the architecture; the architecture should drive the CMS choice or configuration.

**"Can we just use the silo pattern? It's simpler."** Simpler initially, harder to evolve. Topic clusters with cross-linking match how content actually relates and how AI engines actually extract. Silos work for specific cases (cleanly partitioned content, strict regulatory requirements) but should not be the default.

## Common Pitfalls

- **URL changes without 301 mapping.** Catastrophic. Old URLs return 404; equity is lost; rankings drop.
- **Over-deep URLs that bury important pages 5+ clicks from homepage.** Click depth penalty.
- **Under-categorized sites with 200 pages at the root.** Architectural sprawl; users and crawlers lose the topical thread.
- **Over-categorized sites with 30 categories holding 1-2 pages each.** Taxonomy that fragments rather than organizes.
- **Navigation with 12+ items.** Diluted attention; weakened internal link distribution.
- **No breadcrumbs.** Misses a cheap UX and SEO win.
- **Tag taxonomies that grow unchecked.** A site with 800 unique tags has no taxonomy; it has chaos.
- **Footer used as a link farm.** Stuffing 200+ links in the footer dilutes the signal of each.
- **Cross-cluster linking that is too dense.** Every page linking to every page is the same as no signal.
- **Cross-cluster linking that is too sparse.** Silo-like behavior even though clusters are intended.

## References

- `references/restructure-migration-checklist.md`: The detailed checklist for restructuring an existing site's architecture without losing ranking equity. Covers the redirect map, internal link updates, sitemap resubmission, GSC verification, and post-migration monitoring.
