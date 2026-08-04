# Schema Deployment Checklist

The deploy and maintain checklist for the five AEO-leverage schema types. Use during initial deployment and at every quarterly audit.

## Pre-Deployment Foundation

Before writing any schema:

- [ ] Site renders correctly without JavaScript (Check #3 from ai-search-audit). If not, fix rendering first; schema on a JS-only site is invisible.
- [ ] Canonical brand description from `entity-presence` is finalized. The schema description should match.
- [ ] Complete sameAs profile list from the entity-presence profile audit is available.
- [ ] CMS supports custom JSON-LD injection (theme-level, plugin, or tag manager).
- [ ] Person and Author bio pages exist for every named content contributor.

## Organization Schema (Homepage, every page or sitewide)

Deploy once via the site template (header, footer, or dedicated schema template).

- [ ] `@context` set to `"https://schema.org"`
- [ ] `@type` set to `"Organization"` (or more specific subtype if applicable)
- [ ] `@id` set to a stable canonical URL with fragment (e.g., `https://www.example.com/#organization`)
- [ ] `name` matches canonical brand name
- [ ] `alternateName` includes common variants if applicable
- [ ] `url` matches canonical homepage URL
- [ ] `logo` is a working URL to a high-resolution brand logo
- [ ] `description` matches the canonical paragraph from entity-presence
- [ ] `foundingDate` matches canonical founding year
- [ ] `founders` array includes founder names (and links to founder bio pages if they exist)
- [ ] `address` block present with full PostalAddress (or omitted for service-area / online-only businesses)
- [ ] `contactPoint` includes primary phone and contactType
- [ ] `sameAs` array includes every external profile from the entity-presence checklist
  - [ ] LinkedIn company page
  - [ ] Crunchbase (if applicable)
  - [ ] Wikipedia (if applicable)
  - [ ] Wikidata Q-ID URL
  - [ ] Major social profiles (Facebook, X, Instagram, YouTube, TikTok where active)
  - [ ] GBP vanity URL or maps URL
  - [ ] BBB profile
  - [ ] G2 / Capterra / GetApp profile (if applicable)
  - [ ] Industry-specific directories
- [ ] Every sameAs URL is live (200, no redirect, no 404)
- [ ] Validates in Google Rich Results Test
- [ ] Validates in Schema.org Validator

## Person Schema (One per Named Author, on Bio Pages)

Deploy on each author's dedicated bio page.

- [ ] One bio page per real named author (no "Editorial Team" Person entities)
- [ ] `@type` set to `"Person"`
- [ ] `@id` set to a stable URL with fragment (e.g., `https://www.example.com/team/author-slug/#person`)
- [ ] `name` matches the author's full real name
- [ ] `url` points to the author's bio page
- [ ] `image` is a real, high-quality photo of the author (not stock or AI-generated)
- [ ] `jobTitle` matches the author's current role at the brand
- [ ] `worksFor` references the Organization `@id`
- [ ] `description` is one to two sentences describing expertise and credentials
- [ ] `knowsAbout` array lists the author's actual areas of expertise (not the brand's full keyword set)
- [ ] `sameAs` array includes:
  - [ ] Author's LinkedIn profile
  - [ ] Author's Twitter / X profile if active
  - [ ] Author's published work URLs (academic, industry publications)
  - [ ] Author's podcast appearances (or aggregate page)
  - [ ] Author's personal site if applicable

## Article Schema (Every Editorial / Blog / Resource Page)

Deploy via the article template. Most CMSes can pull these fields automatically.

- [ ] `@type` set to `"Article"` (or `"BlogPosting"` or `"NewsArticle"` as appropriate)
- [ ] `@id` set to a stable URL with fragment
- [ ] `mainEntityOfPage` matches the canonical URL of the page
- [ ] `headline` matches the page H1 exactly
- [ ] `description` is a meta-description-quality summary
- [ ] `image` is a working URL to a representative image
- [ ] `datePublished` set once at publication, ISO 8601 format with timezone
- [ ] `dateModified` is configured to auto-update on substantive edits (test this with a real edit before relying on it)
- [ ] `author` references the Person `@id` (does not duplicate the Person object inline)
- [ ] `publisher` references the Organization `@id`
- [ ] `headline` does not exceed 110 characters (Google's Article guideline)

dateModified validation:

- [ ] Edit a recent post (add a paragraph, change a statistic). Save.
- [ ] Check Article schema via View Source or Rich Results Test.
- [ ] Confirm dateModified reflects today's date, not the original publish date.
- [ ] If not, the CMS is misconfigured. Fix before relying on the field.

## FAQPage Schema (Pages with Real FAQ Content Only)

Deploy ONLY on pages that have visible FAQ sections matching the schema.

- [ ] `@type` set to `"FAQPage"`
- [ ] `mainEntity` is an array of Question objects
- [ ] Each Question has a `name` (the question text)
- [ ] Each Question has an `acceptedAnswer` with a `text` field
- [ ] Every question matches a real user query (PAA, customer support, sales calls, Reddit, Quora)
  - [ ] Spot-check each question on Google; does similar wording appear in PAA?
- [ ] Every answer is self-contained (makes sense without the rest of the page)
- [ ] Every answer leads with the answer (inverted pyramid)
- [ ] Schema content matches visible page content exactly (no schema-only Q&A)
- [ ] No more than 10-12 questions per FAQPage (longer FAQ sections should be split or paginated)

## BreadcrumbList Schema (Every Page Except Homepage)

Deploy via the global template.

- [ ] `@type` set to `"BreadcrumbList"`
- [ ] `itemListElement` is an array of ListItem objects
- [ ] Each ListItem has `position` (1-indexed), `name`, and `item` (URL)
- [ ] The first item is always the homepage
- [ ] The last item is always the current page
- [ ] Intermediate items represent the actual site hierarchy (typically 1-3 levels)
- [ ] Every item URL is live and matches the actual breadcrumb a user would follow

## Validation (After Every Deployment)

Run on a representative sample of pages from each template:

- [ ] Homepage validates in Rich Results Test
- [ ] Homepage validates in Schema.org Validator
- [ ] Blog post page validates in both
- [ ] Author bio page validates in both
- [ ] FAQ page (or page with FAQ section) validates in both
- [ ] Service or resource page validates in both
- [ ] Zero errors across all sampled pages
- [ ] Warnings reviewed; recommended-field warnings populated where possible

## Quarterly Maintenance Audit

Run every 90 days. Catches drift.

- [ ] Organization sameAs URLs all still live (no 404s, no redirects)
- [ ] New profiles created since last audit added to sameAs
- [ ] Old profiles closed or archived removed from sameAs
- [ ] Organization description still matches canonical paragraph (which may have evolved)
- [ ] Person schema present on all current author bio pages
- [ ] Person sameAs URLs all still live
- [ ] dateModified validation re-tested (edit a post; confirm date updates)
- [ ] BreadcrumbList rendering correctly on a sample of pages
- [ ] FAQPage questions still match current real-user query patterns (PAA changes over time)
- [ ] Re-validate sample pages in Rich Results Test and Schema.org Validator
- [ ] Document any changes in a schema-audit log

## Triggered Audits

Run outside the quarterly cadence when:

- The brand changes canonical brand description, founding details, or any field
- A new external profile is created (new social, new directory listing)
- A profile is closed or migrated
- A new author bio is published
- An author leaves the brand (remove or archive their Person entity)
- A CMS update or theme update may have affected schema rendering
- A new content type is launched (course, event, podcast) and may need its own schema

## When to Bring in a Specialist

Most schema work is handled by the in-house dev team using the templates above plus the maintenance cadence. Consider specialist help when:

- The brand has multiple regional sites with hreflang and per-region schema requirements
- The brand has a complex product taxonomy (large ecommerce, marketplace)
- Schema is integrated with a knowledge graph project or a custom data layer
- The brand has been penalized for structured data spam in the past and needs cleanup

For most brands, dedicated schema specialists are overkill. The templates in the main SKILL.md plus this checklist cover 95% of the AEO-leverage work.
