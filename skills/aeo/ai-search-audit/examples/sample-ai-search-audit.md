# AI Search Audit: Cardinal Ridge Roofing Co.

> Fictional example for illustration. Brand name, URL, and findings are made up.

**Date:** 2026-05-23
**Auditor:** Agent (using `ai-search-audit` skill, with client-context for Cardinal Ridge Roofing loaded)
**Tools used:** Direct testing on ChatGPT, Claude, Perplexity, and Gemini; manual Google SERP checks; Chrome DevTools for JS rendering; Common Crawl index lookup; Rich Results Test for schema validation
**Test query set:** 12 queries covering problem-aware roof damage, category recommendations for Indianapolis roofers, comparison queries on materials and insurance, and direct brand queries
**Mode:** Deep audit

## Executive Summary

Cardinal Ridge has a foundational AEO gap that limits everything downstream: the brand is recognized by name but described thinly, no AI platform attributes any named expertise or framework to the brand, and citation rate is effectively zero across all four major engines despite a respectable mention rate (~25%) in local roofing queries. The most material issue is not technical (crawler access and rendering are clean) but content and authority: the brand has no original data, no named methodology, and only generic content competing with thousands of similar roofer sites. The audit's diagnostic places Cardinal Ridge in the "Thin" category across ChatGPT, Claude, and Perplexity, with traces of "Wrong Language" (the brand's plainspoken voice and insurance expertise are not surfacing). Recommended sequencing: ship the insurance-claims cluster from the broader content roadmap (the original-expertise asset most likely to attract third-party citation), develop a named methodology for the insurance claim process, and aggressively standardize entity descriptions across LinkedIn, GBP, and the About page to close the entity-consistency gap. Expected timeline: meaningful mention rate movement in 60-90 days, citation rate movement in 6-9 months as third-party citations accumulate and propagate into training data.

## Diagnostic: How LLMs Currently See the Brand

Ran "Describe Cardinal Ridge Roofing in one paragraph, based on what you know from your training data. Be honest about what you know and do not know" across three platforms.

**ChatGPT:** "Cardinal Ridge Roofing is a residential roofing contractor based in the Indianapolis area, offering services such as roof replacement and repair. I do not have specific details on their pricing, service area boundaries, or what differentiates them from other Indianapolis-area roofers."

Categorization: **Thin**. Brand recognized, description generic, no differentiators surfaced.

**Claude:** "Cardinal Ridge Roofing appears to be a roofing company. I do not have detailed information about this specific business, including its location, services, or history."

Categorization: **Thin** trending toward **Absent**. Less knowledge than ChatGPT.

**Perplexity:** "Cardinal Ridge Roofing Co. is a family-owned roofing contractor in the Greater Indianapolis area, established 2003, offering residential roof replacement and repair with a focus on insurance claim work. They serve Marion, Hamilton, Hendricks, and Johnson counties."

Categorization: **Accurate**. Perplexity is reading the live site and the GBP profile and synthesizing accurately.

Dominant pattern: **Thin** in training-data-dependent engines (ChatGPT and Claude). **Accurate** in live-retrieval engine (Perplexity).

Implication: The brand's recent positioning has not propagated into training data, and the brand has not produced enough citable content for training data to form a richer model. The fix is twofold: (1) generate the kind of content that gets cited in third-party publications (original data, named methodology, expert quotes in trade press); (2) ensure all external profiles describe the brand in consistent, current language so that the next training cycle pulls a coherent picture.

## Tier 1: Critical Blockers

| # | Check | Status | Severity | Action |
|---|---|---|---|---|
| 1 | Describe-the-brand baseline | Thin / Wrong Language | Diagnostic | Frames the rest of the audit |
| 2 | AI crawler access | Pass | None | None |
| 3 | JavaScript rendering | Pass | None | None |
| 4 | Perplexity citation gap map | Major gap | P1 | See below |
| 5 | Common Crawl presence | Pass | None | None |

### 2. AI Crawler Access

`robots.txt` returns 200, contains no AI-specific Disallow rules, has explicit Allow patterns for GPTBot, PerplexityBot, anthropic-ai, Google-Extended, CCBot, and Meta-ExternalAgent (added during the SEO `technical-audit` engagement). Server logs over the past 30 days confirm GPTBot, PerplexityBot, Google-Extended, and CCBot all making regular requests. Bytespider and Applebot-Extended have not visited recently; not a current concern but worth monitoring.

### 3. JavaScript Rendering

Sampled six page templates (homepage, services hub, individual service, location landing, blog post, contact). All render full body content without JavaScript. Site is WordPress with Divi theme; theme outputs server-side HTML by default. Clean.

### 4. Perplexity Citation Gap Map

Ran 10 queries from the test set on Perplexity. Cited sources across responses:

- HomeAdvisor (cited in 7 of 10 responses)
- Angi (cited in 6 of 10)
- This Old House (cited in 4 of 10)
- Indianapolis Star (cited in 3 of 10, primarily on storm-related queries)
- Bob Vila (cited in 3 of 10)
- GAF roofing (cited in 2 of 10, materials queries)
- Reddit r/Indianapolis (cited in 2 of 10, contractor recommendation queries)
- Three local competitor sites (cited 1-2 times each across the set)
- Cardinal Ridge: cited 0 of 10 times

The brand is not in the citation set in any category. Competitor B is the only Indianapolis-area roofer cited (once, on a cost query).

Diagnosis: The cited set is dominated by category aggregators (HomeAdvisor, Angi), national home-improvement publications (This Old House, Bob Vila), local press (Indianapolis Star), and one platform (Reddit). To enter the citation set, Cardinal Ridge needs to either be listed prominently on the aggregators (already in the off-page workstream), get quoted in the national publications (PR workstream), get quoted in local press (the storm-damage data piece is the lever), or generate Reddit engagement that earns recommendations.

### 5. Common Crawl Presence

Domain appears in the three most recent Common Crawl indices, with 78-94 pages indexed per crawl. Healthy presence. No fix needed.

## Tier 2: Citation Rate Drivers

| # | Check | Status | Severity | Action |
|---|---|---|---|---|
| 6 | Named framework or methodology | Absent | P1 | Develop one for insurance claim process |
| 7 | Quotable paragraph audit | Major gap | P1 | Rewrite openings on 10 key pages |
| 8 | Original data published and cited | Absent | P1 | Storm-damage data piece (in off-page roadmap) |
| 9 | Brand in Wikipedia category articles | Absent | P2 | Contribute to Indianapolis roofing-related articles if applicable |
| 10 | Google AI Overviews on category queries | Brand absent | Diagnostic | Tracking signal; addressed by Tier 2 work generally |
| 11 | FAQ content from real user queries | Partial gap | P2 | Replace internally-written FAQs with PAA-sourced versions |
| 12 | Citation rate measurement | 0% across all engines | Diagnostic | Establish baseline and tracking cadence |

### 6. Named Framework or Methodology

Cardinal Ridge owns no named framework. The brand has 20+ years of insurance claim expertise but talks about it in generic terms ("we handle insurance paperwork"). This is the single highest-leverage AEO content investment available.

Recommendation: develop a named methodology for the insurance claim process. Working name: "The Cardinal Ridge Claim Process" or similar. Document the specific steps Cardinal Ridge takes that competitors do not (inspection-to-claim-filing-to-completion). Publish as a definitive resource. Reference in every insurance-related communication.

See `named-framework-development` for the full development path.

### 7. Quotable Paragraph Audit

Reviewed first 300 words of 10 key pages:

- Homepage: 0 of 3 target quotable sentences. Opens with "Welcome to Cardinal Ridge Roofing, your trusted Indianapolis roofer..."
- /services/roof-replacement-indianapolis/: 0 quotable sentences. Opens with promotional language.
- /services/storm-damage-inspection/: 1 quotable sentence (a sentence about insurance claim timing).
- 10 sampled blog posts: average 0.5 quotable sentences per opening.

The site is written for human readers without context, not for LLMs that need self-contained claims. Most openings are promotional rather than informational.

Recommendation: rewrite openings on the top 10 pages using the patterns in `content-for-citations`. Lead with a specific claim, statistic, or definition. Save promotional language for later in the page.

### 8. Original Data

Cardinal Ridge has not published original data. The storm-damage data piece already scoped in the off-page roadmap is the right first project. Once published, the distribution work (pitching to local press, sending to practitioners) determines whether it actually accumulates third-party citations.

### 9. Wikipedia

Cardinal Ridge is not in Wikipedia, which is appropriate (likely below notability threshold for its own article). However, there is no relevant Wikipedia article on "Indianapolis roofing" or similar where the brand could be mentioned. The path here is indirect: get cited in national category articles about roofing materials, storm damage repair, or insurance claim processes. If a Wikipedia editor pulls examples, the brand needs to exist in cited sources. Not a near-term priority.

### 10. Google AI Overviews

Ran 5 category queries. AI Overview appears on 4 of 5. Cited sources are HomeAdvisor, Angi, This Old House, and one national roofer (Erie Home). Cardinal Ridge not cited. Two competitor sites (Competitor A and Competitor B) also absent. The local market is not yet a strong source in AI Overviews; this is opportunity.

### 11. FAQ Content

Site has an FAQ page with 12 questions. Compared to PAA results for similar topics:

- 4 questions roughly match real PAA patterns
- 8 questions are written from the brand's perspective ("What sets us apart?", "Why choose Cardinal Ridge?")

Recommendation: replace the 8 internal-perspective questions with PAA-sourced versions. Add FAQPage schema once content matches real query language. Also: add FAQ sections to the top 5 service pages.

### 12. Citation Rate

| Engine | Queries run | Brand mentioned | Brand URL cited | Mention rate | Citation rate |
|---|---|---|---|---|---|
| ChatGPT | 12 | 3 | 0 | 25% | 0% |
| Claude | 12 | 2 | 0 | 17% | 0% |
| Perplexity | 12 | 1 | 0 | 8% | 0% |
| Gemini | 12 | 3 | 1 (in an AI Overview context) | 25% | 8% |

Mention rate is modest (~20% across engines, mostly on direct brand queries plus a few category queries). Citation rate is effectively zero. This is the gap. Mention rate will improve with off-page work and the named framework; citation rate will improve as cited third-party sources accumulate and propagate.

## Tier 3: Entity Authority

| # | Check | Status | Severity | Action |
|---|---|---|---|---|
| 13 | Entity consistency across profiles | Major gap | P1 | Standardize descriptions on LinkedIn, GBP, About page, Crunchbase |
| 14 | Organization schema sameAs | Partial | P2 | Add LinkedIn, GBP, BBB to sameAs |
| 15 | Author Person schema | Absent | P2 | Add author bios with Person schema |
| 16 | dateModified actually updates | Issue | P2 | CMS configuration fix needed |
| 17 | Internal linking around AEO pages | Weak | P2 | Cluster around insurance and storm content |
| 18 | Headings as user questions | Mixed | P2 | Rewrite section headings on 10 key pages |
| 19 | Inverted pyramid structure | Major gap | P1 | Rewrite openings (overlaps with Check #7) |
| 20 | Position tracking | Not in place | Diagnostic | Set up monthly tracking |

### 13. Entity Consistency

Compared brand descriptions across:

- Homepage Organization schema description: "Cardinal Ridge Roofing Co. provides residential roof replacement and repair across the Greater Indianapolis area, with a focus on insurance claim work. Family-owned since 2003."
- LinkedIn company page About: "Indianapolis area roofers. Quality work, fair prices."
- Google Business Profile description: 180 chars, generic positioning, does not mention family-owned or insurance focus.
- BBB profile description: Default short blurb, no positioning.
- About page on site: "Cardinal Ridge Roofing was founded in 2003 by [Owner Name] with the goal of providing honest, quality roofing work to Indianapolis homeowners. Today, we serve four counties across the metro area..."

The five descriptions are five different stories. Consistency work is high-leverage and cheap.

Recommendation: adopt one canonical paragraph as the source of truth. Push that paragraph (or near-variants) to every profile. Specifically: rewrite LinkedIn About, expand GBP description (using the full 750 characters), update BBB profile, ensure homepage Organization schema description matches the About page lead.

### 14. Organization Schema sameAs

Current sameAs array on homepage contains: Facebook, Instagram. Missing: LinkedIn (exists but not linked), Google Business Profile (the maps URL), BBB profile, Angi listing.

Quick fix: add the missing profiles to sameAs. Validate.

### 15. Author Person Schema

No author Person schema deployed. Blog posts use "By Cardinal Ridge Team" generic byline. No author bio pages exist.

Recommendation: create bio pages for the owner and the office manager (two named contributors). Add Person schema with sameAs to LinkedIn. Update blog posts to byline these specific people. This is moderate effort but unlocks one of the harder authority signals to fake.

### 16. dateModified

Spot-checked Article schema on three blog posts. dateModified matches publication date in all three. Confirmed via WordPress test: editing and saving a post does not update dateModified.

Recommendation: configure the WordPress theme (or use a plugin) to auto-update dateModified on content save. Test with a real edit. This is a small dev task with disproportionate AEO impact for older content that gets refreshed.

### 17. Internal Linking

Identified the 5 pages most important for AEO:

1. /services/roof-replacement-indianapolis/ (the primary commercial page)
2. /resources/insurance-claim-roof-replacement-guide/ (planned)
3. /resources/roof-replacement-cost-indianapolis/
4. /services-areas/carmel/ (representative neighborhood)
5. (Future: the storm-damage data piece)

Current internal link counts to each are modest (4-12 links). Linking pages are not always topically related (a lot of generic footer-driven links rather than contextual ones). Recommendation: build topical clusters as the new content from the broader roadmap ships. Each cluster of related content should link to its central hub page with descriptive anchor text.

### 18. Heading Structure

Spot-checked five key pages. Heading patterns:

- Homepage: "Welcome", "Our Services", "Why Choose Us", "Get Started" (all internal labels)
- Service pages: mix of question-style and internal labels
- Blog posts: better; many already use question-style headings

Recommendation: rewrite homepage and service page headings to question or direct-answer formats. The blog posts are mostly fine.

### 19. Inverted Pyramid

Most pages build context before reaching the point. Same pattern as Check #7 (quotable paragraph audit). Rewrite addresses both.

### 20. Position Tracking

Not in place. Currently measuring mention rate ad-hoc. Recommendation: implement the monthly tracking cadence from `citation-tracking` with the established query set. Capture mention, citation, position. Spreadsheet sufficient for now; consider a paid platform at the 6-month mark if scale warrants.

## Top Five AEO Priorities

1. **Develop and publish a named methodology for the insurance claim process.** Tier 2 #6. ~40 hours of content + design + distribution work. The single highest-leverage AEO investment available. Owner: Cardinal Ridge owner (SME) + writer.
2. **Rewrite openings of 10 key pages using inverted pyramid and quotable paragraphs.** Tier 2 #7, Tier 3 #19. ~30 writer hours. Immediate impact on extractability. Owner: writer.
3. **Standardize brand descriptions across LinkedIn, GBP, BBB, About page, and Organization schema.** Tier 3 #13. ~4 hours. Quick win that improves entity consistency at the next training cycle. Owner: marketing assistant + owner sign-off.
4. **Ship and distribute the storm-damage original data piece.** Tier 2 #8. ~16-20 hours (already in off-page roadmap). Builds the brand into the cited set in local press, which then propagates into training data. Owner: writer + business owner.
5. **Set up monthly AI search tracking with established baseline.** Tier 2 #12, Tier 3 #20. ~2 hours initial setup, ~2 hours per monthly cycle. Without this, attribution of changes is guesswork.

## Recommended Sequencing

1. **Sprint 1 (next 2 weeks):** Standardize entity descriptions (Priority #3). Establish tracking baseline (Priority #5). FAQ rewrites using PAA-sourced questions (Check #11).
2. **Sprints 2-4 (next 6 weeks):** Rewrite the top 10 page openings (Priority #2). Begin the insurance methodology development (Priority #1). Dev fix for dateModified (Check #16).
3. **Sprints 5-8 (next 8 weeks):** Publish and launch the named insurance methodology. Ship the storm-damage data piece. Add author bios with Person schema.
4. **Quarter 2:** Internal linking cluster work as new content ships. Pitch the methodology and data to local press (overlaps with off-page workstream).
5. **Ongoing:** Monthly citation tracking. Quarterly entity consistency audit. Watch the describe-the-brand baseline shift over 6-12 months.

## Notes

- Tier 1 is clean. This is the best technical AEO foundation among the local roofing competitive set, per spot checks. The work is content and authority, not infrastructure.
- The single biggest opportunity unique to Cardinal Ridge is the insurance expertise. No competitor in the local set has a named methodology or substantive content there. The first roofer to claim this space owns it for years.
- Live-retrieval engines (Perplexity, ChatGPT browsing) are reading the current site correctly. The training-data lag means visible improvement in ChatGPT and Claude responses may take 6-9 months even after the work ships. Set expectations accordingly with the owner.
- Recommended re-audit cadence: full deep audit in 6 months (November 2026), monthly tracking updates in between.
