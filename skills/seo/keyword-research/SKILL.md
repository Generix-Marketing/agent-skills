---
name: keyword-research
description: Use this skill when the user asks for keyword research, asks what terms to target, asks to find search opportunities, asks to expand a topic cluster, asks for a content plan based on search demand, asks "what should I write about," asks to build a keyword list, or wants to identify what their audience is searching for. Triggers include "keyword research," "find keywords," "keyword list," "topic clusters," "search opportunities," "what should we target," "what should we write about." This skill produces a structured, prioritized keyword list with intent classification, demand signals, difficulty estimates, and recommended page assignments. Tool-agnostic with adapters for Ahrefs, Semrush, Google Search Console, and free fallbacks. Reads client-context.md if present.
---

# Keyword Research

This skill produces a prioritized keyword list the user can hand to a writer, an editor, or a content calendar. The output is not a dump of every related term, it is a short, defensible list of the keywords worth targeting first, why, and which page should own each one.

## When to Run This Skill

Run it when:

- The user is planning content and needs to know what to write
- The user has a service or product and wants to know how customers search for it
- The user is auditing an existing page and needs to confirm or revise its target keyword
- The user wants to expand a topic cluster around something they already rank for
- The user is briefing a writer and needs the brief to specify target terms

Skip it when:

- The user already has a keyword list and wants help with content (use a content skill)
- The user wants competitive comparison rather than demand research (use `competitor-analysis`)
- The user is asking conceptual questions about how search works (use `seo-foundations`)

## Before You Start

### Read client-context.md

If the file exists, read it. The client's industry, location, ICP language, and competitors all narrow the research scope. A roofer in Indianapolis and a roofer in Phoenix have overlapping but distinct keyword opportunities. ICP language tells you whether to research "roof replacement" or "new roof," "law firm" or "attorney," "physician" or "doctor."

If the file does not exist, ask the user three questions before research:

1. What is the brand or business, and what do they sell?
2. Who is the customer?
3. Where do they operate (geographic scope, online-only, B2B vs B2C)?

You cannot do useful keyword research without these three answers.

### Inventory the tools available

Check what you can use, in this order:

1. **Search Console MCP** (`mcp__8f9a1ad3-1f56-4b63-9801-55f7b6a76dc5__gsc-*`). If the user has it, this is your starting point: what they already rank for, what queries are driving impressions, where they sit on average. Real data from the user's own site.
2. **Semrush MCP** (`mcp__96c65232-927d-4ecd-8575-0da349b2fb3f__*`). If available, use for volume, difficulty, related keywords, and competitor visibility.
3. **Ahrefs.** If the user has access, use for the same purpose. Some prefer it for difficulty scoring.
4. **Google Keyword Planner.** Free with a Google Ads account. Volume data is bucketed (e.g., "100, 1K"), which is less precise but enough for prioritization.
5. **Free alternatives.** Google autocomplete, People Also Ask, AlsoAsked, Keywords Everywhere free tier, Reddit and forum search. Use to expand and validate. Combine with GSC if available.

Always cross-check at least one paid-tool number against GSC reality, especially for branded or niche terms. Tool volume estimates routinely disagree with what the user's own site actually shows.

## The Workflow (Six Steps)

Walk through these in order. The order moves from "cast wide" to "narrow ruthlessly" to "assign and brief."

### 1. Seed the List

Start with seed terms. Three sources, ranked by quality:

- **What the customer says.** From client-context (ICP language section) or from a short interview with the user. The customer's words beat the industry's words almost every time.
- **What the site already ranks for.** Pull the top 50-100 queries from GSC. These are confirmed real demand the site has some visibility on.
- **What competitors target.** From client-context (competitor section) or from a Semrush/Ahrefs competitor pull. Identify the top 20-50 keywords each competitor visibly ranks for.

Combine into a master seed list. Expect 50-200 terms at this point. Volume and difficulty come later.

### 2. Expand the List

For each seed term, expand:

- **Google autocomplete.** Type the seed into Google, write down every suggested completion. Repeat with each letter of the alphabet appended (e.g., "roof replacement a," "roof replacement b") to surface long-tail variants.
- **People Also Ask.** Search the seed in Google, click into the PAA box, watch it expand. Capture all questions.
- **AlsoAsked or similar tools.** Pull the question tree for the seed.
- **Related searches.** The block at the bottom of the SERP.
- **Reddit and forum search.** Search the seed on `reddit.com` directly or via Google `site:reddit.com [seed]`. The phrasing real users use in posts often reveals queries paid tools miss.
- **Semrush / Ahrefs related keywords.** If available, pull the related terms report.

Expand each seed to 10-30 variants. The master list may now be 500-2,000 terms. This is the universe.

### 3. Classify Intent

For each term, classify intent. Use these four buckets (from `seo-foundations`):

- **Informational.** The user wants to learn ("how does a roof replacement work," "what is asphalt shingle"). Top of funnel. Blog content.
- **Navigational.** The user wants a specific brand or page ("cardinal ridge roofing," "home depot roofing"). Low value to target unless it is your own brand or a competitor comparison.
- **Commercial investigation.** The user is comparing options ("best roofer indianapolis," "roof replacement cost," "asphalt vs metal roof"). Middle of funnel. Comparison content, cost guides, listicles.
- **Transactional.** The user is ready to act ("roof replacement quote indianapolis," "hire roofer near me"). Bottom of funnel. Service pages, location pages.

The clearest test: open the current top 5 results for the term. What kind of page is ranking? That is what Google thinks the intent is. If 4 of 5 are blog posts, the intent is informational, regardless of what the term sounds like.

Mark each term in the list with its intent.

### 4. Pull Demand and Difficulty

For each term in the list, pull:

- **Monthly search volume.** Most tools estimate. Take any single estimate with skepticism, especially for niche or local terms. Use the directional signal more than the exact number.
- **Keyword difficulty (KD).** Tools estimate this 0-100 based on the strength of currently ranking sites. Below 30 is often achievable for a new or small site; 30-50 is realistic with focused effort; 50+ needs strong existing authority.
- **SERP features.** What is on the SERP for this term? Featured snippet, PAA, AI Overview, local pack, image pack, video carousel. Each affects how clicks distribute.
- **Current rank** (if GSC has data). Where does the client's site currently sit for this term? Page 2 (positions 11-20) is the highest-leverage zone.

Tool source per pull:

- GSC (own site): current rank, current impressions, current clicks.
- Semrush / Ahrefs: volume, difficulty, SERP features, competitor ranks.
- Google Keyword Planner: volume (bucketed), competition (a paid-ads signal, not organic).
- Free fallback: estimate volume from autocomplete prominence and PAA presence; difficulty by manual SERP inspection.

### 5. Score and Prioritize

For each keyword, assign a priority. Use this scoring frame:

| Factor | Weight | Notes |
|---|---|---|
| Intent match to business goal | High | A bottom-funnel term aligned with a sellable service beats a high-volume informational term every time |
| Realistic difficulty for this site | High | A low-difficulty term the site can actually rank for is more valuable than a high-volume term it cannot |
| Volume | Medium | More is better, but only after intent and difficulty pass |
| Current proximity to page 1 | Medium | Page 2 terms are the cheapest wins |
| SERP feature opportunity | Medium | A term with a featured snippet the site could capture is high-leverage |
| Strategic value | Variable | Some terms are worth pursuing even at unfavorable scores (e.g., brand defense, category authority) |

Sort into three tiers:

- **Tier 1: Build now.** 10-20 keywords. Each gets a dedicated page (or claims an existing page that needs work). These drive the next quarter of content work.
- **Tier 2: Build next.** 20-40 keywords. Queue for the following quarter or two.
- **Tier 3: Watch.** Everything else. Useful for content briefs as secondary terms, future expansion, or signal monitoring.

### 6. Assign and Brief

For each Tier 1 keyword, assign a target page:

- **Existing page that should rank for this term.** Most common. Note what changes the page needs (title rewrite, content expansion, internal links).
- **New page to create.** When no existing page is a fit. Note the page type (service, location, blog post, comparison, FAQ).
- **Consolidate two pages.** When the site has two pages targeting the same term, neither winning. Merge to one.

The output of this step is a one-line brief per keyword that a writer or content lead can act on. See the Output Format section.

## Output Format

Always produce the keyword list as a structured table the user can paste into a spreadsheet. Include the three tiers, plus the strategic notes.

```markdown
# Keyword Research: [Client Name or Topic]

**Date:** [YYYY-MM-DD]
**Researcher:** [Agent or user]
**Tools used:** [GSC export YYYY-MM-DD, Semrush, autocomplete, etc.]
**Scope:** [Whole site / specific service / specific topic cluster]

## Executive Summary

[Two to four sentences. The size of the opportunity, the biggest theme that emerged, the recommended next step.]

## Tier 1: Build Now (10-20 keywords)

| Keyword | Intent | Volume | KD | Current Rank | Target Page | Action |
|---|---|---|---|---|---|---|
| roof replacement indianapolis | Transactional | 1,300 | 38 | 14 | /services/roof-replacement-indianapolis/ | Rewrite title, expand content with process and warranty sections, add LocalBusiness schema |
| ... | ... | ... | ... | ... | ... | ... |

## Tier 2: Build Next (20-40 keywords)

[Same table, less detailed action column.]

## Tier 3: Watch (everything else)

[Compact table or simple bulleted list with keyword, intent, and a one-word note: "secondary," "future cluster," "monitor."]

## Themes and Patterns

[Three to five bullets. The major topic clusters that emerged, surprising findings, gaps where the client has no presence, opportunities competitors are missing.]

## Recommended Sequencing

1. [Quarter or sprint 1 work]
2. [Quarter or sprint 2 work]
3. [Ongoing monitoring]

## Notes

[Anything else: data caveats, terms intentionally excluded and why, dependencies on other work like a redesign or new service launch.]
```

## Tool Adapters

How to perform each step with each tool.

### Google Search Console MCP

- **Seed (existing rankings):** `mcp__8f9a1ad3-1f56-4b63-9801-55f7b6a76dc5__gsc-keywords` for the top queries the site already gets impressions on.
- **Current rank:** `mcp__8f9a1ad3-1f56-4b63-9801-55f7b6a76dc5__gsc-keyword-history` or the keywords endpoint with position data.
- **Page-level opportunities:** `mcp__8f9a1ad3-1f56-4b63-9801-55f7b6a76dc5__gsc-pages` and filter by impressions and average position.
- **Best for:** ground-truth data on the site. Cannot give volume for terms the site does not yet rank on.

### Semrush MCP

- **Volume and difficulty:** `mcp__96c65232-927d-4ecd-8575-0da349b2fb3f__keyword_research` for term-level metrics.
- **Competitor ranks:** `mcp__96c65232-927d-4ecd-8575-0da349b2fb3f__organic_research` against a competitor domain.
- **Related and question keywords:** Semrush's keyword magic tool, accessible via the same tooling.
- **Best for:** breadth and competitive benchmarking.

### Ahrefs

- **Volume and difficulty:** Keywords Explorer.
- **Competitor ranks:** Site Explorer, Organic Keywords report.
- **Question keywords:** Keywords Explorer, "Questions" filter.
- **Best for:** trustworthy difficulty scoring; many practitioners prefer its KD methodology.

### Google Keyword Planner

- Sign in to Google Ads.
- "Discover new keywords" tool.
- Enter seed terms or a competitor URL.
- Export as CSV.
- **Limit:** volume is bucketed unless the account is actively spending. Use directionally.

### Free Fallback (No Paid Tools)

- **Seed:** GSC top queries plus user interview.
- **Expand:** Google autocomplete (manual), People Also Ask (manual), AlsoAsked (free tier), Keywords Everywhere browser extension (free tier offers volume estimates on autocomplete results, capped daily).
- **Intent:** manual SERP inspection of top 5 results for each candidate term.
- **Volume:** Keywords Everywhere directional numbers; cross-check against GSC for terms the site already ranks on.
- **Difficulty:** manual SERP inspection. If the top 10 are all DR 70+ sites with on-topic dedicated pages, difficulty is high. If the top 10 include weak pages from low-authority sites, difficulty is low.
- **Coverage:** good enough for a small or mid-size site doing 50-100 keyword research, not enough for an enterprise-scale program.

## When the User Pushes Back

Two common pushbacks:

**"Just give me the keywords, I do not need a whole process."** Fine, but ask three filtering questions first: what service or product, what location, what is the customer goal. Then return a Tier 1 list only, with intent and one-line actions. Skip the methodology section.

**"Why is volume so low?"** Two possible explanations: the term really has low demand, or the tool's volume estimate is inaccurate for niche or local terms. Cross-check against GSC if the site already ranks. For local services, a "low volume" keyword can still drive meaningful business if it is high-intent and the customer LTV justifies it.

## Common Pitfalls

- **Confusing volume with value.** A 10,000-volume informational term may drive zero qualified leads. A 50-volume transactional term may drive a closed deal. Always weight by intent and business goal.
- **Targeting terms with the wrong intent for the page.** Re-read step 3. Open the SERP, see what is ranking. Build that.
- **Underweighting the existing site.** GSC tells you what the site is already close on. Page 2 rankings are the cheapest wins and they get ignored when the research starts with a blank list.
- **Producing a 500-keyword list nobody can act on.** Tier ruthlessly. A 15-keyword Tier 1 with assigned pages and actions beats a 200-row spreadsheet that gets archived.
- **Ignoring shadow-search.** Reddit, YouTube, and AI tools answer queries Google does too. For AEO-aware work, capture terms the client should rank for in answer engines, not just blue-link Google.
- **Skipping the SERP feature check.** A term with an AI Overview will distribute clicks very differently than a term with ten standard blue links. Note SERP features for every Tier 1 keyword.

## References

- `references/intent-classification.md`: How to classify keyword intent quickly, with the SERP-inspection method and edge cases.
- `references/scoring-framework.md`: The scoring frame as a standalone reference, with worked examples of how to weigh trade-offs.
- `references/serp-feature-guide.md`: Each common SERP feature, what it means for CTR, and how to optimize for or around it.
- `examples/sample-keyword-research.md`: A worked keyword research output for the fictional Cardinal Ridge Roofing.
