---
name: ai-crawler-access
description: Use this skill when the user wants to audit or configure AI crawler access to their site, asks about robots.txt for AI bots, wants to allow or block GPTBot/PerplexityBot/anthropic-ai/etc., asks about Common Crawl, wants to verify AI bots are actually crawling, asks about llms.txt, or asks why their content is not being crawled by AI engines. Triggers include "AI crawlers," "GPTBot," "PerplexityBot," "anthropic-ai," "Google-Extended," "robots.txt for AI," "Common Crawl," "llms.txt," "AI bot access," "block AI crawlers," "allow AI crawlers," "AI search not finding our site." This skill produces the infrastructure-level configuration that makes a site readable by AI engines. Pairs with technical-audit (general crawlability), ai-search-audit (Tier 1 critical blockers), and aeo-foundations (the retrievability layer).
---

# AI Crawler Access

This skill produces the infrastructure configuration that determines whether AI engines can read your content at all. The output is a properly configured `robots.txt`, server-log verification that AI crawlers are actually visiting, a JavaScript-rendering check, a Common Crawl presence check, and (if relevant) an `llms.txt` decision.

This is Layer 1 from `aeo-foundations`: retrievability. Without it, every other AEO investment is gated. With it, the rest of the AEO stack can do its work.

## When to Run This Skill

Run it when:

- The `ai-search-audit` Tier 1 found gaps in robots.txt (Check #2), JavaScript rendering (#3), or Common Crawl presence (#5)
- The user is launching a new site or relaunching an existing one
- The user has noticed AI engines do not have current information about the brand (potential crawler block)
- The user is concerned about AI training on their content and wants to make an informed decision about what to allow
- The user asks about llms.txt specifically

Skip it when:

- The user wants traditional SEO crawlability work (use `technical-audit`)
- The user wants entity work, not infrastructure (use `entity-presence`)
- The site is already verified accessible to all major AI crawlers and the user is asking for something else

## The Decision: What to Allow

Before configuring access, the brand should make a deliberate decision about what to allow. The options:

1. **Allow all major AI crawlers.** Maximum visibility in AI search. Recommended for most marketing-driven brands.
2. **Allow live-retrieval crawlers, block training-data crawlers.** Allows brands to appear in real-time AI responses (Perplexity, ChatGPT browsing) without their content being used for model training. Defensible for publishers and content businesses where training-data use is a revenue concern.
3. **Block most AI crawlers.** Maximum content control, near-zero AI search presence. Defensible only for brands that have no interest in AI visibility and significant concerns about content use.

The choice is the brand's. Most marketing-driven brands choose option 1. Publishers, paywall businesses, and brands with proprietary training content sometimes choose option 2. Option 3 is rare and usually a temporary stance during a legal review.

This skill defaults to option 1 with notes on how to adapt the configuration for options 2 and 3.

## The 2026 AI Crawler Inventory

The major AI crawlers to allow (or knowingly block). User-agent strings are what robots.txt matches on.

| Crawler | User-Agent | Operated by | Purpose |
|---|---|---|---|
| GPTBot | `GPTBot` | OpenAI | Training data for GPT models |
| ChatGPT-User | `ChatGPT-User` | OpenAI | Live retrieval during ChatGPT browsing |
| OAI-SearchBot | `OAI-SearchBot` | OpenAI | ChatGPT Search live retrieval |
| PerplexityBot | `PerplexityBot` | Perplexity | Live retrieval and indexing for Perplexity |
| Perplexity-User | `Perplexity-User` | Perplexity | Per-user search retrieval |
| anthropic-ai | `anthropic-ai` | Anthropic | Training data for Claude |
| ClaudeBot | `ClaudeBot` | Anthropic | Newer Anthropic crawler |
| Claude-Web | `Claude-Web` | Anthropic | Web browsing for Claude |
| Google-Extended | `Google-Extended` | Google | Training data for Gemini; separate from Googlebot for traditional search |
| Bytespider | `Bytespider` | ByteDance | Training data for ByteDance models |
| CCBot | `CCBot` | Common Crawl | Open web crawl; primary training data source for most LLMs |
| Meta-ExternalAgent | `Meta-ExternalAgent` | Meta | Training data for Meta AI / Llama |
| Meta-ExternalFetcher | `Meta-ExternalFetcher` | Meta | Live retrieval |
| Applebot | `Applebot` | Apple | Apple search and Siri (traditional) |
| Applebot-Extended | `Applebot-Extended` | Apple | Apple AI training data |
| Amazonbot | `Amazonbot` | Amazon | Amazon search and AI |
| Diffbot | `Diffbot` | Diffbot | Used by various AI products via knowledge graph data |
| YouBot | `YouBot` | You.com | You.com search and AI |
| cohere-ai | `cohere-ai` | Cohere | Training data for Cohere models |
| AI2Bot | `AI2Bot` | Allen Institute for AI | Training and research crawls |
| DuckAssistBot | `DuckAssistBot` | DuckDuckGo | DuckAssist AI summaries |
| FacebookBot | `FacebookBot` | Meta | Facebook content / link previews; relevant for Meta AI surfaces |
| LinkedInBot | `LinkedInBot` | LinkedIn (Microsoft) | LinkedIn content rendering; relevant given Microsoft-OpenAI partnership |
| Omgili Bot | `omgili` | Webz.io | Aggregated web data feed used by various AI products |
| Timpi | `Timpibot` | Timpi | Privacy-focused search index |

Verify this list quarterly. Crawler user agents change and new entrants appear regularly. Cross-reference against AEO tracking platforms' published bot lists when re-auditing; the inventory grows.

## Default robots.txt (Allow Major AI Crawlers)

Use this as a template. Place at `[domain]/robots.txt`. Order matters: specific allow rules come before broader patterns.

```
# AI crawlers, explicitly allowed
User-agent: GPTBot
Allow: /

User-agent: ChatGPT-User
Allow: /

User-agent: OAI-SearchBot
Allow: /

User-agent: PerplexityBot
Allow: /

User-agent: Perplexity-User
Allow: /

User-agent: anthropic-ai
Allow: /

User-agent: ClaudeBot
Allow: /

User-agent: Claude-Web
Allow: /

User-agent: Google-Extended
Allow: /

User-agent: Bytespider
Allow: /

User-agent: CCBot
Allow: /

User-agent: Meta-ExternalAgent
Allow: /

User-agent: Meta-ExternalFetcher
Allow: /

User-agent: Applebot
Allow: /

User-agent: Applebot-Extended
Allow: /

User-agent: Amazonbot
Allow: /

User-agent: Diffbot
Allow: /

User-agent: YouBot
Allow: /

User-agent: cohere-ai
Allow: /

User-agent: AI2Bot
Allow: /

User-agent: DuckAssistBot
Allow: /

User-agent: FacebookBot
Allow: /

User-agent: LinkedInBot
Allow: /

User-agent: omgili
Allow: /

User-agent: Timpibot
Allow: /

# Traditional search engines
User-agent: Googlebot
Allow: /

User-agent: Bingbot
Allow: /

# Default rules for all other crawlers
User-agent: *
Allow: /
Disallow: /wp-admin/
Disallow: /private/
Disallow: /staging/

# Sitemap
Sitemap: https://www.example.com/sitemap.xml
```

The pattern: explicit allow rules for the named crawlers, then a wildcard rule that handles all other bots and applies any site-wide directory restrictions.

## Variant: Allow Live-Retrieval, Block Training

For brands that want AI presence without contributing to training data.

```
# Live retrieval crawlers, allowed
User-agent: ChatGPT-User
Allow: /

User-agent: OAI-SearchBot
Allow: /

User-agent: Perplexity-User
Allow: /

User-agent: PerplexityBot
Allow: /

User-agent: Claude-Web
Allow: /

User-agent: Meta-ExternalFetcher
Allow: /

# Training-data crawlers, blocked
User-agent: GPTBot
Disallow: /

User-agent: anthropic-ai
Disallow: /

User-agent: ClaudeBot
Disallow: /

User-agent: Google-Extended
Disallow: /

User-agent: Bytespider
Disallow: /

User-agent: CCBot
Disallow: /

User-agent: Meta-ExternalAgent
Disallow: /

User-agent: Applebot-Extended
Disallow: /

User-agent: cohere-ai
Disallow: /

# Traditional search engines
User-agent: Googlebot
Allow: /

User-agent: Bingbot
Allow: /

User-agent: *
Allow: /
Disallow: /wp-admin/

Sitemap: https://www.example.com/sitemap.xml
```

Caveat: the line between "training crawler" and "live retrieval crawler" is not always clean. Some crawlers serve both purposes. The categorization above reflects 2026 best understanding and may shift.

## Variant: Block All AI Crawlers

```
User-agent: GPTBot
Disallow: /

User-agent: ChatGPT-User
Disallow: /

User-agent: OAI-SearchBot
Disallow: /

User-agent: PerplexityBot
Disallow: /

User-agent: Perplexity-User
Disallow: /

User-agent: anthropic-ai
Disallow: /

User-agent: ClaudeBot
Disallow: /

User-agent: Claude-Web
Disallow: /

User-agent: Google-Extended
Disallow: /

User-agent: Bytespider
Disallow: /

User-agent: CCBot
Disallow: /

User-agent: Meta-ExternalAgent
Disallow: /

User-agent: Meta-ExternalFetcher
Disallow: /

User-agent: Applebot-Extended
Disallow: /

User-agent: Amazonbot
Disallow: /

User-agent: Diffbot
Disallow: /

User-agent: YouBot
Disallow: /

User-agent: cohere-ai
Disallow: /

User-agent: Googlebot
Allow: /

User-agent: Bingbot
Allow: /

User-agent: *
Allow: /
Disallow: /wp-admin/

Sitemap: https://www.example.com/sitemap.xml
```

Note: blocking via robots.txt is voluntary. Some crawlers honor it; others do not. For hard blocks, robots.txt is not sufficient. CDN-level blocking (Cloudflare bot management rules) and server-side user-agent filtering are stronger enforcement mechanisms. None of these are perfect; determined operators can spoof user agents.

## Step 2: Verify in Server Logs

robots.txt compliance is not guaranteed. The only way to know what is actually happening is to look at server logs.

How to check:

1. Pull access logs for the last 30 days (Cloudflare analytics, Apache/Nginx access logs, or hosted log analyzer).
2. Filter by user agent. Search for: GPTBot, PerplexityBot, anthropic-ai, ClaudeBot, Google-Extended, CCBot, Meta-ExternalAgent, Applebot-Extended.
3. For each crawler:
   - Has it visited at all in the last 30 days?
   - How many requests did it make?
   - Which pages did it request most?
   - Were any requests blocked at the firewall or returned 403?

Expected baseline for an established site with the allow-all configuration:

- GPTBot: 50-500 requests per month minimum
- PerplexityBot: variable; high if the site is in active Perplexity citation set
- CCBot: cyclical; major Common Crawl runs happen every 1-2 months, with spikes during those windows
- Google-Extended: low volume; Google tends to use cached Googlebot data
- anthropic-ai / ClaudeBot: variable

If a crawler is allowed in robots.txt but never visits in logs, possible causes:

- The site is new and has not been discovered yet (wait 2-3 months).
- The crawler is rate-limiting based on site authority (lower-authority sites get fewer visits).
- A CDN or firewall is blocking before the request reaches the server (check Cloudflare bot management settings, Imperva, Akamai, etc.).
- The crawler has been deprecated or renamed (verify against the current user agent list).

If a crawler is disallowed in robots.txt but still visits in logs, that crawler does not honor robots.txt. Consider CDN-level blocking if the block is important.

## Step 3: JavaScript Rendering Check

Even with full crawler access, content delivered via client-side JavaScript may be invisible to AI crawlers that do not execute JS.

How to check:

1. Open a content page in Chrome.
2. DevTools → Settings → Preferences → "Disable JavaScript".
3. Reload.
4. Is the main body content visible? Headings, paragraphs, real information?
5. Repeat for 5-10 representative pages across templates (homepage, service page, blog post, location landing, etc.).

Also useful: `curl -s [URL] | wc -c` to see the byte count of the initial HTML. Compare to the byte count after JavaScript executes (use DevTools Network tab). A large discrepancy indicates JavaScript-dependent content.

How to fix:

- **WordPress, Drupal, traditional CMS:** typically server-side rendered by default. Confirm theme is not lazy-loading content via JS.
- **React, Vue, Next.js, Nuxt:** implement server-side rendering (SSR) or static site generation (SSG). Next.js with SSR/SSG, Nuxt with SSR, SvelteKit with SSR, Astro with SSG. This is a developer-level change with architectural implications.
- **JavaScript SPA without SSR:** the hardest case. Refactor to a rendering mode that delivers content in initial HTML, or implement dynamic rendering for bot user agents (controversial; Google has historically discouraged this, though it remains a viable technique for AI crawler compatibility).

Prioritize content pages (blog, resources, product descriptions, location landers) over app or dashboard pages. AI crawlers care about content, not authenticated app screens.

## Step 4: Common Crawl Presence

Common Crawl is one of the largest open-source web crawl datasets and a primary training data source for most major LLMs. Absence from Common Crawl correlates strongly with absence from LLM training data.

How to check:

1. Go to `index.commoncrawl.org/collinfo.json` to find recent crawl indices.
2. Use the Common Crawl Index Server to query a specific domain: `http://index.commoncrawl.org/CC-MAIN-[CRAWL-ID]-index?url=[domain]&output=json` (replace `[CRAWL-ID]` with a recent index ID, `[domain]` with your domain).
3. Check the most recent 3-4 crawl indices.
4. Document: how many pages from the domain appear per crawl? Which pages specifically?

Alternative: third-party tools like CDX Toolkit or various Common Crawl search interfaces can check domain presence without direct API queries.

If the domain is absent:

- Most common cause: crawler-level block (CCBot in robots.txt or firewall).
- Second most common: site is too JavaScript-dependent.
- Third: site is too new (give it 2-3 Common Crawl cycles after fixing the above).
- Fourth: site is too small or has too few inbound links to attract crawl.

Fixes: ensure CCBot is explicitly allowed, fix JavaScript rendering, ensure the XML sitemap is valid and submitted in Search Console (Common Crawl uses signals from search engines to prioritize what to crawl), improve general site authority.

## Step 5: Mobile Parity, HTTPS, and Redirect Hygiene

Three smaller infrastructure checks that are legitimate AEO blockers, often missed because they overlap with traditional SEO checks and get assumed-handled.

### Mobile content parity

AI engines retrieve from the URL they crawl, which is often the mobile rendering (most AI crawlers identify as mobile user agents). If the mobile version of a page hides or alters key content, AI systems may miss important information that exists on the desktop version.

How to check:

- Open a key content page in Chrome.
- DevTools, toggle device toolbar (mobile view at 375px width).
- Compare the rendered content to desktop.
- Specifically check: hero content visible, body content not truncated, FAQ sections expanded or collapsed (collapsed is fine for users but the content must be in the initial HTML), pricing tables present, structured data identical.
- Use Chrome's "Lighthouse" report or Google's Mobile-Friendly Test for an automated check.

Failure mode to watch for: pages using a "mobile-first" strip-down where critical schema, FAQ, or comparison content is rendered only on desktop. Common in older responsive themes and certain CMS implementations.

### HTTPS and clean rendering

- The entire site must be on HTTPS. Any HTTP URL returning 200 is a flag.
- No mixed content (HTTPS pages loading HTTP assets). Browser console flags these.
- SSL certificate must be current; expired certs trigger crawler blocks.
- HSTS enabled is a small additional trust signal.

### Redirect chains and server error hygiene

- No redirect chains longer than one hop on URLs AI crawlers visit. A → B is fine, A → B → C is not. AI crawlers may stop following after the first hop.
- No 4xx or 5xx errors on URLs that should be live. AI crawlers de-prioritize sites with elevated error rates.
- Cross-reference with the traditional SEO `technical-audit` work; AEO crawler access depends on the same hygiene.

These are not separate fix sprints; they are checklist items to verify during the AEO audit even though they live primarily in the SEO domain.

## Step 6: llms.txt Decision

`llms.txt` is a proposed text file (analogous to robots.txt) that provides AI-specific instructions or content summaries. The proposal has gained some adoption since 2024 but impact remains limited in 2026.

Published research scores llms.txt impact low (around 2 out of 10 in citation factor analyses). The reason: most major AI engines do not read llms.txt, do not honor it as a directive, or do not weight it meaningfully.

Recommendation: deploy llms.txt as a low-priority hygiene item AFTER the higher-impact AEO foundations are in place. Do not lead with it. Do not promise meaningful impact from it alone.

Minimal llms.txt format:

```
# Brand Name

> One-paragraph description of the brand and what content this site provides.

## Core Resources
- [Main Service Page](https://www.example.com/services/): Description
- [Pricing](https://www.example.com/pricing/): Description
- [About](https://www.example.com/about/): Description

## Documentation
- [Guide](https://www.example.com/guide/): Description

## Optional
- [Blog](https://www.example.com/blog/): Description
```

Place at `[domain]/llms.txt`. There is no enforced format; the above mirrors community conventions in 2026.

## Output Format

```markdown
# AI Crawler Access Audit: [Brand]

**Date:** [YYYY-MM-DD]
**Auditor:** [Agent or user]
**Strategy:** [Allow all / Allow live-retrieval / Block all]

## robots.txt Status

| Crawler | Allowed in robots.txt | Visiting per server logs | Status |
|---|---|---|---|
| GPTBot | Yes/No | Yes/No (N requests/30d) | Pass/Fix |
| PerplexityBot | ... | ... | ... |
| (all crawlers in the inventory) |

## JavaScript Rendering

| Page sample | Renders without JS | Notes |
|---|---|---|
| Homepage | Pass/Fail | [What is missing if Fail] |
| Service page | ... | ... |
| (representative pages across templates) |

## Common Crawl Presence

- Most recent crawl indexed: [Index ID, date]
- Pages from domain in that crawl: [N]
- Pages from domain across last 3 crawls: [Trend]
- Status: [Healthy / Underrepresented / Absent]

## llms.txt

- Currently deployed: [Yes/No]
- Recommendation: [Deploy / Defer / Skip]
- If deploy: [Specific summary and resource list]

## Top Fixes

1. [Specific fix with effort estimate and owner]
2. ...

## Recommended Maintenance

- **Quarterly:** Re-run the full audit. New AI crawlers emerge; user-agent strings change.
- **Monthly:** Spot-check server logs for crawler visit cadence.
- **Triggered:** Re-audit after CMS changes, theme updates, CDN reconfiguration.
```

## When the User Pushes Back

**"I do not want AI to train on my content."** Use the "Allow live-retrieval, block training" variant. The brand can still appear in AI responses via live retrieval (Perplexity, ChatGPT browsing, Google AI Overviews) without contributing to training data. There is no perfect enforcement; some crawlers do not honor robots.txt. For stronger enforcement, layer CDN-level bot management on top.

**"Won't allowing all these crawlers slow my site down?"** Negligibly. Most AI crawlers are well-behaved and respect rate-limiting headers. The aggregate AI crawler traffic on a typical SMB site is a few thousand requests per month, well within any modern hosting environment's capacity.

**"Should I deploy llms.txt?"** As a low-priority item, yes. As a primary AEO investment, no. The higher-impact work is in content extractability, entity authority, and citation tracking.

## Common Pitfalls

- **Wildcard Disallow rules that catch AI crawlers.** A `User-agent: * / Disallow: /` rule followed by selective Allow rules for Googlebot can inadvertently block every AI crawler. Audit explicitly.
- **Allowing in robots.txt but blocking at the CDN.** Cloudflare's default bot management may block AI crawlers despite robots.txt allowing them. Verify CDN settings.
- **Assuming AI crawlers honor robots.txt.** Most do; some do not. For hard blocks, use server-side or CDN-level enforcement.
- **Skipping the JavaScript rendering check.** The most underdiagnosed AEO blocker. Test deliberately.
- **Treating Common Crawl absence as something the brand directly controls.** It is not. Common Crawl is one of the largest open crawls but it makes its own decisions about what to crawl. Brands can improve their odds (allow CCBot, fix rendering, improve SEO authority) but cannot guarantee inclusion.
- **Deploying llms.txt and considering AEO work complete.** llms.txt is a hygiene checkbox, not a strategy.

## References

- `references/server-log-verification.md`: Specific commands and tools for filtering server logs for AI crawler activity across common hosting environments (Apache, Nginx, Cloudflare, AWS).
