---
name: programmatic-content
description: Use this skill when the user wants to build large numbers of pages from a structured data source (database, spreadsheet, API), asks about programmatic SEO or programmatic content, asks to scale content production, wants location pages or comparison pages at scale, asks about pSEO, or wants to build hundreds or thousands of templated pages. Triggers include "programmatic SEO," "programmatic content," "pSEO," "scale content," "templated pages," "thousands of pages," "location pages at scale," "comparison pages at scale," "directory site," "database-driven pages." This skill produces a dual-surface programmatic content plan (designed for both traditional search and AI answer engines), with strong guidance on when it works, when it fails, and how to avoid Helpful Content Update penalties or AI extraction failures. Reads client-context.md. Pairs with content-audit (post-launch portfolio review) and site-architecture (URL hierarchy).
---

# Programmatic Content

This skill produces a programmatic content plan: building a large number of pages from a structured data source, with shared templates and per-page differentiation that allows the pages to perform on both traditional search and AI answer engines.

The skill is called "programmatic content" rather than "programmatic SEO" because the practice now serves two surfaces. Pages must rank in Google AND extract cleanly for citation in ChatGPT, Claude, Perplexity, Gemini, and Google AI Overviews. A program that wins only one surface leaves meaningful visibility on the table; a program that loses both at scale becomes a sitewide quality drag that can take years to recover from.

The skill takes a strong posture: programmatic content is the most-abused tactic in modern SEO and AEO. Done badly, it produces thousands of thin templated pages that earn Helpful Content System penalties (SEO surface) and get passed over by AI engines for failing the extractability bar (AEO surface). Done well, it produces high-leverage scale that no other content tactic can match.

This skill is opinionated about the distinction. Most projects that get pitched as programmatic content should not be done at all. The ones that should follow a specific pattern that serves both surfaces from day one.

## When to Run This Skill

Run it when:

- The user is considering building 50+ similar pages from a data source
- The user already has programmatic pages and wants to assess or improve them on either surface
- The user asks "should we do programmatic SEO" or "should we do programmatic content" in any form
- The user has been hit by a Helpful Content update and programmatic pages may be the cause
- The user has invested in programmatic pages but the pages are not getting cited in AI engines
- The user wants location pages, comparison pages, integration pages, or other templatable types at scale

Skip it when:

- The user wants to build 5-15 pages (just write them by hand; programmatic infrastructure is overhead at that scale)
- The user wants strategic guidance on what topics to cover (use `content-strategy`)
- The user wants to assess existing content (use `content-audit`)
- The user wants to write a single piece (use `content-briefs`)

## The Litmus Test (Five Questions, Two Surfaces)

Before any programmatic work, the answer to all five questions below must be yes. If any answer is no, programmatic content is the wrong tactic.

1. **Is there real, differentiated demand for each page on BOTH surfaces?** Each page must target a query with meaningful SEO search volume AND meaningful AEO citation potential (the query type that AI engines actually answer with cited sources). Each page must also serve a different searcher need. "Yoga studios in [city]" times 1,000 cities can pass on both surfaces; "yoga studio benefits [city]" times 1,000 cities does not (the searcher need is identical and the city is meaningless to the answer).
2. **Does each page have meaningfully different content beyond the variable, including extractable per-page passages?** A "Carmel roof replacement" page that differs from a "Fishers roof replacement" page only in the city name fails on both surfaces. Real local proof points, real per-location data, real customer references, real photos must vary per page. AND each page must contain at least 3 quotable sentences that could be extracted in isolation (the AEO extractability requirement per `content-for-citations`).
3. **Can the data source actually support the differentiation?** If the underlying data is "city name and zip code," there is not enough material to produce 1,000 unique pages. If the data source has real depth (per-location job records, per-product reviews, per-integration screenshots, per-record original data), the math works on both surfaces.
4. **Does each page support entity recognition and section-level alignment for AI engines?** Each page should have per-record schema (LocalBusiness, Product, etc.) reflecting actual data per the patterns in `schema-for-aeo`. Each section should align with its heading so AI engines can map page sections to query intents. Without these, the SEO surface might rank the page but the AEO surface will pass it over.
5. **Is the brand prepared to maintain the pages after launch?** Programmatic pages without ongoing maintenance go stale fast and become drag on both surfaces (Helpful Content penalty risk on SEO; freshness-cited-page-decay on AEO). Plan for refresh as a recurring cost, not a one-time investment.

If yes to all five: programmatic content is viable. Proceed to the framework below.

If no to any: do not do programmatic content. Write fewer pages by hand. Many "programmatic" requests are really "we want shortcut volume" requests, and the shortcut is the failure mode.

## The Five-Stage Framework

For projects that pass the litmus test.

### Stage 1: Data Audit

Before building anything, audit the data source.

- **What fields exist?** Inventory every field on every record. A field with 95% blank entries cannot be a primary content driver.
- **What is the data quality?** Spot-check 20 random records. If 5+ have errors, the data needs cleanup before programmatic content can proceed.
- **What is the data depth per record?** 200 characters of description is not viable; 800-2,000 characters of substantive variable content per record is.
- **What is the update cadence?** Pages built from stale data go stale. Document who updates the source and how often.
- **What is the field that actually differentiates?** If only one field varies meaningfully across records (city name, product number), the project is suspect. Real programmatic content has 4-10 fields varying meaningfully per record.
- **Are there per-record quotable claims available?** AEO extractability requires that each page contain self-contained citable statements. If the data source supports this (real numbers per record, named details per record, comparable specs per record), AEO viability is in place. If the data source is all generic descriptions, AEO viability is weak.

If the data audit reveals the source cannot support differentiation OR extractability, the project does not proceed. Either deepen the data first or abandon the project.

### Stage 2: Template Design

Build the page template assuming the data source. Three principles serving both surfaces:

**The template is the floor, not the ceiling.** A template provides the structure every page shares. The per-record content fills enough of the page that the template feels like packaging, not content. Templates that ARE the content (with one or two variables sprinkled in) fail on both surfaces.

**Templates must accommodate variable content lengths.** A page where the variable section can be anywhere from 50 to 2,000 words depending on data depth is better than a rigid template that forces a 500-word section regardless of underlying data. The richest records should produce the longest pages.

**Templates must structure for both ranking and extraction.** SEO wants clean H1, descriptive title, body content that signals topical relevance. AEO wants inverted-pyramid section openings, aligned headings (the H2 matches what is beneath it), quotable sentences in the opening, self-contained passages per section. A template that produces both is the goal.

A good dual-surface programmatic template includes:

- **Variable hero with inverted-pyramid opening:** title and opening 2-3 sentences that answer the page's implied query, including the specific record's primary field plus 2-3 supporting fields. Not just "[Service] in [City]" but a substantive answer-first opening with real data.
- **Variable body sections, each with aligned headings:** content sections populated from different fields, with H2s that match what is in the section beneath. A location page might have sections for "Services we offer in [city]," "Common [service] needs in [city]" (varying by climate, demographics, building type), "Recent [city] projects" (real photos and outcomes), "[City] specific FAQ."
- **Variable proof:** photos, testimonials, project examples specific to the record. Real photos beat stock universally.
- **Variable schema reflecting actual record data:** the JSON-LD per page should use the record's real coordinates, real opening hours, real ratings, real product specifications. Not a templated copy with one variable swapped. Per `schema-for-aeo`.
- **Per-record FAQ from real queries:** FAQs sourced from PAA, customer support, sales calls, and Reddit threads about that specific record type. Not templated "What is [service] in [city]?" generic questions; real queries real users ask.
- **Stable hub linking:** every page links to a relevant pillar or hub and to related records. Internal linking (fan-out rank) is a top citation driver per `content-for-citations`.
- **Preview control:** meta description and OpenGraph that accurately describe the specific page, varying per record. AI engines weight preview control highly for relevance assessment.

### Stage 3: Quality Floor and Quality Ceiling

Define both before generation.

**Quality floor (dual-surface):** the minimum each page must have to publish. Common floors:

- Minimum 500 words of variable content (per page, not template-shared)
- At least one real photo specific to the record
- At least three specific data points unique to this record
- At least three quotable sentences in the page's opening (AEO extractability)
- Each H2 aligned with its section content (AEO heading-alignment requirement)
- A FAQ section with at least 4 questions sourced from real user queries (not generic templated questions)
- Valid schema with per-record data (not template-copy schema)
- Meta description and OpenGraph specific to the record

Records that cannot meet the floor are NOT published. They wait until the data improves, or they are dropped from the program. Publishing pages that fail the floor is what kills programs on both surfaces.

**Quality ceiling:** the maximum the template invests in per page. This caps engineering effort and prevents over-engineering the easy cases. Common ceilings:

- Per-record manual review for the first 20-50 pages, then sampled review for the rest
- A budget of 2-4 hours of human work per record for the showcase pages, scaling down to 15-30 minutes for tail records
- Refresh cadence: showcase records reviewed quarterly, tail records annually

### Stage 4: Launch Pattern

How to deploy the pages without triggering algorithmic flags on either surface.

- **Launch in waves, not all at once.** Publishing 1,000 pages on day one looks like a content farm to crawlers AND to AI engines that detect coordinated drops. 100-200 pages per week over 5-10 weeks is more natural.
- **Validate the first 20-50 pages manually on both surfaces before scaling.** These are the highest-leverage pages. If they index AND start getting cited, the pattern works. If they fail either, stop and fix the template.
- **Submit a sitemap segment.** Do not submit the full 1,000-URL sitemap on launch day. Add URLs to the sitemap as waves go live.
- **Monitor BOTH indexation (SEO) and early citation signals (AEO) in the first 30 days.** GSC Pages report shows how many of the new URLs Google decides to index. Manual sampling of cited sources in Perplexity and AI Overviews for the new URLs' target queries shows whether AI engines have started to find the new content. If indexation rate is below 70% OR no new URLs show up in AI search citation sampling within 60-90 days, the template has a quality problem. Pause the next wave until diagnosed.
- **Build the internal linking before the pages go live.** Hub pages, category pages, and cross-record links should all point to the new pages from launch day, not added later. This serves both SEO equity distribution and AEO fan-out rank.

### Stage 5: Post-Launch Pruning (Both Surfaces)

The honest part. Some percentage of the pages built will not perform on either surface. The program needs a kill criterion and a pruning cadence.

- **Set thresholds in advance.** "Any page with zero impressions for 90 days, zero backlinks, AND zero AI citation appearances for 90 days is a prune candidate."
- **First pruning at month 4.** Pages that have not gained traction on either surface by month 4 usually never will.
- **Standard pruning cadence quarterly.** Audit performance across both surfaces; prune the bottom decile.
- **Pruning is not failure.** It is the natural completion of a programmatic content project. Programs that never prune accumulate dead weight that drags both surfaces.

Pairs with `content-audit` for the portfolio-level decision-making.

## When Programmatic Content Goes Catastrophically Wrong

Three failure modes are worth naming explicitly because they are common, and they all hit both surfaces.

### Failure 1: The Templated Location Page Trap

The most common failure. A brand decides to build location pages for every city in their service area, the template is "[Service] in [City Name]," and the per-page content varies only by city name and a couple of zip codes.

What happens on SEO: Google indexes 5-10% of the pages, treats them as duplicate content, and may apply a sitewide quality signal that hurts even the unrelated pages.

What happens on AEO: AI engines extracting passages find templated text repeated across pages. Citation rate is effectively zero for these pages, and the templated pattern can reduce citation trust for the brand entity overall (the engines learn that the brand publishes low-extractability content at scale).

Recovery: prune aggressively (cut 80-95% of the location pages, keep only the 5-15 with real differentiation per the litmus test), and wait 6-12 months for both surfaces to re-evaluate.

### Failure 2: The AI-Generated Page Farm

A brand decides to use an LLM to generate "[Product A] vs [Product B]" pages for every pairing in their category. 500 products = 124,750 pairings. 100,000+ pages of AI-generated comparison content.

What happens on SEO: detection. The Helpful Content System (and Google's AI content detection more broadly) flags the pattern. Pages get deindexed in batches. Sitewide signals degrade.

What happens on AEO: AI engines specifically detect AI-generated content patterns. Some have published detection methodologies. AI-generated pages at scale are increasingly excluded from citation sets even if they index, because the content is paraphrased rather than originally researched.

Recovery: delete almost everything. Manually rebuild the comparison pages for the ~10-30 pairings that actually matter to customers, with real comparative analysis and human-sourced specifics.

### Failure 3: The Stale Database Page

A program launches successfully, the pages perform on both surfaces, then the underlying data ages without refresh. 2024 pricing data is still on the pages in 2026. Discontinued products still have their pages live. Locations the brand no longer serves still rank.

What happens on SEO: gradual decline as Google notices the freshness lag.

What happens on AEO: stale pages drop out of AI citation sets faster than out of SEO rankings. AI engines preferentially cite content updated within the last 12 months; stale programmatic pages exit citation sets within 6-18 months of freshness lapse.

Recovery: a refresh sprint that audits every page for data accuracy on both surfaces, plus a permanent refresh cadence going forward.

## Output Format

```markdown
# Programmatic Content Plan: [Project Name]

**Date:** [YYYY-MM-DD]
**Strategist:** [Agent or user]
**Page count target:** [N]
**Estimated timeline:** [Weeks to first wave, months to full deploy]
**Surfaces:** Both SEO and AEO

## Litmus Test Results

| Question | Answer | Evidence |
|---|---|---|
| Real differentiated demand per page on BOTH surfaces? | Yes / No | [SEO query volumes AND AEO citation-potential signals per record type] |
| Meaningfully different content per page, including extractable passages? | Yes / No | [Sample differentiation between any 3 records; sample quotable opening sentences] |
| Data source supports differentiation? | Yes / No | [Data audit summary] |
| Page supports entity recognition and section-level alignment? | Yes / No | [Per-record schema plan; heading-alignment plan] |
| Brand prepared to maintain? | Yes / No | [Refresh ownership and cadence committed] |

If any answer is No: **STOP. Do not proceed with programmatic content.** Reframe the project as manual content production at smaller scale.

## Data Source Audit

- **Source:** [Database, spreadsheet, API, etc.]
- **Records:** [Count]
- **Fields per record:** [Count, with which fields are differentiating]
- **Data quality (spot-check 20 records):** [N records had issues]
- **Update cadence:** [How often the source updates, by whom]
- **Depth per record:** [Average variable content depth]
- **Quotable claims per record:** [Per-record citable statements available]

## Template Design (Dual-Surface)

**Page template structure:**

- Variable hero with inverted-pyramid opening: [Specifics]
- Variable body sections with aligned headings: [List with which fields populate each]
- Variable proof elements: [Photos, testimonials, project data]
- Variable schema per record: [Schema type and per-record fields]
- Variable FAQ from real per-record queries: [Question sources]
- Stable hub linking: [Links to pillar and related records]
- Preview control: [Per-record meta and OpenGraph plan]

**Per-page differentiation strategy:**

[Specific approach to ensure each page reads as unique to both human readers and AI extraction]

## Quality Floor (Dual-Surface)

To publish, each page must have:

- [ ] Minimum [N] words of variable content
- [ ] At least [N] real photos specific to the record
- [ ] At least [N] specific data points unique to this record
- [ ] At least 3 quotable sentences in the opening (AEO)
- [ ] Each H2 aligned with its section content (AEO)
- [ ] FAQ section with [N]+ questions sourced from real queries
- [ ] Valid schema reflecting actual record data (AEO entity signal)
- [ ] Meta description and OpenGraph specific to the record (preview control)

Records failing the floor are NOT published.

## Quality Ceiling

Caps on human investment per record:

- Showcase records (top 20-50): [N hours per record]
- Tail records: [N minutes per record]
- Refresh cadence: showcase quarterly, tail annually

## Launch Pattern

- Wave 1 (week 1-2): [N pages, which records]
- Wave 2-N: [Cadence and selection criteria]
- Manual validation gate after Wave 1 on BOTH surfaces (indexation AND citation signals)
- Indexation monitoring: weekly through month 1, monthly thereafter
- AEO citation monitoring: monthly sample queries on the new pages

## Post-Launch Plan

- Month 1: indexation rate target [N]%; first citation signals in Perplexity sampling
- Month 4: first pruning pass; threshold [criteria across both surfaces]
- Quarter 2 onwards: quarterly pruning cadence
- Annual: full program review against the litmus test

## Kill Criteria (Dual-Surface)

If [specific conditions across both surfaces] are met by [date], the program pauses or sunsets. Document in advance to enable honest decision-making later.

Common criteria:
- Indexation rate stays below 70% after Wave 1 validation despite template iteration
- Aggregate organic traffic to programmatic pages declines for two consecutive quarters
- Citation rate across AI engines remains effectively zero after 6 months
- AI Overview appearance frequency on cluster-relevant queries does not increase

## Notes

[Sensitive considerations: legal requirements, regulated industries, geographic constraints, customer trust factors.]
```

## When the User Pushes Back

**"Our competitor has 5,000 pages and they rank fine."** Maybe on SEO. Check the AEO surface too: search the competitor's category queries on Perplexity and check if their pages get cited. Often the competitor that ranks at scale is invisible in AI search. If yes (the competitor's pages rank AND get cited), spot-check 10 of their pages: is the content actually differentiated and extractable? If yes, build comparable quality at smaller scale and grow. If no, they are operating on a borrowed timeline. Both the Helpful Content System and AI citation patterns catch up unevenly. Building a competitor's bad pattern at scale takes on their long-term risk for none of their accumulated authority.

**"We have an AI that can generate the per-page content."** Not by itself. AI-generated content at scale is one of the most clearly-detected patterns on both surfaces in 2026. AI can assist research, draft sections, generate variations, but the publish-floor requirement of meaningful differentiation and extractable original claims cannot be filled by AI alone. Human review and addition is the cost of doing programmatic content well.

**"This is too slow. Can we just publish them all and prune later?"** No. The cost of the wrong launch pattern is sitewide ranking damage AND sitewide entity-trust damage that takes months to recover from. The waves-and-validation pattern is non-negotiable for any program above ~100 pages.

**"We only care about SEO citation right now; AEO can come later."** Common framing, often wrong. The dual-surface requirements are not in tension; the same patterns that make pages extractable also tend to make them rank well (clean structure, real data, original claims, accurate schema). Designing for SEO alone produces pages that rank but do not get cited, and retrofitting AEO later is harder than building both in from the start.

## Common Pitfalls

- **Publishing the full set on day one.** Looks like a content farm to both Google and AI engines. Wave the launch.
- **No quality floor.** Without it, every record gets published regardless of underlying data. Programs without floors are programs with built-in HCU exposure on the SEO surface and zero-citation rate on the AEO surface.
- **Templated FAQ that does not match real PAA queries.** A template that produces "What is roofing in [city]?" on 1,000 pages contributes nothing to AEO and signals templating to AI engines. FAQ must be sourced from real query language; templated FAQ is worse than no FAQ.
- **Schema that is just template-copy.** Each page should have schema reflecting its actual record data. Templated schema signals the same templating pattern as templated content.
- **Treating launch as completion.** Programmatic content requires permanent maintenance on both surfaces. Programs without committed refresh cadence go stale and become drag.
- **No kill criteria across both surfaces.** Programs that cannot be killed on either surface cannot be honestly assessed. Set the kill criteria before launch with thresholds for both SEO and AEO performance.
- **Misclassifying the project.** Many projects pitched as programmatic are really "we want 30 well-written pages at scale" projects. Those are not programmatic; they are manual content production. The infrastructure investment of programmatic content does not pay off below ~100 pages on either surface.

## References

- `references/litmus-test-detailed.md`: A detailed walkthrough of the five-question dual-surface litmus test with worked examples of projects that passed and projects that failed.
- `references/template-design-patterns.md`: Specific template patterns that have worked in 2024-2026, with the differentiation strategies that made them work on both SEO and AEO.
- `examples/sample-programmatic-content-plan.md`: A worked dual-surface plan for a fictional ecommerce brand expanding into product comparison pages.
