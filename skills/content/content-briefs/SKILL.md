---
name: content-briefs
description: Use this skill when the user wants to write a content brief, brief a writer, prepare a content assignment, hand off a piece to a freelance writer, document what a writer needs to produce a page, or build a brief template. Triggers include "content brief," "writer brief," "brief a writer," "content assignment," "brief template," "what does the writer need," "hand off to a writer," "assign content," "SEO brief." This skill produces content briefs that give writers everything they need to produce a page that performs: target query, intent, format, primary and secondary keywords, structural outline, internal link plan, schema requirements, voice notes. The bridge between strategy and execution. Reads client-context.md.
---

# Content Briefs

This skill produces content briefs that work. The output is a brief a writer can take and produce a page from without coming back with questions, that gives the writer enough creative freedom to produce something good, and that the writer can defend if the editor questions specific choices.

The point of a brief is not to specify every word. It is to specify enough constraints that the page will perform AND leave enough room that the writer can write well.

Most content programs over-brief (paralyzing writers with prescription) or under-brief (leaving writers to guess at intent, audience, and outcomes). This skill targets the middle.

## When to Run This Skill

Run it when:

- The user is briefing a writer for a specific page
- The user is building a brief template for their team
- The user wants to assess whether existing briefs are adequate
- The user is briefing a freelance writer who needs more structure than an in-house writer
- The user is briefing a writer who is new to the brand and needs voice and audience context

Skip it when:

- The user is doing strategic planning (use `content-strategy`)
- The user is writing the content directly (use a voice skill like `generix-brand-writer`)
- The user is auditing existing pages (use `content-audit` or `on-page-audit`)

## Briefs Serve Both SEO and AEO

A modern brief targets two surfaces in parallel, not one.

**The SEO surface** wants a page that ranks: target query alignment, structural patterns search engines reward, internal link signals, schema. The brief specifies these explicitly so the writer can produce a page that earns position.

**The AEO surface** wants a page that gets cited: section-level passage extractability, inverted-pyramid openings per section, quotable sentences with factual specificity, named methodologies where applicable, schema that supports entity recognition. The brief specifies these alongside the SEO targets so the writer can produce content that AI engines actually extract.

The two are not in tension. A page with great quotable sentences and clean section alignment ranks well AND gets cited. A brief that specifies only the SEO targets produces pages that rank but get passed over by AI engines.

Throughout the brief anatomy below, both surfaces are surfaced explicitly. Cross-references to `content-for-citations` (AEO writing patterns), `schema-for-aeo` (citation-leverage schema), and `entity-presence` (author bio requirements) are non-optional for any cluster-anchoring piece.

## The Brief Anatomy

A working brief has these sections. Skipping any of them shifts the work to the writer (which means slower turnaround, more revisions, and an uneven final product).

### 1. Page identity

- **Working title** (the writer can change it; you state your intent)
- **Final URL slug** (locked; engineering and SEO need it)
- **Cluster or category** (which content cluster this belongs to)
- **Page type** (pillar, supporting article, comparison, FAQ, listicle, case study, etc.)
- **Status target** (when ready, when published)

### 2. Strategic context

- **Primary business outcome this page serves** (one sentence: leads, brand authority, AEO citation, support deflection, etc.)
- **Funnel stage** (top, mid, or bottom)
- **Cluster role** (pillar / supporting; if supporting, link to the pillar page or brief)
- **SEO target:** the rank position the page is built to achieve (e.g., "top 5 on the primary query within 6 months")
- **AEO target:** the citation outcome the page is built to achieve (e.g., "cited in AI responses to the cluster's top 3 queries; included in Google AI Overviews on the primary query")
- **Why this page exists right now** (one or two sentences on the timing reason; helps the writer understand urgency and emphasis)

### 3. Audience

- **Primary reader** in their own words (not "marketing managers" but "marketing managers at 50-500 person B2B SaaS who own SEO")
- **What the reader is trying to figure out** when they land on this page
- **What they already know** (assumed baseline; affects how much the writer explains)
- **What objection or hesitation the reader brings**

### 4. Target query and intent

- **Primary keyword or query** (the one phrase the page is the answer to)
- **Intent classification** (informational, commercial investigation, transactional, navigational)
- **Format implied by intent** (definition, listicle, comparison, how-to, etc.)
- **Top 5 ranking pages for the primary query** (what is currently winning in traditional search; the writer should see them)
- **Top 3-5 cited sources in AI engines for the primary query** (what currently gets cited in ChatGPT, Claude, Perplexity, Gemini, AI Overviews; identifies the AEO competitive set, which often differs from the SEO competitive set)
- **What the writer should do differently** than what is currently winning on either surface

### 5. Secondary keywords and related queries

- **3-7 secondary keywords or related queries** the page should also address (these become natural inclusions, not stuffed; they often map to subsections)
- **People Also Ask questions for the primary query** (sourced from a recent SERP check; these often become FAQ entries)

### 6. Structural outline

- **H1** (locked or strongly suggested; should be a question-style or direct-answer phrasing where possible per `content-for-citations`)
- **H2 outline** (the writer can adjust order, propose additions, but the spine is here)
- **For each H2:** brief note on what that section should accomplish AND what passage-level extraction goal it serves (the answer that section should be cited for). Per `content-for-citations`: each H2 must align with its body content so AI engines can map section to query.
- **Opening paragraph requirement:** inverted pyramid; minimum 3 quotable sentences in the first 200 words.
- **Length range** (e.g., "1,500-2,500 words; depth matters more than padding")
- **Format requirements** (lists, tables, comparison structures, embedded media)
- **Section-level requirements:** each major section should stand alone (self-contained, can be cited without surrounding context per `content-for-citations`)

### 7. Internal links

- **Pages this page should link out to** (with anchor text suggestions or topical guidance)
- **Pages that will link to this page** (so the writer knows the page is not orphaned; this is the fan-out rank signal, one of the top citation drivers for AEO)
- **Pillar page** (if this is a supporting piece, the canonical pillar URL)
- **Inbound link target count:** for high-priority pages, target 8-15 internal links coming in from related cluster pages. Document which pages will be updated to add the inbound link.

### 8. External sources

- **2-5 authoritative external sources** the writer should cite for credibility
- **Off-limits sources** (competitor blogs the brand does not want to link to; low-quality content farms)
- **Citation style** (inline links vs reference section)

### 9. Schema and technical

- **Schema type** to deploy on the page (Article, FAQPage, HowTo, etc.; reference `schema-for-aeo` for AEO-leverage schema patterns)
- **Author Person schema** required: yes/no (yes for any editorial piece in an authority-driven cluster)
- **dateModified** must update on real edits: the writer should not just stamp a new date; the CMS must actually reflect the edit (see `schema-for-aeo`)
- **Image requirements** (count, type, alt text guidance)
- **Mobile / above-the-fold considerations** if any
- **Meta description suggestion** (the writer can refine; this is "preview control," a top-tier AEO signal as well as a SEO one)

### 10. Voice and brand

- **Voice notes** pulled from `client-context.md`: words to use, words to avoid, sentence-case vs title-case, em dash policy, person and tense
- **Tone for this specific piece** (some pieces lean more serious or playful within the brand voice)
- **First-person, second-person, or third-person** convention

### 11. Original elements

- **Original data, quotes, photos, or case studies** to include (sourced from where, owner SME contact)
- **Anything the writer needs to source themselves** (interviews, original research, photo coordination)

### 12. Process

- **Writer**
- **Editor / reviewer**
- **SME contact** (for fact-checks and approvals)
- **Draft due**
- **Edit cycle** (number of rounds expected)
- **Publish target**

### 13. Anything else

- Constraints from client-context: legal sensitivities, off-limits topics, regulatory considerations
- Notes on what success looks like (qualitative or quantitative)
- Open questions the editor will answer if asked

## How Long Should a Brief Be?

Long enough that the writer has what they need; short enough that it doesn't take longer to write than the article.

Reasonable benchmarks:

- **Short piece (500-1,000 words):** 1-page brief, ~300-500 words
- **Standard piece (1,000-2,500 words):** 2-page brief, ~600-1,000 words
- **Cornerstone piece (2,500+ words):** 3-4 page brief, ~1,000-2,000 words

A brief that takes 2 hours to write for an article that takes 8 hours to write is reasonable. A brief that takes 4 hours for an article that takes 6 hours is over-investing in brief.

## When the Writer Pushes Back on the Brief

Good writers will push back. Their pushback is useful signal.

- **"This outline is too rigid."** Often correct. The brief should specify the spine, not the prose. If the writer can propose a better outline that hits the same strategic goals, take it.
- **"The target query doesn't match what searchers actually want."** Sometimes correct. Re-check the SERP. If the writer is right, update the brief; the strategy needs adjusting.
- **"There isn't enough source material to write this well."** Sometimes correct. If the brand truly does not have the underlying expertise or data, the brief is asking for a fabricated piece. Either get more source material or de-scope the brief.
- **"The voice notes conflict with what would actually rank for this query."** Sometimes correct. Voice and SEO/AEO patterns are not in tension, but specific brief constraints can be. Negotiate.

If the writer is wrong, the brief gives both of you the language to discuss the disagreement specifically.

## Output Format

The brief is itself the output. Use the structure above as a template. Concrete starting layout:

```markdown
# Brief: [Working Title]

## Page Identity
- Working title:
- URL slug:
- Cluster:
- Page type:
- Status target:

## Strategic Context
- Primary business outcome:
- Funnel stage:
- Cluster role:
- Why this page exists right now:

## Audience
- Primary reader:
- What they're trying to figure out:
- What they already know:
- Objections or hesitations:

## Target Query and Intent
- Primary keyword:
- Intent:
- Format implied:
- Top 5 currently ranking:
- What we should do differently:

## Secondary Keywords
- Secondary terms:
- People Also Ask questions:

## Structural Outline
- H1:
- H2 outline (with section goals):
- Length range:
- Format requirements:

## Internal Links
- Outbound links:
- Inbound links (already planned):
- Pillar page:

## External Sources
- Authoritative sources to cite:
- Off-limits sources:
- Citation style:

## Schema and Technical
- Schema type:
- Image requirements:
- Mobile considerations:
- Meta description suggestion:

## Voice and Brand
- Voice notes:
- Tone:
- Person and tense:

## Original Elements
- Original assets to include:
- What the writer sources:

## Process
- Writer:
- Editor:
- SME contact:
- Draft due:
- Edit cycle:
- Publish target:

## Anything Else
- Constraints:
- Success criteria:
- Open questions:
```

## Common Pitfalls

- **Briefing the prose, not the outcome.** A brief that specifies sentence-by-sentence wording paralyzes the writer and produces flat content. Specify outcomes; let the writer find the prose.
- **No SERP context.** Briefing without the writer seeing the top 5 currently ranking pages leads to pieces that miss the format the query rewards.
- **Audience defined as a category.** "B2B marketers" is not an audience. "Marketing managers at 50-500 person B2B SaaS who own SEO and report to a VP of marketing" is.
- **No internal link plan.** Forces the writer to either guess at internal links or skip them entirely. Both produce orphan pages.
- **No voice notes.** Writers without voice notes will default to whatever generic SEO style they were trained on. The brand voice gets lost.
- **No SME contact.** For pieces requiring specific expertise, leaving the writer to fabricate or guess produces inaccurate content. Name the SME and commit them to availability.
- **Brief as a one-time artifact.** A brief lives until the piece is published. Update it as the writer surfaces issues or as strategic context shifts.

## References

- `references/brief-template-by-page-type.md`: Adapted brief templates for the most common page types (pillar, supporting article, comparison, listicle, FAQ, case study, location page).
