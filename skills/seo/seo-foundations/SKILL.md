---
name: seo-foundations
description: Use this skill when the user asks a foundational question about SEO ("what is SEO," "where do I start," "how does Google decide what to rank," "what does crawlability mean"), when starting a brand new SEO engagement and the user wants a shared mental model before diving into tactics, or when another SEO skill in this repo loads and needs to reference shared vocabulary. This is a primer skill, not an audit or recommendation skill. Skip it when the user already knows the basics and is asking for a specific deliverable (audit, keyword list, schema markup).
---

# SEO Foundations

This is the conceptual primer for every other SEO skill in this repo. It defines the four-stage funnel that all SEO work serves, the shared vocabulary downstream skills assume, and the philosophical posture this repo takes toward the practice. Load it when someone needs a mental model before tactics, or when another skill references a term and you want to ground the explanation.

## When to Run This Skill

Run it when:

- The user asks "what is SEO," "how does Google work," "where do I start with SEO," or any question that needs a mental model before tactics
- The user is new to SEO and is about to receive a recommendation that will not make sense without context
- Another skill in this repo references a foundational concept (crawl, index, ranking signal, intent) and you want to anchor the explanation
- The user is briefing a stakeholder, intern, or new client team member and needs a one-pager

Skip it when:

- The user is asking for a specific tactical deliverable (audit, keyword list, schema markup, content brief)
- The user has already demonstrated SEO fluency in this session
- The user explicitly asks for tactics only

## The Mental Model

All organic search work serves this four-stage funnel:

1. **Crawl.** Search engines find the URL by following links or reading a sitemap.
2. **Index.** Search engines store the page in their database and understand what it is about.
3. **Rank.** When a user searches, search engines pick which indexed pages to show and in what order.
4. **Click.** The user picks one of the results and visits the page.

Every SEO problem maps to one of these four stages. If your page is not getting traffic, the first question is always: where in the funnel did it stop?

- Not crawled? Internal linking, sitemap, robots.txt, or a brand new page Google has not found yet.
- Crawled but not indexed? Thin content, duplicate content, canonical pointing elsewhere, or a quality threshold issue.
- Indexed but not ranking? Intent mismatch, weak topical authority, weak backlinks, or stronger competitors.
- Ranking but not getting clicks? Title and meta description are not compelling, SERP features are stealing the click, or the position is too low to attract attention.

When you load this model into a session, every audit you run, every recommendation you make, and every report you write should map back to one or more of these four stages. This keeps the work coherent and explainable to a non-technical client.

## Shared Vocabulary

These are the terms other skills in this repo assume. Use these definitions to keep language consistent across audits, reports, and content.

- **Crawl budget:** The number of URLs Google is willing to crawl on a site within a given window. Mostly a concern for large sites (10,000+ URLs). On small sites, crawl budget is rarely the bottleneck.
- **Indexation:** Whether a URL is stored in Google's database and eligible to appear in search results. A page can be crawled and not indexed.
- **Canonical:** The "preferred" version of a URL when duplicates exist. Set via the `rel="canonical"` link tag. Tells Google "treat this URL as the master copy."
- **Intent:** What the user actually wants when they search. Usually grouped into informational ("how does SEO work"), navigational ("generix marketing"), commercial ("best SEO agency"), and transactional ("hire SEO agency"). Intent match is the single biggest ranking factor most teams underweight.
- **E-E-A-T:** Experience, Expertise, Authoritativeness, Trustworthiness. Google's framework for judging content quality, especially in YMYL (Your Money or Your Life) topics. Not a direct ranking factor, but a lens its algorithms approximate.
- **YMYL:** Your Money or Your Life. Topics where bad information can harm the user (health, finance, legal, safety). Google holds these to a higher quality bar.
- **SERP features:** Elements on the search results page that are not standard blue links. Featured snippets, People Also Ask, knowledge panels, image packs, video carousels, local packs, AI Overviews. They change what "ranking #1" actually means.
- **Topical authority:** The depth and breadth of content a site has on a given topic cluster. A site with 50 related articles on roofing will outrank a site with 3 in most cases, all else equal.
- **Internal linking:** Links between pages on the same site. The cheapest, most underused lever in SEO. Distributes authority, signals importance, and helps Google understand site structure.
- **Backlinks:** Links from other sites to yours. Still a meaningful ranking signal, especially for competitive terms. Quality matters more than quantity.
- **Helpful content:** Google's term for content written for humans first, that demonstrates first-hand experience or expertise, and that satisfies the searcher's intent fully. The Helpful Content System penalizes sites that publish at scale without meeting this bar.

## Philosophical Posture

The skills in this repo take these positions. Downstream skills should not contradict them.

- **User-first, always.** Every recommendation should improve the experience for the person doing the searching. If a tactic helps rankings but hurts the user, it is a short-term win that creates long-term liability.
- **Evidence-based, not folklore.** SEO has a long tradition of received wisdom that does not hold up. Cite Google's own documentation, John Mueller / Gary Illyes / Martin Splitt statements, or measured results from the client's own data. Avoid "best practices" repeated without source.
- **No dark patterns.** No keyword stuffing, no cloaking, no hidden text, no doorway pages, no link schemes, no AI content published at scale without human review. The penalty risk is real and the reputational risk is worse.
- **Small sites compound.** Many small wins compound into large gains. The biggest mistake new practitioners make is chasing one big lever (a viral piece, a massive link buy) instead of doing twenty small things well.
- **Show your work.** Every recommendation in this repo should be explainable in plain language to a client who has never heard of SEO. If you cannot explain why, do not recommend it.

## How Other Skills Use This One

The pattern is: another skill loads, references a foundational concept, and you, the agent, decide whether to expand on it or assume the user knows it.

- If the user has fluency, reference the term and move on. ("This is an intent mismatch, so the fix is...")
- If the user is new, briefly define the term inline. ("This is an intent mismatch, meaning the page is competing for a query whose searchers want something different. The fix is...")
- If the user asks "wait, what is X," load this skill or pull the relevant definition from the Shared Vocabulary section above.

You do not need to dump this whole skill into every session. Treat it like a textbook: pull what you need, leave the rest.

## What This Skill Does Not Do

This is a primer. It does not:

- Audit a specific page (use `on-page-audit`)
- Crawl a site or surface technical issues (use `technical-audit`)
- Recommend keywords (use `keyword-research`)
- Write content (use the content category skills)
- Build a strategy (use the strategy skills)

If the user wants any of the above, hand off to the relevant skill. Do not try to do everything from this primer.

## Quick Reference: The Four-Stage Funnel

When the user asks "why is this page not getting traffic," walk through the funnel in order. The first stage that fails is where the work goes.

| Stage | Question to ask | Common causes when it fails |
|---|---|---|
| Crawl | Has Google found this URL? | Not linked internally, blocked by robots.txt, new page, sitemap issue |
| Index | Is the URL in Google's database? | Thin content, duplicate, canonical pointing elsewhere, noindex tag, quality threshold |
| Rank | Does the URL appear in results for relevant queries? | Intent mismatch, weak topical authority, weak backlinks, stronger competitors |
| Click | Do users click when they see the result? | Weak title and meta, low position, SERP features stealing click, brand recognition gap |

Almost every SEO question maps to a stage in this table. When in doubt, start at the top and work down.

## References

- `references/glossary.md`: The full Shared Vocabulary section as a standalone file for quoting into reports.
- Google Search Central documentation (https://developers.google.com/search): the most authoritative source for how Google says it works.
- Google's Search Quality Rater Guidelines (PDF, free): how Google trains its human evaluators, which approximates what its algorithms try to measure.
