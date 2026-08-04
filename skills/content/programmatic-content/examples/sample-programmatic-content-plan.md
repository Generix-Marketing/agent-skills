# Programmatic Content Plan: Sample Outdoor Gear Marketplace

> Fictional example for illustration. Brand name and findings are made up.

**Date:** 2026-05-24
**Strategist:** Agent (using `programmatic-content` skill)
**Page count target:** 1,200 in Phase 1; up to 8,000 by end of Year 1 (subject to performance gates)
**Estimated timeline:** Weeks 1-4 for Phase 1 build, 10-week wave launch, quarterly expansion gates
**Surfaces:** Both SEO and AEO (dual-surface program)

> **Project:** PeakRoute (fictional outdoor gear marketplace) wants to launch product-by-region pages: "Best [Product Category] for [Outdoor Region]" combining their product catalog with curated regional outdoor activity data. Examples: "Best Backpacking Tents for the Sierra Nevada," "Best Trail Running Shoes for the Appalachian Mountains."

## Litmus Test Results (Dual-Surface)

| Question | Answer | Evidence |
|---|---|---|
| Real differentiated demand per page on BOTH surfaces? | Yes | SEO: each product-region combination has 100-3,000 monthly searches. AEO: per-region recommendation queries surface in ChatGPT, Perplexity, and AI Overview testing with cited sources, with regional variation (Sierra vs Appalachian recommendations differ in cited engines as well as in Google) |
| Meaningfully different content per page, including extractable passages? | Yes | Per-region differentiation includes: climate, terrain, season windows, popular trails, regional gear shop partnerships, in-region photos; per-product variation includes specs, reviews, pricing. Per-page opening produces at least 3 quotable sentences combining region-specific gear requirements with named product picks |
| Data source supports differentiation? | Yes | Product catalog has 50+ fields per SKU; region database 30+ fields; reviews database with 250,000+ verified reviews; per-record real quotable claims available (test scores, regional usage data) |
| Page supports entity recognition and section-level alignment? | Yes | Per-record schema (Product with real specs, AggregateRating, regional ItemList); each H2 mapped to a specific user query intent for the product-region combination; per-record meta and OpenGraph plan in place |
| Brand prepared to maintain? | Yes | Engineering owns data pipeline (4-hour product sync, continuous reviews); content team committed to twice-yearly regional content review; pruning cadence quarterly across both surfaces |

All five answer Yes. **Proceed to plan.**

## Data Source Audit

- **Sources:** Product catalog (PostgreSQL, 12,000 active SKUs), regional database (custom, 80 named outdoor regions), reviews database (450,000 verified reviews tied to products), photo library (regional and product photos)
- **Records:** 12,000 products × 80 regions = 960,000 theoretical combinations. NOT all are sensible (a winter parka does not need a Sierra page in mid-summer; not every product fits every region). Phase 1 targets 1,200 high-relevance combinations.
- **Fields per record:**
  - Product fields: name, brand, category, sub-category, 20+ specifications, pricing, availability, expert score, user reviews
  - Region fields: name, primary terrain, climate, season windows, popular routes, regional partnerships, photo library
  - Combined fields: regional product reviews (users who reviewed the product in this region), regional editorial scoring (the in-house team's rating of this product for this region), per-region gear lists
- **Data quality:** Spot-checked 30 random combinations. 28 had no issues; 2 had minor data freshness issues. Acceptable.
- **Update cadence:** Product data syncs every 4 hours from inventory. Reviews update continuously. Regional content reviewed twice annually. Photo library updated quarterly.
- **Depth per record:** 1,500-3,000 words of variable content per page once template is populated. Strong depth.

## Template Design

**Page template structure:**

- **Variable hero:** "Best [Product Category] for [Region]" headline; opening paragraph naming the climate, terrain, and key gear requirements specific to this region for this product category; hero photo from the region.
- **Variable body sections:**
  - "What to look for in [product category] for [region]", variable per region's requirements
  - "Top picks for [region]", 5-10 specific products with per-product variable content (specs, regional reviews, why it fits the region)
  - "How we tested in [region]", variable per region (which routes, what conditions, what time of year)
  - "Regional gear shops and rentals in [region]", variable, sourced from partnership database
  - "Permits, regulations, and access notes for [region]", variable, region-specific compliance info
  - "Seasonal considerations for [region]", variable, calendar of access windows and gear changes
- **Variable proof elements:**
  - In-region photos (minimum 3 per page)
  - Verified user reviews filtered to users who indicated regional usage
  - Editorial scoring per product per region (separate from product overall scoring)
- **Variable schema:** ItemList containing Product schemas per top pick; AggregateRating on each Product; Article schema on the page itself.
- **Stable hub linking:** every regional page links to the region's parent hub; every page links to 3-5 related pages (adjacent regions, related product categories).

**Per-page differentiation strategy:**

The combination of region-specific requirements PLUS product-specific data PLUS verified regional user reviews PLUS in-region photos produces real differentiation. Two pages on similar product categories in similar regions will share 20-30% template, 70-80% variable content.

## Quality Floor

To publish, each page must have:

- [ ] Minimum 1,200 words of variable content per page
- [ ] At least 3 real in-region photos
- [ ] At least 5 verified user reviews with region-tagged usage
- [ ] FAQ section with 5+ questions sourced from PAA, customer support, and forum activity for this product-region combination
- [ ] Valid schema with real data per product on the page
- [ ] Editorial scoring (in-house team scores at least 5 products per region per category)

Records failing the floor are NOT published. Estimated 75-80% of theoretical 960,000 combinations will not meet the floor; only ~150,000 ever could.

## Quality Ceiling

- Showcase records (top 50 combinations by predicted search volume): 6-8 hours of human work per record. Custom editorial scoring, region-specific writing, multiple photos.
- Mid-tier records (next 250): 2-3 hours of human work per record. Editorial scoring, regional photo selection, light custom writing.
- Tail records (remaining 900): 30-60 minutes of editorial review on template population.
- Refresh: showcase records reviewed quarterly; mid-tier reviewed twice a year; tail reviewed annually OR triggered by data changes.

## Launch Pattern

- **Week 1-2:** Build template. Manually populate and ship 50 showcase records. Validate manually on both surfaces.
- **Week 3-4:** Dual-surface performance gate. Indexation rate (SEO), early ranking signals on showcase queries (SEO), early AI citation signals via manual Perplexity and AI Overview sampling on showcase queries (AEO). If indexation rate falls below 80% OR no showcase records appear in AI citation sampling at all, pause and diagnose. If both surfaces show signals, proceed.
- **Week 5-6:** Wave 1, 150 records (the next 150 by predicted demand).
- **Week 7-8:** Wave 2, 200 records.
- **Week 9-10:** Wave 3, 300 records. Total at end of week 10: 700 records live.
- **Week 11-14:** Wave 4-5, remaining 500 records to reach Phase 1 target of 1,200.

Manual validation gate after Wave 1 (week 6). Indexation, performance, quality spot checks, AEO citation sampling. Pause if issues on either surface; proceed if clean.

## Post-Launch Plan

- **Month 1:** Indexation rate target 85%+ (SEO). First AEO citation signals appearing in Perplexity sampling on 10%+ of tested showcase queries. Daily monitoring of GSC Pages report; weekly manual AEO sampling.
- **Month 4:** First dual-surface pruning pass. Threshold: pages with zero impressions, zero backlinks, AND zero AI citation appearances for 90 days are reviewed; those without clear strategic value are deindexed.
- **Quarter 2 onwards:** Quarterly pruning cadence covering both surfaces. Drop the bottom 10% by combined performance (SEO traffic + AEO citation rate) each quarter unless strategic value justifies (e.g., a seasonal page underperforming because off-season).
- **Annual:** Full program review against the dual-surface litmus test. Re-validate that all five conditions still hold; if any has weakened, adjust scope.

## Kill Criteria (Dual-Surface)

The program pauses or sunsets if:

- Indexation rate stays below 70% after Wave 1 validation despite template iteration.
- Aggregate organic traffic to programmatic pages declines for two consecutive quarters and pruning has not arrested the decline.
- A Helpful Content System update flags the program as a contributing factor to a sitewide drop.
- AI citation rate across ChatGPT, Perplexity, Gemini on programmatic queries remains effectively zero after 6 months despite template iteration.
- AI Overview appearance frequency on cluster-relevant queries does not increase measurably over the first 9 months.
- The maintenance commitment (twice-yearly regional refresh, quarterly product data validation) cannot be sustained for two consecutive cycles.

Each criterion forces a real decision: continue, scope down, or sunset gracefully.

## Phase 2 Expansion Gates

If Phase 1 (1,200 pages) hits the following targets at month 6:

- 85%+ indexation maintained
- Aggregate traffic from programmatic pages ≥ 15% of total organic traffic
- Programmatic pages contributing measurably to conversion (per attribution model)

...then Phase 2 expansion authorized: target additional 2,000 pages through quarters 3-4, applying same quality floor.

If targets are not hit: pause expansion, focus on improving Phase 1 performance via additional editorial investment and pruning.

## Notes

- The 12,000-product × 80-region math gives a theoretical 960,000 pages. Phase 1 deliberately ships 0.12% of that. The remaining 99.88% are NOT the goal; the program targets the high-quality, high-relevance subset only.
- AI-generated content is used for early drafts of the regional editorial sections, but every section is human-reviewed and edited before publish. AI is the brush, not the painter.
- Cross-linking from programmatic pages to traditional editorial content (long-form gear guides) supports both surfaces.
- The brand's content strategy includes traditional editorial gear guides as the authoritative pillars; programmatic pages are the spokes. Programmatic SEO without editorial pillars is fragile.
- Engineering, content, and SEO teams are joint owners of this program. No single team can ship it; no single team can maintain it.
