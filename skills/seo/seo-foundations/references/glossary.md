# SEO Glossary

Quotable definitions for use in audits, reports, and content. Pull what you need.

## Crawl, Index, Rank

**Crawl.** The process by which a search engine's bot (Googlebot, Bingbot) discovers a URL and reads its content. Crawling happens via links, sitemaps, and direct submissions in Search Console.

**Crawl budget.** The number of URLs a search engine is willing to crawl on a site within a given window. Mostly a concern for large sites (10,000+ URLs). On small sites, crawl budget is rarely the bottleneck.

**Index.** The search engine's database of URLs eligible to appear in search results. A page can be crawled and not indexed. To verify indexation, search `site:example.com/page-url` in Google.

**Indexation status.** Whether a specific URL is in the index. Reported in Google Search Console under "Pages."

**Canonical.** The "preferred" version of a URL when duplicates exist. Set via the `rel="canonical"` link tag in the page head. Tells the search engine "treat this URL as the master copy and consolidate signals here."

**Noindex.** A directive (`<meta name="robots" content="noindex">` or `X-Robots-Tag` HTTP header) that tells search engines not to include a page in the index even if they crawl it.

**robots.txt.** A text file at the root of a domain (`example.com/robots.txt`) that tells crawlers which URLs they may or may not fetch. It controls crawling, not indexing, a noindex tag controls indexing.

**Sitemap.** An XML file listing URLs the site owner wants search engines to crawl. Submitted in Search Console. Helps with discovery, especially on large sites or sites with weak internal linking.

## Ranking and Relevance

**Ranking signal.** Any input a search engine uses to decide what to show for a query. Google has stated it uses hundreds of signals, weighted differently by query type.

**Intent.** What the user actually wants when they search. Usually grouped into informational ("how does SEO work"), navigational ("generix marketing"), commercial investigation ("best SEO agency"), and transactional ("hire SEO agency"). Intent match is the single biggest ranking factor most teams underweight.

**Topical authority.** The depth and breadth of content a site has on a given topic cluster. A site with 50 related articles on roofing will outrank a site with 3 in most cases, all else equal.

**E-E-A-T.** Experience, Expertise, Authoritativeness, Trustworthiness. Google's framework for judging content quality, especially in YMYL topics. Not a direct ranking factor, but a lens its algorithms approximate.

**YMYL.** Your Money or Your Life. Topics where bad information can harm the user (health, finance, legal, safety). Google holds these to a higher quality bar.

**Helpful Content System.** Google's classifier that rewards content written for humans first, demonstrating experience or expertise, and satisfying searcher intent fully. Penalizes sites that publish at scale without meeting this bar.

**Query.** What the user types or speaks into the search bar.

**Keyword.** A query (or a representative version of a query) the site is trying to rank for. Modern SEO targets topics and intents more than exact-match keywords.

## Links and Authority

**Internal linking.** Links between pages on the same site. The cheapest, most underused lever in SEO. Distributes authority, signals importance, and helps Google understand site structure.

**Backlink.** A link from another site to yours. Still a meaningful ranking signal, especially for competitive terms. Quality matters more than quantity.

**Anchor text.** The visible, clickable text of a link. Search engines use anchor text as a signal of what the linked page is about.

**Follow / nofollow.** Attributes on a link (`rel="nofollow"`, `rel="ugc"`, `rel="sponsored"`) that tell search engines how to treat the link for ranking purposes. A nofollow link passes less or no ranking weight.

**Link equity.** The ranking weight a backlink passes to the target page. Sometimes called "link juice" in older writing.

**Domain authority.** A third-party metric (Moz's term; Ahrefs uses "Domain Rating") estimating a domain's overall link strength. Not a Google metric. Useful as a directional signal, not a hard truth.

## SERPs and Click Behavior

**SERP.** Search Engine Results Page. Everything the user sees when they search.

**SERP features.** Elements on the SERP that are not standard blue links. Featured snippets, People Also Ask (PAA), knowledge panels, image packs, video carousels, local packs, AI Overviews, shopping results. They change what "ranking #1" actually means.

**Featured snippet.** A highlighted answer block at the top of the SERP, drawn from a single page. Sometimes called "position zero." Strong source of clicks for informational queries when the answer leaves the user wanting more.

**AI Overview.** Google's AI-generated summary at the top of some SERPs. Cites sources but often satisfies the query without a click. The emergence of these is driving the rise of AEO (Answer Engine Optimization).

**CTR.** Click-Through Rate. The percentage of impressions that result in a click. Measured in Search Console.

**Impression.** A single instance of a URL appearing on a SERP the user viewed.

## Technical SEO

**Core Web Vitals.** Google's user experience metrics: Largest Contentful Paint (LCP, loading), Interaction to Next Paint (INP, responsiveness), Cumulative Layout Shift (CLS, visual stability). A weak ranking signal but a strong user experience signal.

**Mobile-first indexing.** Google primarily uses the mobile version of a site for indexing and ranking. Active since 2020. If your mobile site is broken or stripped down, your rankings suffer.

**Schema markup.** Structured data added to a page using the Schema.org vocabulary (usually as JSON-LD) that tells search engines what entities and properties are on the page. Eligible types include Article, Product, LocalBusiness, FAQPage, HowTo, and many more.

**Redirect.** An HTTP instruction that sends a request from one URL to another. 301 (permanent) passes most ranking signals; 302 (temporary) passes fewer. Avoid redirect chains (A → B → C); collapse to A → C.

**Status code.** The HTTP response a server sends. 200 (OK), 301 (permanent redirect), 302 (temporary redirect), 404 (not found), 410 (gone), 500 (server error), 503 (service unavailable). Each has SEO implications.

## Common Acronyms

- **SEO:** Search Engine Optimization
- **AEO:** Answer Engine Optimization (optimizing for AI-generated answers and citations)
- **GEO:** Generative Engine Optimization (same idea as AEO, different acronym preferred by some practitioners)
- **GSC:** Google Search Console
- **GA4:** Google Analytics 4
- **GBP:** Google Business Profile (formerly Google My Business)
- **SERP:** Search Engine Results Page
- **CTR:** Click-Through Rate
- **CWV:** Core Web Vitals
- **PAA:** People Also Ask
- **UGC:** User Generated Content
- **YMYL:** Your Money or Your Life
- **E-E-A-T:** Experience, Expertise, Authoritativeness, Trustworthiness
