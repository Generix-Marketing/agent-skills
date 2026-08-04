# Crawl Setup

How to configure a site crawl that returns the data the audit actually needs. Defaults on every crawler are tuned for a generic case. These notes cover the changes worth making.

## Screaming Frog SEO Spider

Industry standard. Free tier crawls up to 500 URLs. Paid license is reasonable for an agency.

### Configuration changes from defaults

- **Configuration → Spider → Crawl:** Enable "Crawl All Subdomains" if the site uses them. Enable "Follow Internal nofollow."
- **Configuration → Spider → Extraction:** Enable "Store HTML" if you want to extract custom fields later. Enable "Structured Data" extraction so JSON-LD blocks come through.
- **Configuration → Spider → Rendering:** Switch to "JavaScript" rendering if the site is client-rendered (React, Vue, Next.js client-side, etc.). Leave on "Text Only" for static / server-rendered sites. JS rendering is roughly 10x slower, so use only when needed.
- **Configuration → robots.txt:** Set to "Respect robots.txt" unless you specifically want to crawl past it for diagnostic reasons.
- **Configuration → User-Agent:** Default is Screaming Frog. Some sites block this. Switch to Googlebot Smartphone for the most realistic crawl, but tell the user you are doing it, some hosts will rate-limit or block.
- **Configuration → Speed:** Default is 5 threads. For most sites this is fine. For sites on shared hosting, drop to 2 threads to avoid getting throttled.

### Connect to GSC and PageSpeed Insights

- **Configuration → API Access → Google Search Console:** Connect the property. Lets the crawler pull impressions, clicks, and CWV data per URL into the same export.
- **Configuration → API Access → PageSpeed Insights:** Connect. Lets the crawler pull lab CWV data per URL.

This is the single highest-value setup step. The combined export means you can see "URL X has 12,000 impressions, fails LCP, and is on page 2 of search results" in one row.

### What to export

After the crawl finishes:

- **Bulk Export → Response Codes → Client Error (4xx)** and **Server Error (5xx)**, the URLs that need attention.
- **Bulk Export → Response Codes → Redirection (3xx)**, all redirects, then identify chains in a spreadsheet.
- **Reports → Canonicals → Canonical Errors**, broken or self-conflicting canonicals.
- **Reports → Pagination**, paginated archive issues.
- **Bulk Export → Directives → Noindex**, pages that are intentionally excluded (or accidentally).
- **Internal → HTML (export full)**, the master URL list for everything else.
- **Sitemaps → All**, what is in the XML sitemap, what is missing, what is included but shouldn't be.

## Sitebulb

Strong alternative to Screaming Frog, with better visualizations and a more opinionated "hints" engine. Paid only.

- Default crawl settings are reasonable. Turn on "JavaScript Crawler" if needed.
- The "Hints" feature surfaces issues automatically; cross-check against your own twelve-area framework rather than treating it as a complete audit.
- Export the URL List and the Issues list for the report.

## Free Crawl Alternatives

When the user does not have a paid crawler:

### Screaming Frog Free Tier

- Up to 500 URLs. Fine for small sites or for a focused subsection of a large site.
- Most config options are disabled in free mode; you get a basic crawl with default settings.

### Python Crawl (DIY)

For sites under ~2,000 URLs, a Python script can produce enough data for a useful audit. The agent can write and run this in the workspace shell. Minimum useful columns:

- URL
- Status code
- Final URL after redirects
- Title
- Meta description
- H1 (first occurrence)
- Canonical URL
- Meta robots
- Number of internal links on the page
- Word count
- Response time

This is much faster than people expect, a few hundred URLs crawl in a few minutes. Pair with the GSC MCP for indexation and performance data.

### Online Free Crawlers

Useful for spot checks, not for a full audit. They typically cap at 100-300 URLs and miss most of what the framework asks for.

## Crawl Hygiene

A few principles regardless of the tool:

- **Always crawl from the canonical hostname.** Crawl `https://www.example.com` if that is what the site uses, not `https://example.com`, even if both work.
- **Crawl politely.** Set throttling so you do not knock the site over. If you are unsure of the host's tolerance, start at 2 requests per second.
- **Save the export with the date in the filename.** `audit-crawl-example-com-2026-05-23.csv`. Future-you will thank present-you.
- **Crawl during a low-traffic window if possible.** Some hosts auto-scale based on traffic; crawling during a peak can degrade the site for real users.
