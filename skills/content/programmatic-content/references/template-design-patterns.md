# Template Design Patterns

Specific template patterns that have worked in 2024-2026 programmatic content programs, with the differentiation strategies that made them work on both surfaces (SEO ranking and AEO citation). Use as starting points; every project needs its own template tuned to the data source.

**Dual-surface design principle:** every pattern below must serve both ranking signals (SEO) and extraction signals (AEO). The SEO needs are familiar: clean H1, descriptive title, body content signaling topical relevance, internal linking. The AEO needs are: inverted-pyramid section openings, aligned headings (H2 matches its content beneath), quotable sentences with specific claims, per-record schema reflecting actual data, FAQ sourced from real queries. The good news: these requirements are not in tension. A template that produces both does both better.

## Pattern 1: Location Page (Service Business)

The single most common programmatic template and the single most commonly botched. The pattern below works when the data depth is real, on both surfaces.

### Template structure

- **Title (variable):** `[Service] in [Neighborhood] | [Brand]` (55-60 chars)
- **Meta description (variable):** [Brand] has served [Neighborhood] homeowners for [N years]. [Specific local detail: nearby landmark, common roof type, recent project count]. Get a free estimate. (140-160 chars)
- **H1 (variable):** `[Service] in [Neighborhood]` (matches the title H1 pattern)
- **Hero (variable):** A 60-90 word opening that establishes Cardinal Ridge's presence in this specific neighborhood, including the year of first project, project count, and one named local detail (HOA, school district, neighborhood landmark).
- **Section: Recent [Neighborhood] projects (variable):** 3-5 actual completed projects with photos, addresses (with permission or partial street), and brief project descriptions. Critical: real photos from real jobs.
- **Section: [Service] considerations for [Neighborhood] homeowners (variable):** Content about neighborhood-specific factors. Common roof types in the area, weather considerations, common storm damage patterns, common code requirements, average home age and what that means.
- **Section: Insurance and permits in [Neighborhood/County] (variable per county):** Specific permit office, common insurance carriers serving the area, neighborhood-relevant code notes.
- **Section: What [Neighborhood] homeowners say (variable):** 2-3 real testimonials from customers in the neighborhood. Names, dates where customers permit.
- **Section: FAQ (variable):** 4-6 questions sourced from real PAA, customer support, sales calls for that geographic area.
- **CTA (template):** Estimate request form with neighborhood pre-populated.
- **Schema (variable):** LocalBusiness with `areaServed` for the specific neighborhood, real coordinates, real photos.

### Why it works

The variable content depth is real. Project photos, testimonials, permit details, common considerations all vary meaningfully per neighborhood. Even adjacent neighborhoods have meaningfully different content (Carmel and Westfield are next to each other but have different price points, different home ages, different HOA cultures).

### Why the template-only version fails

If the only variables are the neighborhood name and a few stats, the pages read as templated. Real differentiation requires real data depth per location.

## Pattern 2: Comparison Page (SaaS, Product, Service)

### Template structure

- **Title (variable):** `[Product A] vs [Product B]: [Year] Comparison`
- **Meta description (variable):** Comparing [A] and [B] for [primary use case]. [A] is better for [scenario]; [B] is better for [scenario]. Full comparison and pricing inside.
- **H1 (variable):** `[Product A] vs [Product B]`
- **Hero (variable):** Two- or three-sentence summary stating which is better for which kind of buyer. Direct, no hedging.
- **Section: Quick verdict (variable):** A short paragraph for each archetype of buyer (small team, mid-market, enterprise, specific use cases) saying which product fits best and why.
- **Section: Feature-by-feature comparison (variable table):** Actual features compared with real data. Not "Yes/No," but specific notes per cell. ("Yes, with these limitations" / "Available on Pro plan and above" / "Beta as of [date]")
- **Section: Pricing comparison (variable):** Real current prices, billing cadences, what is included at each tier.
- **Section: Who should choose [A]:** 2-3 specific buyer profiles for whom A is right.
- **Section: Who should choose [B]:** Same for B.
- **Section: How they compare on [specific use case 1, 2, 3]:** Use-case-specific evaluation.
- **Section: FAQ (variable):** Sourced from real PAA and forum questions about this specific comparison.
- **Schema (variable):** Article with author Person; consider Review schema for the verdict section.

### Why it works

Real comparison requires having actually used or thoroughly researched both products. The content depth per page is high because the comparison is non-trivial. Even at scale, each comparison page is its own research project.

### Why the AI-generated version fails

Auto-generated comparison content tends toward fluff: vague feature descriptions, generic verdicts, no specific use-case differentiation. Detection of this pattern is now reasonably reliable.

## Pattern 3: Integration / Compatibility Page (B2B SaaS)

### Template structure

- **Title (variable):** `[Product] + [Integration Partner] | Integration Guide`
- **Meta description (variable):** Connect [Product] with [Integration Partner] in [N steps]. [Specific value the integration provides]. Setup guide inside.
- **H1 (variable):** `Integrating [Product] with [Integration Partner]`
- **Hero (variable):** Brief description of what the integration does and who it serves.
- **Section: What this integration does (variable):** Specific capabilities enabled when the two products are connected.
- **Section: Setup steps (variable):** Real numbered setup instructions with real screenshots.
- **Section: Common use cases (variable):** 2-4 specific use cases this integration unlocks, with mini-scenarios.
- **Section: Pricing and limitations (variable):** What plan tier is needed, what limits apply (rate limits, sync intervals).
- **Section: Troubleshooting (variable):** Common errors and fixes specific to this integration.
- **Section: Related integrations (template + variable):** Cross-link to 3-5 related integration pages.
- **Schema (variable):** Article schema; SoftwareApplication where applicable.

### Why it works

Integration documentation has natural per-record depth because every integration genuinely is different. Setup steps differ, screenshots differ, troubleshooting differs.

### Risk

Stale integration pages are worse than no page (telling users to do something that no longer works). Refresh cadence per integration is non-negotiable.

## Pattern 4: Marketplace / Directory Listing

### Template structure

- **Title (variable):** `[Item Name] | [Category] | [Marketplace]`
- **Meta description (variable):** Pulled or computed from the listing's primary attributes plus pricing if relevant.
- **H1 (variable):** Item name
- **Hero (variable):** Item photos (multiple), key attributes, pricing, availability.
- **Section: Specifications (variable):** All structured attributes in a clean format.
- **Section: Description (variable):** Long-form description, ideally from the seller or augmented by the platform.
- **Section: Reviews (variable):** Real customer reviews; aggregate rating.
- **Section: Similar items (template + variable):** Cross-link to related listings.
- **Section: FAQ (variable):** Sourced from buyer questions on the platform.
- **Schema (variable):** Product schema with full fields; AggregateRating where reviews are present; Offer with current price.

### Why it works

Marketplace listings have inherent per-record depth (the listing IS data) and natural update flow (listings change as inventory and pricing change). The template is doing what marketplaces have done for 20 years.

### Risk

Programmatic SEO at marketplace scale requires real product data, real inventory updates, and aggressive deindexing of dead listings. Marketplaces that let dead listings linger get penalized.

## Pattern 5: Glossary / Term Definition

### Template structure

- **Title (variable):** `What is [Term]? | [Brand] [Category] Glossary`
- **Meta description (variable):** [Term] [one-sentence definition]. [Brief context about why it matters]. Read the full definition.
- **H1 (variable):** `What is [Term]?`
- **Hero (variable):** Definition in the first sentence, plain language. Followed by context: who uses this term, in what situations, what related concepts surround it.
- **Section: How [Term] is used (variable):** Concrete examples of the term in practice.
- **Section: Related terms (template + variable):** Cross-link to 5-10 related glossary entries.
- **Section: Common confusions (variable):** Terms it gets confused with, terms it should not be conflated with.
- **Section: FAQ (variable):** Sourced from PAA for "what is [term]" queries.
- **Schema (variable):** DefinedTerm or Article; FAQPage on the FAQ section.

### Why it works

Glossary pages are honest single-purpose pages. Each one serves a defined query and a defined user need. At scale, they build category authority.

### Risk

A glossary without underlying domain expertise becomes a Wikipedia knockoff with no original value. The brand needs to be a credible source on the category.

## Differentiation Strategies That Make Templates Work

A few specific techniques that turn templated pages into citable pages:

### Real proprietary data per record

If every page can cite a specific datum that exists nowhere else (the brand's job count in that neighborhood, the product's actual performance benchmark, the integration's actual user count), the page is independently citable in AI engines.

### Named local proof points

For location-based templates: neighborhood landmarks, HOA names, school districts, specific community references that a non-local writer could not invent. These are nearly impossible to fake at scale, which is exactly why they work.

### Photos that vary per record

Real photos specific to the page (not stock, not the same hero on every page) are one of the strongest differentiation signals. If the brand has real photos per record, the template feels like context for the photos. If not, the template carries the whole page and feels light.

### FAQ sourced from real per-record queries

Generic FAQ that templates "What is [service] in [city]?" does nothing. FAQ sourced from real PAA, real customer support tickets, real Reddit threads about that specific record is high-leverage AEO content.

### Per-record schema

Schema that reflects the actual record's data (specific coordinates, specific opening hours, specific aggregate ratings) is meaningfully different from per-record schema that is just the template with the name swapped. AI engines and traditional crawlers both notice the difference.

## What Templates Cannot Fix

A template can amplify good underlying data. A template cannot create data depth that does not exist. Most failed programmatic content programs failed because the team tried to use template sophistication to compensate for thin data. The compensation does not work on either surface: SEO sees through it as duplicate content, AEO sees through it as low-extractability content.

If the data is shallow, build fewer pages or get better data. Don't iterate on the template.
