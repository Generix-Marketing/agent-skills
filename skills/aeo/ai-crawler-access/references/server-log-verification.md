# Server Log Verification

Specific commands and tools for filtering server logs for AI crawler activity. The check that confirms what is theoretical (robots.txt) is also actual (crawlers visiting).

Use whichever environment matches the client's hosting. Multiple environments often coexist (e.g., Cloudflare in front of an Apache origin); check both layers.

## The Crawler User-Agent Strings to Search For

Use these as search patterns. Some appear as substrings of longer user agent strings.

```
GPTBot
ChatGPT-User
OAI-SearchBot
PerplexityBot
Perplexity-User
anthropic-ai
ClaudeBot
Claude-Web
Google-Extended
Bytespider
CCBot
Meta-ExternalAgent
Meta-ExternalFetcher
Applebot
Applebot-Extended
Amazonbot
Diffbot
YouBot
cohere-ai
```

## Cloudflare (Most Common Setup)

Most modern sites sit behind Cloudflare. Cloudflare provides log access in two ways:

### Cloudflare Analytics (Free / Pro / Business plans)

- Cloudflare dashboard → Analytics & Logs → Traffic
- Filter by "Bots" tab → shows top bots with request counts
- Cloudflare auto-categorizes many AI crawlers under "Verified Bots" or "Crawlers"
- For Pro and Business plans: filter by specific user agent in the request log

### Cloudflare Logpush (Enterprise / paid add-on)

- Push raw logs to S3, GCS, Datadog, etc.
- Filter logs by `ClientRequestUserAgent` field
- Example query (in destination platform):
  ```
  ClientRequestUserAgent CONTAINS "GPTBot"
  OR ClientRequestUserAgent CONTAINS "PerplexityBot"
  OR ClientRequestUserAgent CONTAINS "anthropic-ai"
  ```

### Cloudflare Workers (any plan, requires custom work)

Deploy a worker that logs AI crawler hits to an external log destination. Useful when other log options are not available.

## Apache Server (Direct Access Logs)

Default access log location: `/var/log/apache2/access.log` (Ubuntu/Debian) or `/var/log/httpd/access_log` (RHEL/CentOS).

```bash
# Count requests by AI crawler in the last 30 days
grep -oE "GPTBot|PerplexityBot|anthropic-ai|ClaudeBot|Google-Extended|CCBot|Meta-ExternalAgent|Applebot-Extended|Bytespider" /var/log/apache2/access.log | sort | uniq -c | sort -rn
```

```bash
# Show last 100 GPTBot requests
grep "GPTBot" /var/log/apache2/access.log | tail -100
```

```bash
# Count requests per day for the last 7 days for a specific crawler
grep "GPTBot" /var/log/apache2/access.log | awk '{print $4}' | cut -c2-12 | sort | uniq -c
```

```bash
# Show which pages GPTBot is requesting most
grep "GPTBot" /var/log/apache2/access.log | awk '{print $7}' | sort | uniq -c | sort -rn | head -20
```

## Nginx Server

Default access log location: `/var/log/nginx/access.log`.

Same commands as Apache (Nginx and Apache use the same Combined Log Format by default).

```bash
grep -oE "GPTBot|PerplexityBot|anthropic-ai|ClaudeBot|Google-Extended|CCBot|Meta-ExternalAgent|Applebot-Extended|Bytespider" /var/log/nginx/access.log | sort | uniq -c | sort -rn
```

## AWS (CloudFront / Application Load Balancer / EC2)

### CloudFront

- CloudFront Standard Logs → enable, deliver to S3 bucket
- Query via Athena:
  ```sql
  SELECT
    user_agent,
    COUNT(*) as requests,
    COUNT(DISTINCT cs_uri_stem) as unique_pages
  FROM cloudfront_logs
  WHERE date >= DATE('2026-04-23')
    AND (user_agent LIKE '%GPTBot%'
      OR user_agent LIKE '%PerplexityBot%'
      OR user_agent LIKE '%anthropic-ai%'
      OR user_agent LIKE '%ClaudeBot%'
      OR user_agent LIKE '%Google-Extended%'
      OR user_agent LIKE '%CCBot%'
      OR user_agent LIKE '%Meta-ExternalAgent%'
      OR user_agent LIKE '%Applebot-Extended%'
      OR user_agent LIKE '%Bytespider%')
  GROUP BY user_agent
  ORDER BY requests DESC;
  ```

### Application Load Balancer

- ALB access logs → enable, deliver to S3
- Same query pattern as CloudFront in Athena, adapted to ALB log schema.

### Direct EC2 / Lightsail

- Apache or Nginx logs as above
- CloudWatch Logs Insights if logs are shipped there

## Vercel / Netlify

### Vercel

- Vercel dashboard → Project → Logs → Runtime Logs
- Filter by user agent in the search box
- For full historical access: enable Log Drains to external services (Datadog, Logflare, etc.)

### Netlify

- Netlify dashboard → Site → Analytics (Pro plan and above)
- Or: enable Log Drains
- Bot traffic visibility is limited on the free tier

## Hosted Platforms (WordPress.com, Squarespace, Shopify, Wix)

These platforms typically do not expose raw server logs. Workarounds:

### WordPress.com

- Limited bot visibility. Use a third-party analytics tool that captures user agents (Statify, MonsterInsights with custom dimensions).

### Squarespace

- Squarespace Analytics does not surface bot traffic by user agent.
- Workaround: place a tracking pixel or analytics tag that captures user agent server-side (most are blocked from doing so on hosted platforms).

### Shopify

- Shopify Analytics does not expose bot visits by user agent for most plan tiers.
- Shopify Plus customers can access more detailed logs via API.
- Cloudflare in front of a custom domain is a common workaround for SMB stores.

### Wix

- Bot traffic visibility is limited.
- Wix offers some bot blocking but not detailed visit reporting.

For hosted platforms with limited log access: assume that if the platform is widely used and the brand has reasonable traffic, AI crawlers are visiting. The greater concern is whether the platform's rendering (often JavaScript-heavy for some hosted page builders) is delivering content the crawlers can read.

## What to Look For

Once you have crawler visit data:

### Healthy patterns

- **GPTBot visiting at 50-500 requests per month** for an established site. Variable by site authority.
- **PerplexityBot visiting regularly** if the site is in any Perplexity citation set. Sparse if not.
- **CCBot visiting in cyclical bursts** during Common Crawl runs (every 1-2 months).
- **Google-Extended visiting at low volume**, often piggy-backing on Googlebot's general crawl.
- **anthropic-ai, ClaudeBot visiting** at low-to-moderate volume.

### Concerning patterns

- **A crawler is allowed in robots.txt but zero visits in the last 90 days.** Possible firewall block at CDN, possible crawler deprecation, possible low site authority.
- **Crawlers receiving high rates of 403 / 404 / 5xx responses.** Server-level block or rendering issue.
- **A crawler hitting an extreme rate** (thousands of requests per day) that could affect site performance. Some crawlers can be rate-limited via the Crawl-Delay directive in robots.txt (not all honor it).
- **A crawler that should be blocked still visiting.** Crawler does not honor robots.txt; consider CDN-level block.

### Patterns that look concerning but are actually fine

- **Long gaps between visits for individual crawlers.** Many crawlers visit on irregular schedules; a 30-day gap is not necessarily a problem.
- **Visits to URLs that no longer exist.** Crawlers maintain stale URL lists; 404 responses are expected.
- **Different crawlers hitting the same pages repeatedly.** Normal; each crawler maintains its own index.

## Crawl Volume Sanity Check

Rough order-of-magnitude expectations for an SMB site with reasonable authority and full crawler allowance:

- Total AI crawler requests: 1,000 to 10,000 per month
- GPTBot share: 20-40% of AI crawler traffic
- PerplexityBot share: 5-20%
- CCBot share: 10-30% (cyclical)
- Google-Extended share: 5-15%
- All others combined: 10-30%

If aggregate AI crawler traffic is under 100 requests per month for an established site, investigate. Either a block is in place that you have not found, or the site authority is too low to attract crawl.

## Monitoring Setup (Optional)

For brands serious about AEO infrastructure, set up automated monitoring:

- **Daily summary email** of AI crawler visit counts by user agent
- **Alert on crawler-blocked spikes** (e.g., a sudden drop in GPTBot visits to zero may indicate a CDN block went up)
- **Weekly report** of pages most-crawled by AI bots vs pages the brand most wants cited (the gap is interesting)

Implementation: a simple cron job that parses logs, plus an email or Slack notification. For Cloudflare-fronted sites, Cloudflare Workers Analytics Engine can serve this purpose. For everything else, a small log-parsing script plus a hosted log aggregator (Datadog, Logflare, BetterStack) works.

The monitoring is not necessary for most clients. It is worth setting up when AI crawler access is a known concern (post-CDN-change, post-CMS-migration, when the user is anxious about visibility shifts).
