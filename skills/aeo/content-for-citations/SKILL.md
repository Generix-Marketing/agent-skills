---
name: content-for-citations
description: Use this skill when the user wants to write or rewrite content to be cited by AI engines (ChatGPT, Claude, Perplexity, Gemini, AI Overviews) rather than just rank in traditional search. Triggers include "write for AI search," "AEO content," "make this page get cited," "content for ChatGPT," "AI-friendly content," "write to get cited," "extractable content," "rewrite for AI," "GEO content." This skill produces or improves content using the patterns AI engines actually extract: inverted pyramid, quotable paragraphs, factual specificity, self-contained passages, intent-format match, and question-style headings. Reads client-context.md for voice. Pairs with on-page-audit (page-level SEO) and generix-brand-writer or other voice skills.
---

# Content for Citations

This skill produces content AI engines will extract and cite, not just content that ranks. The two overlap meaningfully (good AEO content is usually good SEO content) but the writing patterns differ in specific ways. This skill lays out those patterns and applies them to a new page or a rewrite.

The unit that wins in AI search is the self-contained quotable passage, not the page. A page with 2,000 words of beautifully written prose that builds to a conclusion is harder to cite than a 1,200-word page with a clear claim in the first paragraph followed by supporting evidence. The strategies below produce the second pattern.

## When to Run This Skill

Run it when:

- The user is writing or rewriting a page and wants it to perform in AI search
- The user has a page that ranks well in Google but is not being cited by AI engines
- The user is briefing a writer or content team and needs the brief to specify AEO patterns
- The `ai-search-audit` flagged the quotable paragraph check (#7) or the inverted pyramid check (#19) as failing
- The user is building cornerstone content (named framework explainers, original data writeups, comparison pages)

Skip it when:

- The user wants on-page SEO work (use `on-page-audit`)
- The user wants pure brand voice work (use `generix-brand-writer` or a voice-specific skill)
- The user wants to develop a named concept rather than write about an existing one (use `named-framework-development`)

## Before You Start

Read `client-context.md` for voice. AEO patterns and brand voice are not in tension; the most quotable content matches both the engine's extraction patterns and the brand's distinctive way of talking. Specifically watch for: words the brand uses, words the brand avoids, sentence-case vs title-case headings, em dash policy.

Identify the page's primary target query. Without it, "make this content more citable" is impossible to assess. The page is either built to be the answer to a specific question or it is not.

## A Reframe Before the Patterns: Citation Happens at the Section Level, Not the Page Level

AI engines do not retrieve and cite pages; they retrieve and cite passages, often a single paragraph or list section, sometimes a single sentence. Relevance happens at the chunk level, not the document level.

This changes how to think about writing for citation:

- A 3,000-word page is not the unit of competition. Each H2 section within it is its own unit, competing on its own merits to be extracted as the answer to a specific query.
- Every section needs to stand alone, lead with the answer, and be quotable in isolation. Repeating the page-level pattern at section level.
- Section-heading alignment matters more than overall page outline. If the H2 says "How long does a roof replacement take?", the section beneath must answer that question in the first sentence, not at the end of the section.

The six patterns below all serve the same underlying goal: make every section of the page independently citable. Apply them page-level for the opening; apply them section-level for every subsequent H2.

## The Six Patterns

These are the patterns that move citation rate. Use them.

### 1. Inverted Pyramid Opening

Lead with the answer. Supporting evidence follows.

**Test:** Show only the first paragraph to someone unfamiliar with the topic. Ask "what is this page about and what is the main point?" If they cannot answer confidently from that paragraph alone, the page fails.

**What it looks like:**

> *Bad:* "In the rapidly evolving landscape of search engine optimization, brands face unprecedented challenges as AI changes how people find information. Many practitioners struggle to keep up with the pace of change. This article explores..."

> *Good:* "Answer Engine Optimization (AEO) is the discipline of getting your content cited by AI engines like ChatGPT, Claude, and Perplexity. It overlaps with SEO but requires different content patterns: shorter answers placed earlier on the page, more specific claims, and explicit attribution of sources. This guide covers the six patterns that drive citation rate..."

The first version frames; the second version answers. AI engines extract from the second.

### 2. Quotable Sentences Front-Loaded

Every key page should have at least three sentences in its opening that could be lifted and cited verbatim without surrounding context.

**Test:** Read the first 300 words. For each sentence, ask: if this appeared alone in an AI response attributed to [brand], would it make complete sense? Would it be useful? Would it be credible? Count the sentences that pass.

**Patterns that produce quotable sentences:**

- **Specific statistics with attribution:** "Brands that publish original research are cited 5 to 10 times more often than brands that aggregate others' data." A real number, a real claim, a brand a citing engine can attribute.
- **Named definitions:** "AEO is [clear definition in one sentence]." Or "[Term we are introducing] means [definition]." Definitions are the most directly citable content type.
- **Contrarian insights:** "Common belief: [X]. The data shows [Y]." Easy for AI engines to extract because the structure is explicit.
- **Named frameworks:** "The [Framework Name] is a [N-step / N-part] approach to [outcome]." A reference point that ties the citation to the brand.

Avoid generic claims ("Roofing is an important investment for homeowners"), throat-clearing ("In today's competitive market..."), and second-person setups ("Have you ever wondered...").

### 3. Self-Contained Passages

Each major section of the page should make sense without context from earlier sections. Write as if a reader will land on this section first and last.

**What it looks like:**

> *Bad (depends on context):* "As discussed above, this is why the approach we recommend differs from traditional methods."

> *Good (self-contained):* "Cardinal Ridge's claim-first approach differs from traditional roofer workflows in three specific ways: the insurance adjuster meets the crew on-site, the damage assessment is photographed in 4K, and the claim packet is filed within 48 hours."

AI engines extract sections, not pages. Sections that read as continuations of earlier sections lose context when extracted.

### 4. Intent-Format Match

The format of the page should match the query type it targets.

| Query type | Best format |
|---|---|
| "Best X for Y" | Listicle with clear criteria, named options, brief recommendations |
| "How to do X" | Numbered step-by-step with explicit actions |
| "What is X" | Definition first, then explanation, examples last |
| "X vs Y" | Side-by-side comparison, clear winner-by-criterion structure |
| "X cost" | Specific numbers with context, range tables, factors-that-affect-cost section |
| "Why does X" | Direct answer, then 2-4 supporting reasons |
| "X near me" | Service area with named neighborhoods, local proof, schema for LocalBusiness |

**Test:** Search the target query in Google. Look at the top 5 results. What format are they? AI engines have already learned what format the query wants from what currently ranks.

A page targeting "how to choose a roofing contractor" written as a personal essay will not rank or get cited even if it is well-written. The query asks for a guide; the format should be a guide.

### 5. Question-Style and Aligned Headings

Two related rules.

**Question-style headings:** mirror how users ask the question, not internal labels.

> *Bad:* "Our Approach", "Key Considerations", "Background", "Overview", "Things to Know"

> *Good:* "How long does a roof replacement take?", "What does a roof replacement cost in Indianapolis?", "When should you replace a roof versus repair it?"

**Test:** Extract every H2 and H3 from the page. Search each as a Google query. Does a similar phrase appear in People Also Ask? If yes, the heading is doing AEO work. If the heading sounds like an internal section title, rewrite.

Alternative pattern when direct questions feel awkward: direct-answer summaries. "Measuring AI search visibility: the three metrics that matter." This signals what the section answers without being a literal question.

**Aligned headings:** every H2 should clearly match the content beneath it. A heading promising "How long does a roof replacement take?" must answer that question in the section body. Misaligned headings (where the section answers a different question than the heading promised) confuse AI engines and reduce extractability.

Industry research published in 2026 found that pages with clean, sequential heading hierarchies show meaningfully higher citation likelihood (roughly 2-3x) than pages with misaligned or mixed-hierarchy headings. The mechanic: AI engines map page sections to query intents largely through headings, then extract from the section beneath. Misalignment breaks the mapping.

**Test for alignment:** for each H2, read just the heading and just the first paragraph beneath it. Does the paragraph answer the heading's implied question? If not, either rewrite the heading or rewrite the section opening.

### 6. Factual Specificity

Specific beats vague. Always.

**What it looks like:**

> *Vague:* "Many homeowners find roof replacement intimidating."

> *Specific:* "About 60% of Cardinal Ridge customers come to us after a storm event; 40% schedule planned replacement on a roof 15+ years old."

> *Vague:* "Quality materials matter."

> *Specific:* "GAF Timberline HDZ shingles carry a 50-year limited warranty when installed by a GAF Master Elite contractor. Standard 3-tab asphalt shingles carry a 25-year warranty regardless of installer."

AI engines preferentially extract sentences with named entities, specific numbers, specific dates, and specific places. Vague generalizations are skipped because they are not citable.

Where the brand does not have specific data of its own, attribute to public sources ("according to the National Roofing Contractors Association..."). Specificity by attribution is still specificity.

## Two Additional Patterns Worth Naming

These two are sometimes treated as part of patterns above but deserve their own callouts based on the source frameworks.

### 7. Cite Sources Outbound

External links to authoritative sources supporting factual claims. AI engines treat outbound source citation as a meaningful trust signal; content that demonstrates research rigor is cited more reliably than content that asserts without backing.

The pattern:

- For every non-obvious factual claim, link to or cite the underlying source.
- Prefer primary sources (the original research, the official documentation, the company that produced the data) over secondary aggregators.
- A small number of well-chosen citations beats a flood of weak ones.
- Internal stat? Attribute to the brand ("Cardinal Ridge data, 2026"). External stat? Attribute to the source.

This is the inverse of the "buying expertise by citing experts" pattern: it works because the citation itself is evidence the writer knows where the field's authoritative sources live.

### 8. Freshness and dateModified Hygiene

AI engines prefer recent content. Industry research in 2026 found that the large majority of pages cited by AI engines (roughly 70%+) were updated within the last 12 months. This sets a concrete bar: an evergreen page that has not been touched in 18-24 months is at meaningful citation disadvantage versus a competitor refreshing similar content quarterly.

The pattern:

- Add visible publication date AND visible "Last updated" date to every editorial page.
- Update dates only on substantive content changes (new statistic, restructured section, revised conclusion), not on typo fixes or theme updates.
- Confirm the CMS auto-updates the Article schema `dateModified` field on save; many do not by default. (See `schema-for-aeo` for the test.)
- Set a quarterly review cadence for high-value pages: revisit, refresh anything stale, update both visible and schema dates.
- For pages older than 18 months that still rank for live queries, prioritize a real content refresh in the next sprint.

Stale content with broken links, outdated statistics, or references to retired tools loses citation potential faster than most teams realize.

## A Rewrite Workflow

When rewriting an existing page:

1. **Identify the target query.** What is this page trying to be the answer to?
2. **Check intent-format match.** Does the current page format match what wins for this query? If not, restructure first.
3. **Rewrite the opening with inverted pyramid + quotable sentences.** Lead with the answer in the first sentence. Three citable sentences in the first 200 words.
4. **Audit each section for self-containment.** Where one section depends on another, add the needed context inline.
5. **Replace internal-label headings with question-style or direct-answer headings.** Search each new heading on Google to confirm it matches real query patterns.
6. **Sweep for vague generalizations.** Replace with specific numbers, named entities, or attributed claims.

For a new page, work in the same order: pick the target query, choose the format that matches, write the answer-first opening, build self-contained sections under question-style headings, lean on specificity.

## Output Format

When the user wants this skill to produce or rewrite a page directly:

```markdown
# [Page title, matching target query]

[Lead paragraph: the answer in 2-4 sentences. At least one specific claim or definition.]

[Second paragraph: 2-3 quotable supporting sentences with specific numbers or named entities.]

## [Question-style H2]

[Self-contained section. Lead with the answer to the heading question.]

## [Question-style H2]

[Self-contained section.]

[Continue, intent-format matched to target query.]
```

When the user wants assessment of existing content:

```markdown
# Content for Citations Review: [URL or page name]

**Target query:** [What the page is or should be the answer to]
**Current format:** [Article / listicle / comparison / etc.]
**Format matches intent:** [Yes / No / Partially]

## Pattern Audit

| Pattern | Status | Notes |
|---|---|---|
| 1. Inverted pyramid opening | Pass / Fail | [What needs to change] |
| 2. Quotable sentences front-loaded | [N of 3 target] | [Specific sentences to add] |
| 3. Self-contained passages | Pass / Issue | [Sections that depend on context] |
| 4. Intent-format match | Pass / Fail | [Format change needed] |
| 5. Question-style headings | [N of N converted] | [Headings to rewrite] |
| 6. Factual specificity | Pass / Weak | [Vague claims to replace] |

## Recommended Rewrites

[Specific edits: this paragraph becomes this paragraph, this heading becomes this heading.]
```

## When the User Pushes Back

**"This will make the writing feel choppy."** It usually does not. Inverted pyramid and short opening claims feel slightly different from essay writing but read as confident and clear. The pattern is journalism, not robotic writing. If the brand voice is essayistic and the user does not want to break it, the compromise is an answer-first summary block at the top of an otherwise narrative page.

**"My writer thinks SEO and AEO advice ruins their voice."** Common pushback. Counter: voice is about word choice, sentence rhythm, and personality. The six patterns above are about structure and specificity. They can be applied to any voice. A page can sound exactly like the brand AND lead with the answer AND have quotable sentences. Voice and AEO patterns are not in tension; they live at different levels of the writing.

**"Will this still work for narrative content?"** Narrative content has a different optimization ceiling in AI search; storytelling does not extract as cleanly as definitions. The fix: lead a narrative piece with an answer-first summary or key takeaway at the top, then let the narrative unfold below. Best of both.

## Common Pitfalls

- **Treating "quotable" as "tweetable."** Quotable means self-contained and citable. Tweetable means short and provocative. Different things. A 60-word definition is quotable; a snarky two-line zinger is not.
- **Over-using FAQ blocks as a shortcut.** FAQ sections are valuable when the questions match real PAA queries. They are not a substitute for well-structured body content. AI engines extract from body content too.
- **Confusing format with structure.** A listicle structure for a "best X" query is correct; padding it with throat-clearing intros and conclusions defeats the structure.
- **Adding statistics without sources.** Specificity without attribution reads as unsupported. Attribute every number to a real source.
- **Letting AEO patterns override voice.** The brand's voice is the differentiator. The patterns are scaffolding. If a sentence reads like generic AI-engine-bait, rewrite until it sounds like the brand.

## References

- `references/before-and-after-examples.md`: Worked rewrites of common page openings, showing the six patterns applied side-by-side.
