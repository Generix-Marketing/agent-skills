# 20-Check Quick Scan

The full audit as a copy-pasteable punch list. Run in under 5 minutes per check. Each item tells you exactly how to check it. Items marked [DEV] need developer involvement to fix.

## Tier 1: Critical Blockers

These prevent citation regardless of content quality. Fix first.

### 1. Run "Describe [brand] in one paragraph" on Claude, ChatGPT, and Perplexity

Most important check in the audit and the one most practitioners skip. Read each output. Compare to how the brand describes itself. The gap is the AEO problem statement.

**Failing means:** You are optimizing without knowing what you are optimizing against.

### 2. AI crawlers not blocked in robots.txt, verified in server logs

Go to `[domain]/robots.txt`. Search for: GPTBot, PerplexityBot, anthropic-ai, Bytespider, CCBot, Meta-ExternalAgent, Applebot-Extended, Google-Extended. None should be followed by `Disallow: /`. Then verify in server logs or Cloudflare that these bots are actually visiting.

**Failing means:** Content cannot be indexed or cited regardless of how good it is.

### 3. Key content renders without JavaScript [DEV]

Open a core content page in Chrome. DevTools → Settings → Disable JavaScript. Reload. Is the main body content (headings, paragraphs, actual information) still visible without JS executing?

**Failing means:** AI crawlers see an empty shell. The most underdiagnosed AEO blocker because it is invisible to human visitors.

### 4. Search the brand on Perplexity, check which domains appear as citations

Run 5-10 core category queries on Perplexity. Note which domains appear as cited sources. Is the brand among them? Which competitor domains appear most frequently?

**Failing means:** You now know exactly which sites LLMs trust in this category and whether yours is one. This is the citation gap map.

### 5. Check if the brand's content appears in Common Crawl

Go to `commoncrawl.org` and use the index search to check whether the brand's domain appears in recent crawl data.

**Failing means:** Domain is likely absent from LLM training data. No amount of on-page optimization closes the gap without increasing crawl accessibility.

## Tier 2: Citation Rate Drivers

These determine whether a site gets cited as a source, not just mentioned by brand name.

### 6. Brand has at least one named framework or methodology

Does the brand own a specific named concept (framework, model, methodology) referenced by name? Not a product feature, a named way of thinking about a problem.

**Failing means:** Highest-leverage content investment available is missing. LLMs disproportionately cite named frameworks because they are unambiguous reference points.

### 7. Quotable paragraph audit on key pages

Read the first 200-300 words of each key page. Count sentences that could be extracted and cited verbatim without surrounding context.

**Failing means:** Page is written for human readers with context, not for LLMs needing self-contained claims. Most brand content fails this badly.

### 8. Original data published and confirmed cited by others

Does the brand have at least one piece of content presenting unique data? Is that data being cited by third-party publications and practitioners?

**Failing means:** Brand cannot become the default reference in LLM responses. Citation rate for original data is 5-10x higher than for content that aggregates others' research.

### 9. Brand mentioned in Wikipedia articles about the category, not just having its own page

Search Wikipedia for the category and adjacent categories. Is the brand mentioned within those articles?

**Failing means:** Missing one of the heaviest-weighted entity signals available. Being referenced within a Wikipedia article about your category is stronger than having your own page.

### 10. Google AI Overviews appear for core category queries

Search 5-10 primary category queries in Google. Does an AI Overview appear? Is the brand referenced? Which competitors appear?

**Failing means:** Brand likely struggling across all AI search platforms. AI Overviews are a fast, accessible proxy for broader AEO health.

### 11. FAQ content sourced from real user queries, not internal guesses

Compare FAQ questions on key pages against People Also Ask on Google for the same topic. Do they match? Or are FAQs written from the brand's perspective?

**Failing means:** FAQ content is nearly invisible to LLMs because the language does not match real query patterns.

### 12. Measure citation rate, not just mention rate

Run 20 queries across ChatGPT, Perplexity, Claude, Gemini. For each response mentioning the brand, check if the URL is cited. Calculate: responses citing URL / responses mentioning brand.

**Failing means:** LLMs know the brand exists but do not consider its content authoritative. Mention rate feels good; citation rate drives traffic and trust.

## Tier 3: Entity Authority

These build the underlying entity model LLMs use to understand and frame the brand. Slower to change but foundational.

### 13. Entity consistency audit across all external profiles

Compare brand descriptions across: Organization schema on homepage, LinkedIn company page, Crunchbase, G2/Capterra, Wikipedia, the About page. Are they describing the same company in the same terms?

**Failing means:** Conflicting descriptions create LLM uncertainty. The LLM averages into a muddier, less confident description.

### 14. Organization schema sameAs links to every official profile

Inspect Organization schema on the homepage. Does `sameAs` include LinkedIn, Crunchbase, Wikipedia (if applicable), official social profiles, industry directories?

**Failing means:** LLMs cannot fully consolidate the entity model. Every official profile not listed is a missed authority signal.

### 15. Author Person schema linked from content and connected to verifiable external profiles

Click an author byline. Does it link to a bio page with Person schema, including `sameAs` links to LinkedIn and published work? Same Person entity used consistently?

**Failing means:** The connection between content and a credible human identity is missing. Most brands implement this partially or inconsistently.

### 16. dateModified in Article schema actually updates when content is edited

Check `dateModified` on Article schema (View Source or Rich Results Test). Does it match the actual edit date?

**Failing means:** Stale dateModified tells LLMs the content is old even if updated last week. Common CMS implementation error.

### 17. Internal linking creates topical clusters around highest-priority pages

Identify the 5 pages most important for AEO. How many internal links point to each? Are linking pages topically related? Or is the key page an orphan?

**Failing means:** Site internal structure does not signal which pages are authoritative. Isolated pages have weaker citation signals even if content is excellent.

### 18. Heading structure mirrors how users actually ask questions

Extract H2/H3 from a key page. Do they read like user questions or PAA-style phrases? Or like internal section labels ("Our Approach," "Key Considerations")?

**Failing means:** LLMs cannot match page sections to query intent effectively.

### 19. Content structure passes the inverted pyramid test

Show only the first paragraph of a key page to someone unfamiliar with the brand. Can they answer what the page is about?

**Failing means:** Page builds context before reaching the point. LLMs prioritize answer-first content during extraction.

### 20. Brand position in LLM responses tracked over time, not just whether it appears

Record position monthly: first named, named alongside others, named in a list, named late, named only on direct queries.

**Failing means:** Measurement is missing the most sensitive signal of AEO momentum.

## How to Use This Scan

- **First time on a new client:** run all 20 in order. Document results. Pick the top 3-5 critical fixes.
- **Quarterly check-in:** re-run all 20. Compare to baseline. Surface any regressions.
- **Triage on a specific complaint:** start with the relevant tier. If "we're not in ChatGPT," start at Tier 1 and work down. If "we get mentioned but no traffic," start at Tier 2 #12 (citation rate).

Estimated time: 5-10 minutes per check at quick-scan depth. 4-8 hours for a full quick scan.

For deeper investigation per item, see the main SKILL.md and the worked example.
