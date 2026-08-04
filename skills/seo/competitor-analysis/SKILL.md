---
name: competitor-analysis
description: Use this skill when the user asks who their competitors are, asks to compare their site against competitors, asks what competitors are doing, asks to identify content gaps against rivals, asks who is ranking for their target terms, or asks for a SERP-level competitive view. Triggers include "competitor analysis," "competitor audit," "who is ranking for X," "what are my competitors doing," "content gap analysis," "competitor benchmarking," "competitive landscape." This skill profiles direct, aspirational, and shadow competitors, runs a content and keyword gap analysis, and surfaces specific opportunities. Tool-agnostic with adapters for Ahrefs, Semrush, and free fallbacks. Reads client-context.md and uses its competitor list as the starting point.
---

# Competitor Analysis

This skill produces a competitive landscape view the user can act on. It profiles three tiers of competitors (direct, aspirational, shadow), surfaces what each is doing better than the client, and ends with a short list of opportunities ranked by leverage.

The most common mistake in competitor analysis is over-indexing on direct rivals and ignoring the shadow tier (Reddit, YouTube, review sites, AI Overviews) that often takes more traffic than direct competitors do. This skill corrects for that.

## When to Run This Skill

Run it when:

- The user is onboarding a client and needs a competitive baseline
- The user wants to identify content gaps against rivals
- The user is briefing a strategy and needs SERP-level evidence of what works
- The user wants to know why competitors are outranking them on specific terms
- The user is launching a new service or content cluster and needs to know who already owns it

Skip it when:

- The user wants keyword research (use `keyword-research`)
- The user wants a single-page audit (use `on-page-audit`)
- The user wants a site-wide technical audit (use `technical-audit`)

## Before You Start

### Read client-context.md

If the file exists, it already has a competitor section with three tiers:

- **Direct competitors:** companies selling the same thing to the same audience
- **Aspirational competitors:** brands the client wants to be compared to
- **Shadow competitors:** Reddit threads, YouTube creators, review sites, AI Overviews, marketplaces that take traffic without being obvious rivals

Use this list as the starting point. Confirm with the user it is still accurate. Competitors change.

If the file does not exist, ask the user:

1. Who are the top three companies that show up in the same SERPs as you?
2. Whose brand and site do you wish you sounded like, even if they are not a direct rival?
3. When your customers search for what you sell, what other types of results do they see? Reddit threads, YouTube reviews, Wirecutter-style roundups, marketplaces?

You need at least three direct competitors and two shadow sources before useful analysis.

### Inventory the tools

In order of preference:

1. **Semrush MCP** (`mcp__96c65232-927d-4ecd-8575-0da349b2fb3f__*`). For competitor organic keyword pulls, backlink overlap, and visibility comparison.
2. **Ahrefs.** For the same, with different methodology.
3. **GSC** (the client's own). To establish the client's baseline that competitors will be compared against.
4. **Browser inspection.** Open every competitor site by hand. Tools cannot read a tone of voice, a navigation, or a CTA the way a person can.
5. **Reddit, YouTube, AlsoAsked, AI search.** For shadow competitor research.

## The Workflow (Five Steps)

### 1. Confirm and Expand the Competitor Set

Take the seed list from client-context. Add to it:

- **SERP-discovered competitors.** Run the client's top 10 target keywords (from `keyword-research`, or from the client's intuition). Capture every domain in the top 10 for each. Domains that show up in 3+ SERPs are real competitors, even if the client did not name them.
- **Adjacent-category competitors.** Sites that solve the same customer problem with a different approach. For a roofer, that might include insurance restoration firms, general contractors, even DIY content sites.
- **Shadow competitors per category.** For each major topic the client wants to own, identify the top non-traditional sources (top Reddit thread, top YouTube video, top review site article, AI Overview citations).

Aim for: 3-5 direct competitors, 2-3 aspirational competitors, 5-10 shadow sources.

### 2. Profile Each Competitor

For each direct and aspirational competitor, capture:

- **Domain:** the URL
- **Estimated traffic:** from Semrush or Ahrefs
- **Top 5 traffic-driving pages:** what is actually working for them
- **Top 20 keywords they rank for:** what topics they own
- **Content footprint:** how many pages, what types (service pages, blog, location pages, comparison pages, etc.)
- **Backlink profile:** rough domain authority, top referring domains
- **Voice and positioning:** how they talk, who they target, what they emphasize
- **Notable patterns:** anything they do that the client could borrow

Capture profiles in a consistent format so they can be compared side-by-side. See Output Format below.

For shadow competitors, capture differently:

- **Source type:** Reddit thread, YouTube video, listicle, AI Overview citation, marketplace listing
- **What query it answers:** the specific search term it satisfies
- **What it says about the client:** mentioned positively, mentioned negatively, not mentioned at all
- **Opportunity:** can the client engage (Reddit reply, YouTube comment, get added to listicle, get cited in AI Overviews)?

### 3. Run the Gap Analysis

The core question: what are competitors ranking for that the client is not?

**Keyword gap:**

- Pull each direct competitor's top 100 keywords.
- Cross-reference against the client's top 100 keywords (from GSC).
- The difference is the gap. Sort by intent (transactional gaps are higher priority than informational) and by realistic difficulty.
- Surface the top 15-25 gap keywords.

**Content gap:**

- For each major topic the client cares about, identify what kinds of pages competitors have that the client lacks.
- Common gaps: a cost guide, a comparison page, a "best of [category]" listicle, neighborhood-specific landing pages, an FAQ section, a learning hub.

**SERP feature gap:**

- For the client's top 20 target keywords, note which SERP features appear (featured snippet, PAA, AI Overview, local pack).
- Which features is a competitor capturing that the client could realistically win?

**Backlink gap:**

- Pull each competitor's referring domains.
- Cross-reference against the client's referring domains.
- Surface the 10-20 referring domains the client could realistically earn (local press, local chambers, industry associations, partner sites, podcast appearances). This is more about identifying patterns than poaching individual links.

### 4. Identify Opportunities

From the gap analysis, produce a short list of opportunities. Each opportunity should be:

- **Specific.** "Compete for 'roof replacement cost indianapolis' which Competitor B ranks #2 for" beats "improve cost content."
- **Sized.** Estimated effort, estimated impact, named owner.
- **Defensible.** Tied to a real gap with evidence, not a generic recommendation.

Aim for 8-15 opportunities, sorted by ROI per hour of work.

Categorize each opportunity:

- **Page-2 push:** the client already ranks 11-20 for the term; expansion of the existing page closes the gap.
- **New page:** the client has nothing on the term; build a page.
- **Content cluster:** the topic spans 3-6 pages, build the cluster.
- **Off-page:** the gap is not content, it is authority (backlinks, GBP, citations).
- **SERP feature capture:** restructure existing content to win a featured snippet, PAA slot, or AI Overview citation.

### 5. Recommend Sequencing

Order the opportunities into a workable sequence. Use the same logic as `keyword-research`:

- Sprint 1-2: page-2 pushes (cheapest, fastest wins).
- Sprints 3-6: cornerstone new pages targeting clearest gaps.
- Quarter 2: content clusters.
- Ongoing: off-page work, SERP feature monitoring, re-analysis.

## Output Format

```markdown
# Competitive Landscape: [Client Name]

**Date:** [YYYY-MM-DD]
**Analyst:** [Agent or user]
**Tools used:** [Semrush export YYYY-MM-DD, GSC, manual browser inspection, etc.]
**Competitor set:** [N direct, N aspirational, N shadow]

## Executive Summary

[Three to five sentences. The state of the competitive landscape. The single biggest gap. The single biggest defensible advantage the client has. Recommended first move.]

## Competitor Profiles

### Direct Competitors

#### [Competitor A]

- **Domain:** [URL]
- **Estimated monthly traffic:** [N visits]
- **Top 5 traffic-driving pages:** [List]
- **Top 20 keywords:** [Summary or link to export]
- **Content footprint:** [Counts by type: N service pages, N blog posts, N location pages, etc.]
- **Backlink profile:** [DR/DA estimate, notable referring domains]
- **Voice and positioning:** [Three to five sentences]
- **Notable patterns:** [What they do that is working]

[Repeat for each direct competitor]

### Aspirational Competitors

[Same format as direct, with a focus on what they do at scale that the client could borrow at smaller scale]

### Shadow Competitors

#### [Source: e.g., r/Indianapolis roofer recommendation thread]

- **Source type:** Reddit thread
- **What query it answers:** "indianapolis roofer recommendations"
- **What it says about the client:** Not mentioned. Three direct competitors named positively.
- **Opportunity:** Earn organic mentions via thoughtful, helpful replies on similar future threads. Long-term play.

[Repeat for each shadow source]

## Gap Analysis

### Keyword Gap

[Table of top 15-25 keywords competitors rank for that the client does not.]

| Keyword | Best competitor rank | Volume | KD | Client rank | Recommended action |
|---|---|---|---|---|---|

### Content Gap

[Bulleted list of page types or topic clusters competitors have that the client lacks. Cite the specific competitor and page for each.]

### SERP Feature Gap

[Table of target keywords where a competitor is winning a SERP feature the client could realistically capture.]

### Backlink Gap

[Pattern-level observations: "All three direct competitors have backlinks from the Indianapolis Builders Association, the local Better Business Bureau, and two local TV news roofing storm coverage segments. Client has none of these." Avoid listing individual URLs unless they are clearly actionable.]

## Top Opportunities (Sorted by ROI)

1. **[Opportunity name].** [Category: Page-2 push / New page / Cluster / Off-page / SERP feature.] [Effort, impact, owner, one-line rationale.]
2. ...

## Defensible Advantages

[What the client has that competitors do not. Stated explicitly so the strategy can lean into it. Examples: "20 years of insurance claim experience that none of the three direct competitors have written content about," "Owner is locally known and quoted in local news," "The only competitor with a real warranty page."]

## Recommended Sequencing

1. Sprint 1-2: [...]
2. Sprints 3-6: [...]
3. Quarter 2: [...]
4. Ongoing: [...]

## Notes

[Data caveats, competitors intentionally excluded and why, follow-up research needed, etc.]
```

## Tool Adapters

### Semrush MCP

- **Competitor identification:** `mcp__96c65232-927d-4ecd-8575-0da349b2fb3f__organic_research` against a target keyword set, or competitor pull from a known domain.
- **Competitor keywords:** `mcp__96c65232-927d-4ecd-8575-0da349b2fb3f__organic_research` against the competitor domain.
- **Backlink overlap:** `mcp__96c65232-927d-4ecd-8575-0da349b2fb3f__backlink_research`.
- **Site comparison:** `mcp__96c65232-927d-4ecd-8575-0da349b2fb3f__url_research` or the overview tool against multiple domains.
- **Best for:** keyword gap analysis at speed.

### Ahrefs

- **Competing Domains** report under Site Explorer.
- **Content Gap** report (under Site Explorer) compares 2-10 competitors against the client and surfaces keywords they rank for but the client does not.
- **Top Pages** report on each competitor.
- **Best for:** content gap analysis specifically; Ahrefs' Content Gap report is best-in-class.

### GSC (Client's Own)

- Required to establish the client's baseline. Without it, "gap" has no reference point.
- Use `mcp__8f9a1ad3-1f56-4b63-9801-55f7b6a76dc5__gsc-keywords` for the client's top queries and ranks.

### Free Fallback

- **Competitor discovery:** Search the client's top 10 target keywords manually. Capture every domain in the top 10 for each. Cross-tab.
- **Competitor keyword view:** Inspect each competitor's site by hand. Their navigation, blog index, and service hub pages reveal what topics they cover. Manual but high-fidelity.
- **Backlink view:** Free Ahrefs Backlink Checker (limited to top 100 backlinks per domain).
- **Shadow research:** Manual Reddit and YouTube search; AlsoAsked for question-style competitors.

## Shadow Competitor Research (The Underused Part)

Most competitor audits stop at direct rivals. The shadow tier often matters more.

### Reddit

- Search `site:reddit.com [client target keyword]` on Google.
- Look at the top 5 threads. What questions are being asked? What answers are upvoted? Are direct competitors mentioned? Is the client mentioned?
- For each major topic the client wants to own, identify the relevant subreddit (e.g., r/Indianapolis for local services, r/HomeImprovement for category education).
- Opportunity: thoughtful, non-spammy participation in those subreddits builds shadow visibility that AI Overviews and Google increasingly weight.

### YouTube

- Search the client's top 10 target keywords on YouTube directly.
- What videos rank? Who created them? What do they say?
- For service businesses, YouTube content from material brands (GAF, CertainTeed) often competes for the same education queries. The client's site competes against a 4-minute branded explainer video.

### AI Overviews and Answer Engines

- Search the client's top 10 target keywords on Google with AI Overview enabled.
- Which sources are cited in the AI Overview? Are they the same as the blue link winners? Often not.
- Search the same keywords on Perplexity, ChatGPT (with search), and Brave. Which sources are cited?
- Opportunity: the cited sources are now the "competitors" for AEO visibility. Often these are listicles, Wikipedia, .gov sites, and Reddit, none of which appear in a traditional competitor analysis.

### Review Sites and Marketplaces

- For local services: Angi, HomeAdvisor, Yelp, Thumbtack, Houzz. These sites rank well for "[service] [city]" queries and often appear above competitor service pages.
- For products: Wirecutter, NYT product review pages, niche review blogs.
- For B2B: G2, Capterra, TrustRadius.
- These do not lose traffic to a better client site; they earn the click and then route it. The opportunity is to be the listed provider, not to outrank.

## When the User Pushes Back

**"I already know my competitors, just tell me what to do."** Skip the competitor profile section, lead with the gap analysis and the top opportunities. Cite the evidence inline ("Competitor B ranks #2 for X, the client ranks #14") so the recommendations are defensible.

**"My real competitor is a private equity-owned roll-up, the analysis does not apply."** It applies more, not less. Roll-ups typically have weaker per-location SEO because they templatize everything. The opportunity is granular local content the roll-up cannot produce at scale.

## Common Pitfalls

- **Ignoring shadow competitors.** Reread the shadow section. For most modern SEO/AEO work, the shadow tier is where the largest unaddressed opportunity sits.
- **Treating competitor pages as templates to copy.** Their pages work for them because of their authority, audience, and history. Copying the structure rarely produces the same result. Borrow patterns, not pages.
- **Surfacing too many opportunities.** A 50-row opportunities table gets archived. A 10-row table with sequencing gets executed.
- **Confusing "high traffic" with "high value."** Competitor A might get 200,000 monthly visits but most of it is informational top-of-funnel that does not convert for them either. Pay attention to the pages that drive their leads or sales, not the pages that drive their pageviews.
- **Not capturing voice and positioning.** Tone is a competitor signal too. If three competitors all sound corporate and one client opportunity is to sound human, that is a real strategic insight a keyword export will never show you.

## References

- `references/shadow-competitor-playbook.md`: Specific tactics for Reddit, YouTube, AI Overview, and review site research.
- `references/content-gap-method.md`: Step-by-step method for running a content gap analysis with each major tool.
- `examples/sample-competitor-analysis.md`: A worked competitor analysis for the fictional Cardinal Ridge Roofing.
