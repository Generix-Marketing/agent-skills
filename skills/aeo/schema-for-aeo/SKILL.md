---
name: schema-for-aeo
description: Use this skill when the user wants to deploy or audit JSON-LD structured data specifically for AI search citation readiness (not generic SEO rich results). Triggers include "schema for AEO," "AI schema," "schema for ChatGPT," "structured data for AI search," "JSON-LD for AEO," "Organization schema," "Person schema," "FAQ schema for AI," "schema audit for AI." This skill produces the schema implementations that move citation rate and entity authority: Organization with full sameAs, Person tied to Article author, FAQPage matched to real user queries, Article with correctly-updating dateModified, BreadcrumbList sitewide. Pairs with entity-presence (strategy) and local-schema-templates from the SEO local-seo skill.
---

# Schema for AEO

This skill produces the structured data implementations that move AI citation rate. The output is JSON-LD code, a deployment plan, and a validation step.

Important: schema is necessary but not sufficient for AEO. In published research, structured data ranks in the middle of citation factors, not the top. A perfectly-schema'd page that fails the inverted pyramid test will still not get cited. Schema correctly deployed amplifies content that is already extractable; it does not rescue content that is not.

That said, certain schema implementations are AEO-leverage in ways the generic-SEO schema guides miss. This skill focuses on those.

## When to Run This Skill

Run it when:

- The `ai-search-audit` flagged Organization schema gaps (Check #14), missing Person schema (#15), stale dateModified (#16), or generic FAQ schema (#11)
- The user is deploying schema for the first time and wants AEO-specific guidance
- The user wants to audit existing schema for AEO impact specifically
- The user is rebuilding the site templates and wants schema baked in correctly

Skip it when:

- The user wants generic SEO rich-results work (use technical-audit or a Rich Results-focused tool)
- The user wants strategy around entity authority (use `entity-presence`)
- The schema work is for local pack ranking (use `local-seo/references/local-schema-templates.md`)

## The Five Schema Types That Move AEO

In order of leverage.

### 1. Organization Schema with Complete sameAs Array

The single most important schema for entity authority. Goes on the homepage; many implementations also include on every page.

What matters most: the `sameAs` array. This is how LLMs consolidate entity identity across sources. Every official profile not listed is a missed authority signal.

```json
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "Organization",
  "@id": "https://www.example.com/#organization",
  "name": "Brand Name",
  "alternateName": "Brand alternate or short name",
  "url": "https://www.example.com/",
  "logo": "https://www.example.com/images/logo.png",
  "description": "Canonical one-paragraph brand description from client-context.md or entity-presence canonical source.",
  "foundingDate": "YYYY",
  "founders": [
    {
      "@type": "Person",
      "name": "Founder Name",
      "url": "https://www.example.com/about/founder/"
    }
  ],
  "address": {
    "@type": "PostalAddress",
    "streetAddress": "Street",
    "addressLocality": "City",
    "addressRegion": "State",
    "postalCode": "ZIP",
    "addressCountry": "US"
  },
  "contactPoint": {
    "@type": "ContactPoint",
    "telephone": "+1-XXX-XXX-XXXX",
    "contactType": "customer service"
  },
  "sameAs": [
    "https://www.linkedin.com/company/[handle]",
    "https://www.crunchbase.com/organization/[handle]",
    "https://en.wikipedia.org/wiki/[article]",
    "https://www.wikidata.org/wiki/Q[ID]",
    "https://www.facebook.com/[handle]",
    "https://www.instagram.com/[handle]",
    "https://twitter.com/[handle]",
    "https://www.youtube.com/[channel]",
    "https://g.page/[GBP-vanity-URL]",
    "https://www.bbb.org/[BBB-profile-URL]"
  ]
}
</script>
```

Implementation checklist:

- [ ] Description matches the canonical paragraph in `entity-presence`
- [ ] sameAs includes every official profile from the entity-presence profile audit
- [ ] Every sameAs URL is live and points to the correct page (not redirects, not 404s)
- [ ] Wikidata Q-ID included if the brand has one
- [ ] Wikipedia URL included if the brand has an own-article presence
- [ ] Logo URL works and is high-resolution
- [ ] Validates in Google Rich Results Test and Schema.org Validator

### 2. Person Schema on Author Bio Pages

Connects content to identifiable, verifiable experts. Bylined content with Person-schema-equipped authors gets higher credibility weight.

Place on each author's dedicated bio page (one bio page per author, accessible from every byline).

```json
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "Person",
  "@id": "https://www.example.com/team/author-slug/#person",
  "name": "Author Full Name",
  "url": "https://www.example.com/team/author-slug/",
  "image": "https://www.example.com/images/authors/author-slug.jpg",
  "jobTitle": "Author's Title at the Brand",
  "worksFor": {
    "@type": "Organization",
    "@id": "https://www.example.com/#organization"
  },
  "description": "One- to two-sentence description of the author's expertise and experience.",
  "knowsAbout": ["Topic 1", "Topic 2", "Topic 3"],
  "sameAs": [
    "https://www.linkedin.com/in/[author-handle]",
    "https://twitter.com/[author-handle]",
    "https://[author-publication-or-portfolio-URL]"
  ]
}
</script>
```

Implementation checklist:

- [ ] One Person schema per real author; no "Editorial Team" or "Brand Staff" Person entities
- [ ] sameAs includes the author's LinkedIn and any major published work
- [ ] worksFor links to the Organization @id for entity consolidation
- [ ] knowsAbout lists the topics the author actually covers
- [ ] Real photo, not stock or AI-generated

### 3. Article Schema with Linked Person Author and Updating dateModified

The schema that turns blog posts and resource pages into citable, fresh-dated content.

Critical: `dateModified` must update when content is meaningfully edited. Most CMS implementations set this once at publication and never update it. Stale dateModified makes content look old even when it has been refreshed. This is one of the most common implementation errors and one of the easiest to fix.

```json
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "Article",
  "@id": "https://www.example.com/article-slug/#article",
  "mainEntityOfPage": "https://www.example.com/article-slug/",
  "headline": "Article Title (Exact match to H1)",
  "description": "Meta-description-length summary of the article.",
  "image": "https://www.example.com/images/article-hero.jpg",
  "datePublished": "2026-MM-DDT00:00:00+00:00",
  "dateModified": "2026-MM-DDT00:00:00+00:00",
  "author": {
    "@type": "Person",
    "@id": "https://www.example.com/team/author-slug/#person"
  },
  "publisher": {
    "@type": "Organization",
    "@id": "https://www.example.com/#organization"
  }
}
</script>
```

Implementation checklist:

- [ ] headline matches the H1 (exact, not a truncated variant)
- [ ] author references the Person @id (does not duplicate the Person object)
- [ ] publisher references the Organization @id
- [ ] datePublished set once at publication
- [ ] dateModified updates on any substantive content edit, NOT on every page render or theme update
- [ ] CMS configured to auto-update dateModified on save (test this with a real edit)
- [ ] Image URL works and is appropriately sized

To test dateModified is working correctly: edit a post (add a paragraph, update a statistic), save, then check the Article schema. The dateModified should reflect today's date. If it does not, the CMS configuration is broken.

### 4. FAQPage Schema Matched to Real User Queries

FAQ schema is widely used and widely misused. The misuse: questions written from the brand's internal perspective ("What are the key differentiators of our platform?"). The use: questions matching real user query language ("How is [brand] different from [competitor]?").

LLMs match FAQ content to queries based on language similarity. Internally-generated FAQ questions are nearly invisible.

```json
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "FAQPage",
  "mainEntity": [
    {
      "@type": "Question",
      "name": "How much does a roof replacement cost in Indianapolis in 2026?",
      "acceptedAnswer": {
        "@type": "Answer",
        "text": "A standard asphalt shingle roof replacement on a 2,000-square-foot Indianapolis home costs between $9,000 and $14,000 in 2026. Metal roofing on the same home runs $18,000 to $30,000. Three factors drive most cost variance: roof complexity, tear-off depth, and material choice."
      }
    },
    {
      "@type": "Question",
      "name": "How long does a roof replacement take?",
      "acceptedAnswer": {
        "@type": "Answer",
        "text": "A typical residential roof replacement takes one to three days. Single-story homes with standard roof complexity finish in one day. Complex roofs with multiple valleys, peaks, and dormers, or larger homes (3,500+ square feet), can extend to three or four days."
      }
    }
  ]
}
</script>
```

Implementation checklist:

- [ ] Every question matches a real user query (PAA, customer support, sales calls, Reddit, Quora). Spot-check each on Google for PAA appearance.
- [ ] Every answer is self-contained (makes sense without the rest of the page)
- [ ] Every answer leads with the answer (inverted pyramid even within answers)
- [ ] Schema content matches visible page content exactly (Google flags discrepancies)
- [ ] FAQPage type only on pages that are actually FAQ pages or have FAQ sections (do not abuse on every page)

### 5. BreadcrumbList Sitewide

Helps both Google SERPs (visible breadcrumbs) and AI engines understand site hierarchy. Cheap to deploy; broadly useful.

```json
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "BreadcrumbList",
  "itemListElement": [
    {
      "@type": "ListItem",
      "position": 1,
      "name": "Home",
      "item": "https://www.example.com/"
    },
    {
      "@type": "ListItem",
      "position": 2,
      "name": "Resources",
      "item": "https://www.example.com/resources/"
    },
    {
      "@type": "ListItem",
      "position": 3,
      "name": "AEO Guide",
      "item": "https://www.example.com/resources/aeo-guide/"
    }
  ]
}
</script>
```

Deploy on every page except the homepage. Most CMS template implementations handle this automatically with proper configuration.

## Schema Types Worth Knowing But Lower Leverage

These are useful for specific contexts but should not be the focus of an initial AEO schema sprint.

- **Product schema:** ecommerce only. Essential for product pages; not the central AEO play.
- **LocalBusiness and subtypes:** see `local-seo/references/local-schema-templates.md` for the local-pack-focused versions.
- **HowTo:** useful on actual how-to content; Google has deprecated HowTo rich results in standard search but the schema still helps AI engines parse procedural content.
- **VideoObject:** useful for sites with hosted video.
- **Course, Recipe, Event, etc.:** narrow to specific content types.
- **Review and AggregateRating:** useful where reviews are present, but Google has tightened the visible-rich-result rules around these.

## What NOT to Do

Specific schema anti-patterns that get flagged or penalized:

- **Schema that contradicts visible content.** The address in schema must match the address on the page. The phone number same. The product price same. Discrepancies trigger Google's structured-data spam guidelines and reduce trust.
- **Multiple Organization or LocalBusiness schemas on one page.** One per page. Multiples confuse parsers.
- **Fake aggregateRating.** A 5-star rating with no reviews is detected and penalized.
- **FAQPage schema on every page.** Use only where FAQ content is actually present in the visible body.
- **Schema for content that does not exist.** A FAQPage with 50 questions that do not appear on the page is structured-data spam.
- **Stuffing knowsAbout on Person schema.** List the topics the author actually covers, not every keyword the brand wants to rank for.
- **Self-referential sameAs.** Linking the Organization sameAs to itself is a no-op and looks like spam.

## Validation

Always validate before deploying.

- **Google Rich Results Test** (https://search.google.com/test/rich-results): the official check for rich-result eligibility. Catches errors and warnings.
- **Schema.org Validator** (https://validator.schema.org/): strict adherence to the schema spec. Catches issues Google does not always flag.

Run both. Resolve every error. Address warnings when the warning indicates a missing recommended field that the brand can populate.

## Deployment Workflow

For a new schema implementation:

1. **Inventory the templates that need schema.** Homepage gets Organization. Author bio pages get Person. Article and blog pages get Article + Author Person reference. FAQ pages or sections get FAQPage. Everything except the homepage gets BreadcrumbList.
2. **Draft each schema block using the templates above.** Replace placeholders with real values.
3. **Validate in both validators.** Fix everything that fails.
4. **Deploy to a staging environment first.** Re-validate from the staging URL.
5. **Deploy to production behind a single-template change.** Most CMSes allow schema to be injected via theme-level templates, plugins, or tag managers. The fewer places schema lives, the easier maintenance is.
6. **Re-validate on production URLs after deployment.**
7. **Spot-check a sample of pages monthly** for the next quarter to confirm schema is rendering correctly across the template fleet.
8. **Schedule quarterly schema audits.** Profiles change, URLs change, the sameAs array drifts. Quarterly catches it.

## Common Pitfalls

- **Treating schema as a one-time setup.** sameAs URLs go stale, dateModified configurations break, profiles get added to the brand but not to schema. Without maintenance, the schema slowly diverges from reality.
- **Deploying schema on a site that fails the JavaScript rendering test.** If AI crawlers cannot see the page, they cannot see the schema either. Fix rendering first.
- **Focusing schema work before content work.** A perfectly schema'd page that fails the inverted pyramid test does not get cited. Get the content right; then add the structured data layer.
- **Cargo-culting schema from competitor sites.** Their implementations may be wrong. Validate independently.
- **Adding schema without understanding what each type does.** "Schema is good" is not a strategy. Each type has a purpose; deploy intentionally.

## References

- `references/schema-deployment-checklist.md`: A field-by-field checklist for deploying the five core AEO schema types, including the maintenance cadence.
