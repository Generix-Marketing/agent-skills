# Litmus Test Detailed

A detailed walkthrough of the five-question dual-surface litmus test from the main SKILL.md, with worked examples of projects that passed and projects that failed. Use this when a programmatic content project is being scoped and the team needs honest assessment before committing engineering and content resources.

**Dual-surface framing:** every question below must be assessed for both the SEO surface (traditional search ranking) and the AEO surface (AI citation in ChatGPT, Claude, Perplexity, Gemini, AI Overviews). A project that passes only one surface is still a "no": building thousands of pages that rank but do not get cited (or vice versa) is taking on the cost of programmatic infrastructure for half the visibility. Modern programmatic content is dual-surface by design.

## Question 1: Is There Real, Differentiated Demand Per Page?

Each page must target a query with meaningful search volume AND each page must serve a different searcher need.

### What passes

- Zillow's "homes for sale in [city]" pages. Each city has real search volume and a distinct searcher need (a Carmel buyer is not looking at Fishers homes).
- Yelp's "[cuisine] restaurants in [neighborhood]" pages. Each combination has real searchers with location-specific needs.
- Tripadvisor's "things to do in [destination]" pages. Each destination is a distinct trip-planning need.
- A B2B SaaS comparison set: "[Product A] vs [Competitor 1]," "[Product A] vs [Competitor 2]," etc. Each comparison serves buyers evaluating against a different alternative.

### What fails

- "Yoga benefits in [city]" times 1,000 cities. The benefits of yoga are not city-specific. There is no real differentiated demand.
- "How to start a business in [state]" times 50 states. Some state-specific demand exists (regulations vary), but most variants do not justify their own page.
- "Best [generic product category] in [city]" when the product is shipped nationally and the city is not relevant to the purchase decision.
- "[Generic noun] [year]" pattern, where the year is the only variable. "Marketing trends 2025" plus "Marketing trends 2026" is two pages, not a programmatic program.

### Diagnostic question

If you removed the variable from the title and read the page, would it still make sense? If yes (the city, year, or other variable adds nothing), the pages do not pass the differentiated demand test.

## Question 2: Does Each Page Have Meaningfully Different Content Beyond the Variable?

This is the failure mode that catches even well-intentioned projects. The demand might be real, but if the brand cannot produce meaningfully different content per page, the program still fails.

### What passes

- A roofing brand's neighborhood pages where each page includes: real project photos from that neighborhood, named local landmarks, common roof types in that neighborhood, a specific testimonial from a customer in that neighborhood, neighborhood-specific weather considerations.
- An ecommerce comparison set where each page includes: the product's actual specifications, real screenshot comparisons, real pricing, named customer reviews of each option, specific use-case recommendations.
- A B2B integration directory where each page documents: how the integration actually works, screenshots of the setup, specific customer use cases, performance benchmarks specific to the integration.

### What fails

- Location pages where the content is "we serve [city] and surrounding areas with our roofing services. Our experienced team..." with only the city name varying.
- AI-generated comparison pages where the comparison is a templated table with auto-filled cells and no human review of accuracy.
- Directory pages where the per-record content is just the record's basic metadata (name, address, phone) with no editorial value-add.

### Diagnostic test

Take three random records from the planned set. Generate the page content for each manually. Read all three side by side. Do they feel like distinct content from a knowledgeable source, or do they feel like the same page with different names plugged in?

If they feel templated to a human reader, they will feel templated to Google.

## Question 3: Can the Data Source Actually Support the Differentiation?

The differentiation has to come from somewhere. If the underlying data is shallow, the pages will be shallow regardless of how good the template is.

### What passes

- A real estate database with 50+ fields per property (photos, agent notes, neighborhood data, price history, school district, commute times, etc.). Enough fields to populate substantial per-page content.
- A SaaS product catalog where each product has documented features, pricing, integrations, use cases, customer reviews, comparison data. Real depth per record.
- A medical practice's procedures database with detailed descriptions, FAQs, recovery timelines, cost ranges, patient stories per procedure.

### What fails

- A spreadsheet with city names and zip codes, intended to power 1,000 location pages. Two fields cannot produce 1,000 unique pages.
- A product catalog where each record has a name, SKU, price, and 100-character description. The data is too thin for substantive pages.
- A "free directory" data source scraped from public records with no original information. The same data is available everywhere; the brand adds no value.

### Diagnostic test

Pick the field that most defines what a page in this set is about. Look at the distribution of values in that field across all records. If 60%+ of records have the same value, the field is not actually differentiating; it is a category.

A real differentiating field has high variance across records AND each variant has enough underlying material to anchor a page.

## Question 4: Is the Brand Prepared to Maintain the Pages?

The hidden failure mode. A successful launch followed by zero maintenance creates a slow-decay problem that often dwarfs the initial benefit.

### What passes

- A team committed to a quarterly refresh cycle for showcase pages and annual for tail.
- A data source with automatic update flows (real estate listings sync nightly from MLS; product catalog updates from inventory system).
- A pruning cadence in place (quarterly review, drop the bottom decile by performance).
- Budget for content refresh, not just initial production.

### What fails

- "We will publish and then come back to it later." Later does not come.
- A data source that requires manual updating by someone with no time allocated to it.
- An agency engagement that ends at launch. Without ongoing maintenance, the program degrades within 6-12 months.
- A team that cannot articulate who owns the pages 12 months from now.

### Diagnostic test

Ask: "In June 2027, who is going to read each of these 500 pages and decide whether they still serve the brand?" If there is no clear answer with a named owner and committed time, the maintenance plan does not exist, and the programmatic content project should not proceed.

## Question 5: Does Each Page Support Entity Recognition and Section-Level Alignment for AI Engines?

The AEO-specific question. A page can pass Questions 1-4 (real demand, real differentiation, real data, real maintenance) and still fail AEO if the structural pattern does not support AI extraction.

### What passes

- Each page has per-record schema reflecting actual record data (LocalBusiness with real coordinates, Product with real specifications, etc.) rather than templated schema with one variable swapped.
- Each H2 on the page matches the content beneath it (the "aligned heading" requirement).
- The opening paragraph of each page contains at least three quotable, self-contained sentences with specific claims.
- Section-level passages can be extracted in isolation without requiring context from elsewhere on the page.
- Meta description and OpenGraph vary per record and accurately preview the page.

### What fails

- Schema that is just template-copy with one swapped variable. AI engines detect and discount this.
- Headings that are internal labels ("Overview," "Why Choose Us") rather than reflecting the section's actual content.
- Openings that build context for 100+ words before reaching any quotable claim.
- Sections that depend on context from earlier sections to make sense.
- Templated meta descriptions ("Looking for [service] in [city]? We have you covered. Get a free estimate today.") repeated across hundreds of pages.

### Diagnostic test

Take three random records. For each, read just the opening paragraph as if it were the entire page. Could an AI engine extract a useful, specific, citable statement from that paragraph alone? Could it map each H2 to a specific user query intent? If no on either count for multiple sample records, the AEO viability is weak and the template needs work before launch.

## Worked Examples

### Example A: Roofing Brand Wants 50 Neighborhood Pages

**Question 1 (demand):** Each neighborhood has search volume for "[neighborhood] roofer," "[neighborhood] roof replacement," etc. Real demand, real differentiation per neighborhood. **Pass.**

**Question 2 (content):** Each page can include real project photos from that neighborhood (the brand has 20+ years of work), neighborhood-specific roof types (older neighborhoods have different roofs than new developments), local proof points (HOAs, landmarks). **Pass.**

**Question 3 (data):** Brand has job records by address, photo library by job, customer testimonials by location. Enough depth per neighborhood to produce 800-1,500 word pages. **Pass.**

**Question 4 (maintenance):** Brand commits to quarterly review of showcase neighborhood pages, with a writer updating projects, photos, and testimonials. **Pass.**

**Verdict:** Programmatic SEO is viable. Recommend 5-15 pages initially with real human work per page, then expand based on performance.

### Example B: B2B SaaS Wants 10,000 Comparison Pages

**Question 1 (demand):** Most "[Product A] vs [Random Competitor X]" comparisons have zero search volume. The brand might have real demand for 30-50 comparisons (against the top competitors), but 10,000 has no demand support. **Fail.**

**Verdict:** Do not proceed at the proposed scale. Build 30-50 high-quality comparison pages by hand instead.

### Example C: Local Service Business Wants 500 Zip-Code Pages

**Question 1 (demand):** Zip-code-specific search volume is minimal. People search by neighborhood name or city, not zip code. **Fail.**

**Verdict:** Do not proceed. Reframe as 10-15 city-and-neighborhood pages, not 500 zip-code pages.

### Example D: Marketplace Wants 50,000 Category-City Pages

**Question 1 (demand):** Real demand for many of the combinations.
**Question 2 (content):** Brand can pull real listings, real prices, real review data per category-city combination from the platform's data.
**Question 3 (data):** Live database with high per-record depth, automatic update flow.
**Question 4 (maintenance):** Database updates continuously; templates refresh from current data.

**Verdict:** Programmatic SEO is viable AND probably the only economically feasible way to build this scale. Proceed with strict quality floor and wave launch.

### Example E: B2B Brand Wants 200 Integration Pages

**Question 1 (demand):** Each integration combination has some search volume from existing customers and prospects. Real but modest demand per page.
**Question 2 (content):** Each integration has real setup instructions, real screenshots, real use cases. Real differentiation.
**Question 3 (data):** Integration documentation exists in detailed form internally.
**Question 4 (maintenance):** Engineering owns the integration docs; refresh happens when integrations update.

**Verdict:** Viable. The classic "good programmatic content" use case.

## Honest Patterns to Watch For

A few patterns where teams convince themselves they pass the litmus test when they do not:

- **"Real demand exists for the top 10% of records."** Then build pages for the top 10%, not all of them. The other 90% drag the program.
- **"We will use AI to generate the differentiation."** AI can vary the wording. It cannot create real underlying differentiation from data that does not have it.
- **"Our competitor has it, so we need it."** The competitor may be operating on borrowed time, or may have data depth you do not have.
- **"It is too much work to do by hand at this scale, so it has to be programmatic."** That is a budget problem, not a methodology problem. The solution to "this is too expensive to do well" is not "do it badly at scale."

When in doubt, the safer choice is fewer pages, deeper content, manual production. Programmatic content at scale is a multiplier on whatever underlying quality the program has, across both surfaces. Multiplying high quality is wonderful on SEO and AEO alike. Multiplying low quality is catastrophic on both: SEO degrades sitewide signals; AEO degrades brand entity trust in AI engines.
