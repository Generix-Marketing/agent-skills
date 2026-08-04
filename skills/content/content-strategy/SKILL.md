---
name: content-strategy
description: Use this skill when the user wants to build a content strategy, plan a content program, organize content into topic clusters, decide what to publish, build an editorial calendar, map content to the buyer funnel, or align content output to business goals. Triggers include "content strategy," "content plan," "editorial calendar," "topic clusters," "content pillars," "content roadmap," "what should we write about," "build a content program," "content marketing strategy," "content-to-funnel mapping." This skill produces a strategic content plan covering topic clusters, pillar pages, cadence, ownership, and measurement. Sits above keyword-research and content-audit as the strategy layer. Reads client-context.md.
---

# Content Strategy

This skill produces a content strategy that a writing team can execute against and a stakeholder can defend in a budget review. The output is not a list of post titles. It is a topic-cluster map, a pillar-page plan, a cadence, an ownership model, and a measurement frame.

Most content programs fail not because the writing is bad but because nobody decided what the program was supposed to do, who it was supposed to serve, and how to measure whether it was working. This skill addresses those decisions before the writing starts.

## When to Run This Skill

Run it when:

- The user is launching a content program from scratch
- The user has been publishing content but cannot point to business impact
- The user wants to reorganize an existing content footprint around clearer topics
- The user is briefing a writer or content lead and needs the strategy locked before the first brief
- The brand is pivoting and the content portfolio needs to follow

Skip it when:

- The user wants tactical keyword work (use `keyword-research`)
- The user wants to assess existing content (use `content-audit`)
- The user wants to write a single piece (use `content-briefs` or a voice skill)
- The user has a strategy and wants to execute (use the writing skills)

## Before You Start

Read `client-context.md`. The strategy depends on:

- The brand (what they sell, to whom)
- The ICP (primary audience, secondary segments, the language they use)
- The competitors (especially shadow competitors from `competitor-analysis`)
- The voice (how the brand sounds)
- The goals and constraints (lead gen vs awareness, owner review cadence, off-limits topics)

Without these, the strategy is generic.

Also pull the keyword research (`keyword-research` output) and content audit (`content-audit` output) if they exist. The strategy synthesizes both into a forward-looking plan.

If the AEO category skills are in use, pull the `ai-search-audit` output (the describe-the-brand baseline and the citation gap map) and any `citation-tracking` baseline data. A modern content strategy designs for both traditional search and AI search; the AEO inputs are not optional context.

## How This Strategy Serves Both SEO and AEO

A working content strategy in 2026 designs for two surfaces in parallel, not one in primary and one as afterthought.

**SEO surface (traditional search):** topic clusters drive topical authority. Pillar pages anchor queries. Supporting pages capture long-tail demand. Internal linking distributes equity. Measurement runs on impressions, clicks, rank, and conversion.

**AEO surface (AI answer engines):** each section of each page is extracted independently. Inverted-pyramid openings get cited. Named methodologies, original data, and self-contained passages anchor entity authority. Measurement runs on mention rate, citation rate, position-in-response, and competitive presence across ChatGPT, Claude, Perplexity, Gemini, and Google AI Overviews.

The strategic decisions below treat both surfaces. Each cluster decision considers SEO demand AND AEO citation potential. The cadence covers new content AND refresh AND the entity-authority workstreams that AEO requires. The measurement frame surfaces both SEO outcomes and AEO outcomes as parallel tracks, not nested.

Where the surfaces diverge (sometimes a topic has weak SEO demand but strong AEO citation potential, or vice versa), the strategy makes the trade-off explicitly and consciously. The most common mistake: a content program designed for SEO with AEO bolted on, producing content that ranks but does not get cited and entity work that compounds neither surface.

The relevant AEO category skills to cross-reference throughout this strategy:

- `ai-search-audit`: the AEO baseline that frames where the brand currently stands across AI engines
- `citation-tracking`: the AEO measurement program (parallel to SEO measurement)
- `content-for-citations`: the writing patterns that make content extractable (which every brief should reference)
- `named-framework-development`: the highest-leverage AEO content investment (often the anchor of a pillar cluster)
- `entity-presence`: the off-site entity authority work that compounds with the on-site strategy

## The Strategy (Five Decisions)

A content strategy is the answer to five questions, in order. Each unlocks the next.

### 1. What is the program's primary business outcome?

Pick one. Yes, content can serve multiple goals; no, you cannot plan a coherent program without naming the primary one.

Common primary outcomes:

- **Lead generation:** content that drives form submissions, demo requests, or consultation bookings. Served by both SEO (driving qualified traffic to conversion content) and AEO (being recommended by AI engines for buying-intent queries).
- **Pipeline acceleration:** content that helps mid-funnel buyers self-educate and convert faster. SEO drives discoverability; AEO citation in comparison and evaluation queries influences buyer shortlists.
- **Customer retention and expansion:** content that supports current customers, reduces churn, drives expansion revenue. Less AEO-relevant; primarily SEO and email-driven.
- **Brand authority and entity recognition:** content that builds the brand's recognized expertise in a category, indirectly supporting all other outcomes. The outcome where SEO and AEO most directly converge: topical authority on the search side, entity authority on the AI search side.
- **Organic traffic at scale:** content that builds a large discoverable footprint, monetized via ads, affiliate, or downstream conversion. Primarily SEO-driven; AEO supplements but does not replace.
- **AI search citation share:** content built explicitly for AEO surface area, supporting brand entity authority in AI engines. The outcome where AEO is primary and SEO is supporting infrastructure.

The primary outcome dictates everything downstream: topic selection, cadence, format, distribution, measurement. Most modern programs serve a primary outcome with both SEO and AEO contributing; explicitly naming which surface is doing which work in service of the outcome sharpens every later decision.

### 2. Who is the primary audience, in their own words?

Pull from `client-context.md` ICP section. Restate the audience in language they would use about themselves, not the brand's marketing categorization.

- Wrong: "Mid-market SaaS marketers"
- Right: "Marketing managers at 50-500 person B2B SaaS companies who own SEO and report to a VP of marketing"

The level of specificity here predicts the quality of every later decision. Generic audience definitions produce generic content.

### 3. What are the 3-7 topic clusters the program will own?

A topic cluster is a meaningful area of content the brand commits to building deep expertise in over 12-24 months. Not a single post, a cluster: a pillar page plus 5-15 supporting pieces, all interlinked, all reinforcing topical authority.

Each cluster should:

- **Serve the primary outcome.** A lead-gen program building topic clusters around informational queries that do not convert is misaligned.
- **Match a real customer concern.** Pulled from ICP language, customer support tickets, sales call transcripts, Reddit threads.
- **Be defensible.** The brand should have genuine expertise here. Building clusters where the brand has nothing to say leads to thin content even with great writers.
- **Have search demand AND citation potential.** Verified via keyword research (SEO surface) AND shadow-demand signals (AEO surface): Reddit threads where the query type is discussed, AI Overview presence on related queries, query patterns in customer support and sales calls that reveal what people ask AI engines. A cluster strong on one surface but weak on the other is still viable; a cluster weak on both is a hobby.
- **Anchor an extractable hub.** The pillar page should be designed to be cited as the canonical reference for the cluster's primary query in AI responses, not just to rank in a list. This is where named methodologies, original data, and self-contained passages live (see `content-for-citations` and `named-framework-development`).

A small business might commit to 3-4 clusters. A mid-market business 5-7. An enterprise content program 8-12. More than 12 fragments attention; fewer than 3 leaves coverage gaps.

Document each cluster with:

- Cluster name and theme
- Pillar page topic (the central hub)
- 5-15 supporting page topics (the spokes)
- Primary keyword themes per page (SEO surface)
- AEO citation targets per page (what query types in AI engines should cite this page)
- Internal linking pattern (every spoke links to the pillar; pillar links to every spoke; spokes link to related spokes within the cluster)
- Named methodology or original data assets (if any) that anchor the cluster for AEO purposes
- Entity-authority work that supports the cluster (author bios, schema, external profile updates per `entity-presence`)

### 4. What is the publishing cadence?

Two cadences to lock:

**Production cadence:** how often new content publishes. Common patterns:

- Small program (1 writer half-time): 2-4 substantive pieces per month
- Medium program (1-2 writers full-time): 8-15 pieces per month
- Large program (3+ writers plus editor): 20-40 pieces per month

Quality of writers and depth of pieces both affect this. A small program publishing 12 thin pieces per month underperforms a small program publishing 3 substantive pieces per month.

**Refresh cadence:** how often existing content gets reviewed and updated. Recommended:

- High-value pages (top 10-20 traffic drivers): quarterly substantive review
- Medium-value pages: biannual review
- Tail pages: annual or as-needed (see `content-refresh`)

Most content programs over-invest in new and under-invest in refresh. Existing pages compound; new pages are bets.

### 5. Who owns what, and how is it measured?

- **Strategy owner:** who locks the topic clusters, approves new clusters, kills underperforming clusters. Usually a senior marketer or the brand owner.
- **Editorial owner:** who briefs writers, edits drafts, manages the calendar. Could be the same person as strategy owner at small scale; usually different at medium and up.
- **Writers:** named, with capacity and topical expertise documented.
- **Approval flow:** who reviews before publish. For brands with sensitive categories (legal, medical, regulated industries), document the legal/compliance step.
- **Distribution owner:** who handles publication, social posts, email, etc.

Measurement frame: track SEO and AEO outcomes in parallel, not nested.

**Output metrics (monthly):**

- Pieces published
- Pieces refreshed
- Cluster status against the strategy plan
- Entity-authority workstream status (profile updates, schema deployments, named methodology development per `entity-presence`)

**SEO engagement and outcome metrics (monthly, quarterly):**

- Impressions and clicks per cluster (from Search Console)
- Average position on primary cluster queries
- Conversion attribution from organic search
- Cluster-level traffic trend

**AEO engagement and outcome metrics (monthly, quarterly):**

- Mention rate across ChatGPT, Claude, Perplexity, Gemini (from `citation-tracking`)
- Citation rate across the same engines
- Position-in-response per query set
- AI Overview presence on cluster-relevant queries
- Competitive citation share

**Cadence:**

- Output and short-cycle engagement: monthly review
- SEO outcomes: monthly tracking, quarterly review
- AEO outcomes: monthly tracking, quarterly review (acknowledging the higher noise floor; see `citation-tracking` on citation instability)
- Cluster-level strategic review: quarterly

Both surfaces should be visible in any stakeholder report. A program reporting only SEO metrics is half the picture in 2026.

## Output Format

```markdown
# Content Strategy: [Brand]

**Date:** [YYYY-MM-DD]
**Strategist:** [Agent or user]
**Strategy horizon:** [Typically 12 months]
**Last reviewed:** [YYYY-MM-DD]

## Decision 1: Primary Business Outcome

[Single sentence stating the primary outcome. Optionally list 1-2 secondary outcomes the program also serves.]

## Decision 2: Primary Audience

[3-5 sentences. Specific enough that someone could screen a real candidate as in or out of audience.]

[Secondary audiences if applicable, with the same specificity.]

## Decision 3: Topic Clusters (3-7)

### Cluster 1: [Name]

- **Theme:** [One sentence on what the cluster covers and why it matters to the audience]
- **Pillar page:** [Topic and target URL]
- **Supporting pages (5-15):** [List with target queries]
- **Internal linking pattern:** [How spokes link to pillar and to each other]
- **Defensibility:** [What the brand brings that competitors do not]
- **SEO demand:** [Rough monthly volume across the cluster, sourced from keyword research]
- **AEO citation targets:** [What query types in AI engines should cite the pillar and key supporting pages; shadow-demand signals if relevant]
- **Named methodology or original data:** [If any anchor asset exists or is planned for the cluster]
- **Entity-authority dependencies:** [Author bios, schema, external profile updates that support this cluster]
- **Status:** [Not started / In progress / Mature / Refreshing]

[Repeat for each cluster]

## Decision 4: Cadence

- **Production cadence:** [N substantive pieces per month]
- **Refresh cadence:** [Top pages quarterly; mid biannually; tail annually]
- **Calendar:** [Link to or reference the editorial calendar tool]

## Decision 5: Ownership and Measurement

| Role | Person | Cadence |
|---|---|---|
| Strategy owner | [Name] | Quarterly strategy review |
| Editorial owner | [Name] | Weekly editorial planning, monthly review |
| Writers | [Names with capacity] | Per assignment |
| Approval flow | [Sequence] | Per piece |
| Distribution owner | [Name] | Per publish |

**Measurement (SEO and AEO tracked in parallel):**

- Output (monthly): pieces published, pieces refreshed, entity-authority workstream status
- SEO engagement (monthly): impressions, clicks, average position per cluster
- AEO engagement (monthly): mention rate, citation rate, position-in-response across ChatGPT, Claude, Perplexity, Gemini, AI Overview presence
- SEO outcomes (quarterly): conversions attributed to organic, baseline and current
- AEO outcomes (quarterly): citation share by cluster, competitive citation map, baseline and current
- Tools: GSC, GA4, CRM, AEO citation tracking (spreadsheet or platform per `citation-tracking`), brand tracking

## First-Quarter Roadmap

[Specific pieces to publish in the first 90 days, mapped to clusters. Concrete, dated, owned.]

## Year-One Roadmap (Quarter by Quarter)

- **Q1:** [Specific cluster work, refresh work, distribution work]
- **Q2:** [...]
- **Q3:** [...]
- **Q4:** [...]

## Off-Limits and Constraints

[From client-context: topics the brand will not cover, legal restrictions, review cycle constraints, voice constraints, distribution constraints.]

## Notes

[Anything else: pending hires, dependencies on other workstreams, expected timeline to outcome metrics, etc.]
```

## How to Pick the Right Clusters

Three filters, applied in order. Drop candidates that fail any one.

### Filter 1: Strategic fit

Does this cluster serve the primary business outcome on both the SEO and AEO surfaces?

- A lead-gen program: clusters should map to content the buyer reads in the consideration or decision phase. Top-of-funnel awareness content is a slower path to leads and only worth pursuing once the consideration/decision content exists. On the AEO surface, the cluster should target the queries buyers ask AI engines during evaluation ("best X for Y," "X vs Z," "is X worth it").
- A brand-authority program: clusters should map to areas where the brand has unique expertise and wants category recognition. On the AEO surface, these are the queries where the brand should be cited as the source.
- An AI citation program: clusters should map to query types the brand wants to be cited for in AI responses. The SEO surface still matters because traditional rank correlates (loosely) with citation rate.

A cluster that does not serve the primary outcome is a distraction, regardless of how interesting it is. A cluster that serves one surface and not the other is sometimes still worth pursuing, but the trade-off should be explicit.

### Filter 2: Defensibility

Does the brand have something the competition does not?

- First-hand experience (the brand actually does the thing)
- Proprietary data
- Named experts (real people with credentials)
- A perspective or methodology unique to the brand
- Access to customer outcomes or case studies

A cluster where the brand has nothing distinctive to say produces thin, derivative content even with skilled writers. Either build the underlying expertise first or pick a different cluster.

### Filter 3: Real demand

Does the audience actually search for this?

Verify via `keyword-research`. If the cluster's primary queries have under 50 combined monthly searches, the cluster is too niche for organic discovery (it may still be useful for nurture or sales enablement, but cannot drive standalone search traffic).

Note: real demand can also be "shadow demand", queries the audience asks AI engines, queries asked in Reddit threads, queries in support tickets. For AEO-aware programs, shadow demand matters as much as Google search volume.

## When the User Pushes Back

**"We do not have time for a 90-day strategy exercise."** Run a compressed version: 2 hours of conversation hitting the five decisions, captured in a one-pager. Better than no strategy. The full strategy can mature over the first quarter as the team executes.

**"Pick the topic clusters for me."** Resist. The clusters need to come from inside the brand's expertise. The skill can surface candidates from keyword research and competitive analysis, but the final call must be made by someone who knows what the brand can and cannot defensibly cover.

**"Why not just publish a lot and see what works?"** Some programs work this way (high-volume publishing with subsequent pruning via `content-audit`). The cost is the Helpful Content System penalizing the site for accumulated weak inventory before the pruning catches up. Strategy front-loads the filtering; high-volume-then-prune back-loads it. Both have costs. The strategy-first path produces fewer pages but a stronger site.

## Common Pitfalls

- **Too many clusters.** A brand cannot credibly own 15 topic areas. Pick fewer and go deeper. 3-7 is the right range for most.
- **Cluster sprawl.** Clusters that grow indefinitely without an editorial frame lose coherence. Define what is in the cluster and what is outside it before the writing starts.
- **Strategy without ownership.** A strategy document with no named owner is a document, not a strategy. The plan needs a person on the hook.
- **Measurement only on output metrics.** Publishing 30 pieces a quarter feels productive and is the wrong success metric. Outcomes lag output by 90-180 days. Track both, but tie the strategy review to outcomes.
- **Ignoring the existing portfolio.** A new strategy that pretends the existing site does not exist creates content that competes with itself. Strategy and `content-audit` are paired workstreams.
- **Voice drift.** Multiple writers without a voice guide produce content that reads as different brands. Lock voice in the strategy phase; reinforce in every brief.
- **Designing for SEO with AEO bolted on.** A program that designs topic clusters around keyword research and then "also tries to get cited by AI" produces content that ranks but does not extract well. Design for both surfaces from the start; the patterns are not in tension.
- **Designing for AEO with SEO ignored.** The inverse: a program chasing AI citations without traditional search foundations. Search rank still correlates with AI citation; both surfaces need infrastructure.
- **Entity authority work treated as a side project.** Author bios, schema, external profile consistency, and named methodologies are strategic decisions, not afterthoughts. Build them into the strategy alongside the content cluster plan.

## References

- `references/cluster-development-worksheet.md`: A guided worksheet for developing each topic cluster, including the defensibility and demand filters.
- `references/editorial-calendar-template.md`: A starting structure for the editorial calendar (cadence, ownership, dependencies, status).
- `examples/sample-content-strategy.md`: A worked content strategy for the fictional Cardinal Ridge Roofing.
