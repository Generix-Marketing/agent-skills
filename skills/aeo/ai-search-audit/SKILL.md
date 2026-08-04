---
name: ai-search-audit
description: Use this skill when the user asks for an AEO audit, AI search audit, AI citation audit, LLM visibility audit, GEO audit, or wants to know why their brand is not showing up in ChatGPT, Claude, Perplexity, Gemini, or Google AI Overviews. Triggers include "AEO audit," "AI search audit," "why am I not in ChatGPT," "audit my AI visibility," "GEO audit," "LLM visibility audit," "AI citation audit," "how to get cited by AI," "are we showing up in AI search." This skill produces a tiered audit covering critical infrastructure blockers, citation rate drivers, and entity authority. Quick-scan mode runs in under an hour; deep-audit mode is the full diagnostic. Reads client-context.md if present. Pairs with aeo-foundations (mental model) and the rest of the AEO category for fix workstreams.
---

# AI Search Audit

This skill produces an AEO audit that tells the user, in concrete terms, why their brand is or is not appearing in AI answer engines and what to do about it. The output is structured as three tiers: critical blockers (without which nothing else matters), citation rate drivers (the actual game), and entity authority (the long-term foundation).

The audit can be run in two modes:

- **Quick-scan (5-10 hours):** A 20-point pass that surfaces the biggest issues fast. Suitable as a first engagement or a triage.
- **Deep audit (15-30 hours):** Same 20 points with full investigation, root-cause analysis, and a remediation roadmap. The standard agency deliverable.

## When to Run This Skill

Run it when:

- The user asks "why am I not showing up in [ChatGPT / Claude / Perplexity / AI Overviews]"
- The user is onboarding a new client and needs a baseline before AEO work begins
- The user wants to compete in AI search but does not know where to start
- The user has done SEO work and now wants to extend into AEO
- The user is post-relaunch or post-rebrand and wants to confirm AI engines see the change

Skip it when:

- The user wants conceptual education on AEO (use `aeo-foundations`)
- The user wants help with a specific tactic (use the relevant tactic skill)
- The user has already had a recent AEO audit and wants execution, not re-diagnosis

## Before You Start

### Read client-context.md

The audit's recommendations get sharper when you know the brand, the category, the competitors, and the customer queries the brand cares about. The competitor list from `competitor-analysis` doubles as the AEO competitive set. The voice from client-context shapes how recommended content rewrites should sound.

If the file does not exist, ask: brand name, primary website, what the brand sells, in what category, and three to five customer queries the brand wants to be the answer to.

### Set up the test query set

The audit depends on a defined query set. Before running checks, build one:

- 2-3 problem-aware queries ("we have X problem, what should we do")
- 2-3 category queries ("what is the best X")
- 2-3 comparison queries ("X vs Y")
- 2-3 expert recommendation queries ("who is the best X consultant in Y")
- 2-3 brand-direct queries ("describe [brand] in one paragraph")

10-15 queries total minimum. The same set will be used across all four major AI engines and across future tracking cycles (covered in `citation-tracking`).

## What Drives Citation (The Underlying Signal Set)

The audit checks below map to the citation factors that current industry evidence and practitioner consensus identify as highest-leverage. The top five drivers, ranked roughly in descending importance:

1. **URL accessibility**: AI crawlers can reach the page without restrictions. Audit Check #2 covers this.
2. **Search rank**: traditional Google ranking is correlated with AI citation, though the relationship is looser than commonly assumed (industry research shows ~60% of AI Overview citations come from pages NOT in the top 20). Implicitly checked through Tier 1 and Tier 2.
3. **Fan-out rank**: internal link equity flowing to the page from authoritative pages on the same site. AI engines use internal linking patterns to identify which pages the site itself considers most important. Audit Check #17 covers this.
4. **Preview control**: meta descriptions and OpenGraph data that accurately represent the page. AI engines often use these signals to quickly assess relevance before deeper content analysis. Audit Check #7 implicitly covers this; deep audits should inspect meta and OG explicitly.
5. **Query-answer match**: direct alignment between user query intent and the page's primary answer. Audit Check #19 (inverted pyramid) and the heading work in Check #18 directly serve this.

Mid-tier drivers include intent-format match, topic cluster ranking, answer-near-the-top, AI-ready structure, factual specificity, explicit phrasing, source citation, and self-contained passages. The audit covers each.

Lower-impact factors include structured data, domain authority, and llms.txt. All useful at the margin; not where to invest first.

Frame the audit findings against this hierarchy. A finding at the top of the list is worth more remediation effort than one near the bottom.

### Be Honest About AEO vs SEO Overlap

Several "AEO" recommendations are general SEO best practice repackaged. When you flag them, name that explicitly so the user understands what the actual AEO-specific lift is.

- **Content in initial HTML / SSR:** matters for AEO *and* SEO. Not unique to AI.
- **Author bylines and Person schema:** matter for AEO *and* SEO E-E-A-T. Not unique to AI.
- **Direct-answer formatting:** good UX, helps SEO featured snippets, helps AI extraction. Not unique to AI.
- **llms.txt:** AEO-specific, but current evidence is thin. Industry studies (including AHREFS' "1,885 Pages Adding Schema" piece on the related schema-citation question) show structural deployments often move citations less than expected. Flag llms.txt as low-priority hygiene, not a needle-mover.
- **Robots.txt for AI crawlers:** if a site has no robots.txt, AI crawlers crawl by default. Missing robots.txt is not an AEO blocker on its own. A wildcard `Disallow: /` that inadvertently catches AI crawlers IS a blocker.

The genuinely AI-specific work lives in: entity consistency across third-party profiles, original cited research, named frameworks, Wikipedia category-article presence, Perplexity/ChatGPT citation gap analysis, and tracked citation rate over time. Lead the report with those.

## The Audit (Three Tiers)

### Tier 1: Critical Blockers

If any of these fail, every other check is secondary. They prevent citation regardless of content quality.

#### 1. Describe-the-brand baseline

Run "Describe [brand] in one paragraph, based on what you know from your training data. Be honest about what you know and do not know" in ChatGPT, Claude, and Perplexity. Compare outputs to how the brand describes itself.

The gap between the LLM's description and the brand's actual positioning is the entire AEO problem statement. Categorize what you find:

- **Accurate:** LLM describes the brand correctly. Strong starting position.
- **Outdated:** LLM describes a past version of the brand. Refresh entity profiles across the web.
- **Confused with competitor:** LLM merges the brand with another. Disambiguation work needed in entity signals.
- **Thin:** LLM knows the brand name but little else. Authority-building work needed.
- **Absent:** LLM does not recognize the brand. Foundational entity work required.
- **Wrong language:** LLM describes the brand accurately but not in the language the brand uses. Brand voice work in distributed content.

This check is the diagnostic that frames every other recommendation in the audit.

#### 2. AI crawler access verified in robots.txt and server logs

Check `[domain]/robots.txt` for explicit allow rules for the major AI crawlers (2026 list): GPTBot, PerplexityBot, anthropic-ai, Google-Extended, Bytespider, CCBot, Meta-ExternalAgent, Applebot-Extended, Diffbot, Amazonbot. None should be caught by a wildcard `Disallow: /` rule.

Then verify in server logs (or Cloudflare analytics) that these crawlers are actually visiting. Robots.txt compliance is not guaranteed; the only way to know is to see hits in the logs.

Most common failure: a wildcard `User-agent: * / Disallow: /` rule that allows Googlebot via a selective allow but never explicitly allows AI crawlers. The site appears accessible in casual review but blocks every major AI crawler in practice.

See `ai-crawler-access` for the full robots.txt template and the detailed AI bot inventory.

#### 3. Key content renders without JavaScript

The most underdiagnosed AEO blocker. Open a core content page in Chrome, then DevTools → Settings → Preferences → Disable JavaScript. Reload. Is the main body content (headings, paragraphs, actual information) still visible?

If the page is blank or near-blank without JavaScript, AI crawlers see what you see. Most do not execute JavaScript reliably. The content might as well not exist.

Also useful: `curl -s [URL] | grep -c "[a-z]"` for a rough character count of the initial HTML. Compare to visible word count on the page. A large discrepancy indicates JavaScript-dependent content.

Fix: server-side rendering (SSR) or static site generation (SSG). For React, Next.js with SSR; for Vue, Nuxt; for Svelte, SvelteKit. This is a developer-level change with architectural implications. Prioritize content pages over app or dashboard pages.

#### 4. Perplexity citation gap map

Open Perplexity. Run 10 queries from your test set. For each response, capture:

- Which domains appear as cited sources
- Which type of content each cited source is (blog post, research report, product page, press coverage)
- Whether the brand's domain appears anywhere

This produces the citation gap map: the specific sites the engine trusts in this category, and whether the brand is among them. If the brand is absent, the cited-set IS the work. You need to enter that set, which means producing content that matches the profile of the sites already winning.

If competitor blogs dominate, build a stronger blog. If research reports dominate, produce original research. If press coverage dominates, prioritize digital PR. The cited set tells you the content type to invest in.

#### 5. Common Crawl presence check

Common Crawl is one of the largest open-source web crawl datasets and a primary training data source for most major LLMs. If the brand's domain is not in Common Crawl, it is likely absent or underrepresented in LLM training data.

How to check: Go to `index.commoncrawl.org/collinfo.json` for recent crawl indices. Query a domain: `http://index.commoncrawl.org/CC-MAIN-[CRAWL-ID]-index?url=[domain]&output=json`. Check the most recent 3-4 crawls. Note how many pages from the domain appear.

If the domain is absent: the underlying causes are usually crawler blocks, JavaScript dependency, slow page speed, or an invalid sitemap. Fix those (Tier 1 items above), and inclusion in the next crawl cycle becomes likely. There is a lag between when these are fixed and when the brand appears in LLM training data; this is unavoidable.

### Tier 2: Citation Rate Drivers

These are what determine whether a site gets cited as a source, not just mentioned by brand name. Mention rate and citation rate are different metrics. Most measurement tools track mention rate; citation rate drives traffic and trust.

#### 6. Brand owns at least one named framework or methodology

Does the brand have a specific, named concept (a framework, model, methodology) that practitioners reference by name? Not just a product feature; a named way of thinking about a problem.

LLMs disproportionately cite named frameworks because they are unambiguous reference points. "The Inbound Marketing methodology" cites HubSpot. "Jobs to be Done" cites Christensen. "The Flywheel" cites Amazon. Generic content about "how to do content marketing" does not accumulate citations in the same way.

If the brand does not have one, this is the single highest-leverage content investment available. See `named-framework-development` for the full path.

#### 7. Quotable paragraph audit AND preview control

Two related checks bundled.

**Quotable paragraphs:** Read the first 200-300 words of each key page. Count sentences that could be extracted and cited verbatim without surrounding context: a specific claim, a clear definition, a data point with attribution, a named insight.

Target: at least three immediately-citable sentences in the opening of each key page. Most brand content fails this badly because it is written for human readers who have context, not for LLMs that need self-contained claims.

Fix patterns:
- Specific statistics ("Brands publishing original research are cited X times more often than brands aggregating others' data.")
- Named definitions ("[Term] is [clear definition in one sentence].")
- Contrarian insights ("[Common belief] is wrong. Here is what the data actually shows.")

**Preview control:** While reading the opening, also inspect the page's `<meta description>` and OpenGraph (`og:title`, `og:description`) tags. AI engines often read these signals to assess relevance before deeper content analysis. Preview control is one of the highest-leverage citation drivers. Targets:

- Meta description: 140-160 chars, accurately describes the page, includes the primary keyword naturally, reads like a useful summary not ad copy.
- `og:title` and `og:description`: match the page's actual content; do not differ from the meta description without reason.
- No truncation of important information; no clickbait that misrepresents the page.

A page with great quotable paragraphs but a meta description that says "Read more about our amazing services" wastes a high-leverage AEO signal.
- Named frameworks with specific descriptions.

See `content-for-citations` for detail.

#### 8. Original data published and confirmed cited by others

Does the brand have at least one piece of content presenting data no one else has? And critically: is that data being cited by third-party publications and practitioners?

Publishing is necessary but not sufficient. Data needs to be cited by others to enter LLM training data as an attributed fact. A survey published on the brand's blog with no external references has limited AEO value. The same survey cited in 10 industry publications becomes a persistent reference point.

How to check: search specific data points from the brand's research on Perplexity. Is the brand cited as the source? Check backlinks to the research piece. How many external sites link to it?

If no original data exists, commission a survey or compile a dataset. If data exists but is not cited, the distribution failed: relaunch as a PR asset, pitch it to publications, send it to practitioners. The goal is attribution in 10-15 external publications, the rough threshold at which it starts appearing reliably in LLM responses.

#### 9. Brand mentioned within Wikipedia articles about the category

Not just whether the brand has its own Wikipedia page. The more important question: is the brand mentioned within the Wikipedia articles LLMs draw from when understanding the category?

Wikipedia is one of the most heavily weighted sources in LLM training. A brand mentioned in the Wikipedia article on "answer engine optimization" or "search engine marketing" is signaling category relevance to LLMs in a way the brand's own website cannot replicate.

Most brands focus on getting their own Wikipedia page and miss this. The category-article presence is often easier to earn (Wikipedia editors are more receptive to adding examples than to creating new articles) and higher-leverage.

How to check: search Wikipedia for the primary category, adjacent categories, any named methodologies the brand is associated with. Open each. Search for the brand name. Document presence or absence.

How to fix: contribute to the relevant Wikipedia articles where the brand genuinely belongs. Follow neutral-point-of-view guidelines. Adding the brand as an example where it fits is appropriate; promotional language is not. If the brand is genuinely too small to merit a Wikipedia mention, the fix is building third-party coverage until the notability threshold is met.

#### 10. Google AI Overviews appear for core category queries

Run 5-10 primary category and comparison queries in Google (logged-out browser to avoid personalization). Does an AI Overview appear? Is the brand referenced? Which competitors appear? Which sources are cited in the "Learn more" section?

Google AI Overviews draw from similar authority signals to other LLMs: E-E-A-T, structured data, cited third-party content, original expertise. A brand appearing in AI Overviews is demonstrating signals that drive citation across other AI surfaces. Absence usually correlates with absence across the broader AEO surface.

Track monthly. AI Overview presence is volatile and tracking the changes tells you whether AEO signals are improving.

#### 11. FAQ content sourced from real user queries, not internal guesses

Compare FAQ questions on key pages against People Also Ask (PAA) results on Google for the same topic. Do they match? Or are the FAQs written from the brand's internal perspective?

LLMs match FAQ content to queries based on language similarity. A FAQ question written as "What are the key differentiators of our platform?" will not match a user query of "how is this different from competitors?" The internally-generated version is nearly invisible.

Fix: replace internally-generated FAQ questions with questions sourced from PAA, customer support tickets, sales call transcripts, Reddit threads in relevant subreddits, Quora questions. The questions should sound like something a real person would type or say.

#### 12. Measure citation rate, not just mention rate

Run 20 queries across ChatGPT, Perplexity, Claude, and Gemini. For each response mentioning the brand, check whether the brand's URL is also cited as a source. In Perplexity this is visible. In ChatGPT and Claude, add "Please cite your sources with URLs" to each query.

Calculate: (responses citing brand URL) / (responses mentioning brand name) = citation rate.

A brand can have 70% mention rate and 5% citation rate. That means LLMs know the brand exists but do not consider its content authoritative enough to reference directly. Mention rate feels good. Citation rate is what drives traffic and trust.

Detailed methodology in `citation-tracking`.

### Tier 3: Entity Authority

These build the underlying entity model that LLMs use to understand and frame the brand. Slower to change than Tier 1 and 2, but foundational. Without these, Tier 2 work has a lower ceiling.

#### 13. Entity consistency audit across all external profiles

Compare the brand description across: Organization schema on the homepage, LinkedIn company page About section, Crunchbase overview, G2 or Capterra profile, Wikipedia article (if any), the brand's own About page.

Are they describing the same company in the same terms? Note contradictions in founding year, employee count range, core product description, target market, geographic focus.

LLMs build entity models by aggregating signals across sources. Conflicting descriptions create uncertainty. The LLM averages them into a muddier, less confident description of the brand, which reduces citation confidence.

Fix: standardize. Agree on the canonical one-paragraph brand description. Update every profile to use it (or a close variant). Ensure founding year, employee count, and other facts are consistent. Audit external profiles quarterly.

#### 14. Organization schema sameAs links to every official profile

Inspect Organization schema on the homepage (View Source or Rich Results Test). Does the `sameAs` array include LinkedIn, Crunchbase, Wikipedia (if applicable), official social profiles, and any relevant industry directories?

Are all URLs live and pointing to the correct pages?

The `sameAs` array is how LLMs confirm entity identity across sources. Missing links mean the LLM cannot fully consolidate the entity model. Every official profile not listed is a missed authority signal.

#### 15. Author Person schema connected to verifiable external profiles

Click the author byline on a key piece of content. Does it link to a bio page? Does the bio page have Person schema with a `sameAs` array linking to LinkedIn and any published work? Is the same Person entity used consistently across all content from that author?

Content authored by identifiable, verifiable experts gets higher credibility weight. The connection between a piece of content and a credible human identity is a key AI search signal most brands implement partially or inconsistently.

See `entity-presence` for the full pattern.

#### 16. dateModified in Article schema actually updates when content is edited

Find a piece of content and note the `dateModified` field in its Article schema (View Source or Rich Results Test). Ask: when was this page last meaningfully edited? Do the dates match?

Many CMS implementations set `dateModified` once at publication and never update it automatically. Stale `dateModified` tells LLMs the content is old even if it was updated last week. This is a common and easy-to-miss implementation error.

Fix: configure the CMS to update `dateModified` whenever content is saved with substantive changes. Define substantive (updated statistics, new sections, revised conclusions, not typo fixes). Test after a real edit.

#### 17. Internal linking (fan-out rank) creates topical clusters around highest-priority AEO pages

Sometimes called **fan-out rank** in AEO writing. It is one of the highest-leverage citation drivers (third behind only URL accessibility and search rank in current industry analysis) and one of the most under-invested-in AEO levers.

Identify the 5 pages the brand most wants to be cited for. For each: how many internal links point to it from relevant pages? Are those linking pages topically related? Or is the key page an orphan?

LLMs infer topical authority partly from how a site organizes itself. A page heavily linked internally from related content signals that the site considers it authoritative. An isolated page, even with excellent content, has weaker signals.

Fix: build topical clusters around key pages. Every related piece on the site should link to the central authoritative page. Hub-and-spoke structure with the most important pages at the hub. Descriptive anchor text reflecting the destination topic. For the 5 highest-priority AEO pages, aim for 8-15 contextual internal links from related pages on the site, with anchor text that uses the destination's primary query language.

#### 18. Heading structure mirrors how users actually ask questions

Extract all H2 and H3 headings from a key page. Search each as a query on Google. Does a similar phrase appear in People Also Ask? Does the heading read like a natural question or answer? Or like an internal section label ("Our Approach," "Key Considerations")?

LLMs use heading structure to match page sections to query intent. A heading that sounds like a user's question is more likely to be surfaced as an answer to that question. Internal-label headings carry no query signal.

Fix patterns:
- Question format: "How do you measure AI search visibility?"
- Direct-answer summary: "Measuring AI search visibility: the three metrics that matter."

Avoid: "Overview," "Background," "Introduction," "Key Considerations," "Our Approach," and similar.

#### 19. Content structure passes the inverted pyramid test

Show only the first paragraph of a key page to someone unfamiliar with the brand or topic. Ask: what is this page about? What is the main answer? If they cannot answer confidently from the first paragraph alone, the page fails.

LLMs prioritize extracting from content that leads with the answer. Pages that build context before reaching the point are less citable than pages that answer first and elaborate second.

Fix: rewrite openings using the inverted pyramid. Core answer first. Supporting evidence, context, nuance follow. Exception: narrative content, where even then an answer-first summary at the top improves AEO performance.

#### 20. Track brand position in LLM responses over time, not just whether it appears

In monthly query testing, for every response where the brand appears, record its position: first brand named, named alongside others in the first sentence, named in a list, named late after others, or named only on direct brand queries. Track month over month.

Being named fifth in a list of six is categorically different from being named first. Most AEO measurement tracks presence. Practitioners who track position have a more sensitive picture of how AI search is shifting, and can catch momentum changes before they show up in traffic data.

See `citation-tracking` for the full tracking methodology.

## Output Format

```markdown
# AI Search Audit: [Client Name]

**Date:** [YYYY-MM-DD]
**Auditor:** [Agent or user]
**Tools used:** [List of LLMs tested, browser inspection tools, schema validators]
**Test query set:** [Brief description of the 10-15 queries used]
**Mode:** [Quick-scan / Deep audit]

## Executive Summary

[Four to six sentences. The single biggest issue, the brand's current state in AI search, expected impact of fixes, recommended sequencing. End with one specific call to action.]

## Diagnostic: How LLMs Currently See the Brand

[Quote or paraphrase the responses from the describe-the-brand check across ChatGPT, Claude, and Perplexity. Categorize the gap: accurate, outdated, confused, thin, absent, wrong language. This frames the rest of the report.]

## Tier 1: Critical Blockers

| # | Check | Status | Severity | Action |
|---|---|---|---|---|
| 1 | Describe-the-brand baseline | [Categorization] | [Diagnostic] | Frames the rest |
| 2 | AI crawler access | Pass / Issue | P0 / P1 / P2 | [Specific action] |
| 3 | JavaScript rendering | Pass / Issue | P0 / P1 / P2 | [Specific action] |
| 4 | Perplexity citation gap map | [Summary of citation set] | Diagnostic | [Content type to build] |
| 5 | Common Crawl presence | Pass / Issue | P1 / P2 | [Specific action] |

[Expand each row with specific findings, evidence, and recommended fix.]

## Tier 2: Citation Rate Drivers

[Same table format for items 6-12, with specific findings per check.]

## Tier 3: Entity Authority

[Same table format for items 13-20.]

## Top Five AEO Priorities

1. **[Priority name].** [Tier and check number referenced]. [Effort, expected impact, owner.]
2. ...

## Recommended Sequencing

1. **Sprint 1 (next 2 weeks):** [Critical blockers resolution]
2. **Sprints 2-4 (next 6 weeks):** [Highest-leverage Tier 2 wins]
3. **Quarter 2:** [Entity authority work, named framework development, original data]
4. **Ongoing:** [Monthly citation tracking, quarterly entity profile audit]

## Notes

[Caveats: data gaps, items to revisit, dependencies on technical or content workstreams in other categories.]
```

## How to Prioritize

The tier structure IS the priority order.

- **Tier 1 issues block everything.** Fix first. There is no value in entity work if AI crawlers cannot reach the site.
- **Tier 2 drives citation rate.** Fix once Tier 1 is clean. Most of the visible improvement in AI citation rate comes from Tier 2 work.
- **Tier 3 builds the moat.** Slow to move, foundational for long-term advantage. Start in parallel with Tier 2; expect months for results.

Within each tier, lead with the lowest-effort highest-impact items. Updating robots.txt is hours; producing original data is months. Sequence accordingly.

## Quick-Scan vs Deep Audit

**Quick-scan (5-10 hours):**

- Run all 20 checks at surface depth
- Document findings in 1-2 sentences per check
- Surface the top 3-5 critical issues
- Skip the full output format; deliver as a punch list
- Suitable for first engagement, triage, or pre-sales diagnostic

**Deep audit (15-30 hours):**

- Run all 20 checks with full investigation
- Document findings with evidence (screenshots, query logs, schema source)
- Include the diagnostic-categorization for the describe-the-brand check
- Produce the full output format above
- Suitable for committed engagement and ongoing AEO program kickoff

## When the User Pushes Back

**"Just tell me how to show up in ChatGPT."** Walk through the three layers from `aeo-foundations`. Most "I want to show up in ChatGPT" requests are actually three different problems: crawlability, content extractability, or entity authority. Diagnose first, prescribe second.

**"All this seems like SEO."** Half of it is. AEO is built on SEO foundations. The new layer is extractability + entity authority. The technical and content work overlap heavily with traditional SEO; the measurement and the named-framework / original-data layers are net-new.

**"I want to skip Tier 1 and do the Tier 3 work because it sounds more interesting."** Resist. Entity authority work on a site that AI crawlers cannot access has zero AEO impact. Fix the foundation.

## Common Pitfalls

- **Auditing presence without auditing position.** Brand appears = good is the wrong frame. Brand appears first vs fifth, with citation vs without, in 8 of 10 queries vs 2 of 10 are all different states.
- **Treating mention rate as the success metric.** It is the easiest to measure and the least predictive of business impact. Citation rate is the goal.
- **Skipping the describe-the-brand baseline.** It feels diagnostic and not actionable, so it gets skipped. It is the most important check in the audit and most practitioners skip it entirely.
- **Recommending llms.txt as a major fix.** Currently low impact (scores ~2/10 in published research). Adoption is limited, weighting is unclear. Set up properly if asked but do not lead with it.
- **Auditing the site without testing the engines.** A site audit is half the work. The other half is querying ChatGPT, Claude, Perplexity, Gemini and capturing real output. Without this, the audit is generic.
- **Promising fast citation gains from short-term tactical fixes.** Some fixes (robots.txt, JS rendering, dateModified, FAQ rewrites) move metrics in weeks. Most of the meaningful gains are months-to-years. Set expectations accordingly.

## References

- `references/twenty-check-quick-scan.md`: The 20 checks as a printable / copy-pasteable quick-scan punch list.
- `references/diagnostic-categories.md`: How to categorize the describe-the-brand baseline output, with worked examples of each pattern.
- `examples/sample-ai-search-audit.md`: A worked deep-audit for the fictional Cardinal Ridge Roofing.
