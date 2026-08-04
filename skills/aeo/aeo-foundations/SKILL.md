---
name: aeo-foundations
description: Use this skill when the user asks foundational questions about AEO (Answer Engine Optimization), AI search, LLM visibility, generative engine optimization (GEO), or how to get cited by ChatGPT, Claude, Perplexity, Gemini, or Google AI Overviews. Triggers include "what is AEO," "how do I show up in ChatGPT," "AI search," "answer engine optimization," "GEO," "LLM SEO," "AI visibility," "how to get cited by AI," "how does Perplexity work," "AI Overviews." This is a primer skill, not an audit or recommendation. It sets up the mental model the rest of the AEO category uses. Skip it when the user already knows the basics and is asking for a specific deliverable (audit, citation tracking, content rewrite).
---

# AEO Foundations

This is the conceptual primer for the AEO category. AEO (Answer Engine Optimization) is the discipline of getting your content surfaced and cited by AI answer engines: ChatGPT, Claude, Perplexity, Gemini, Google AI Overviews, and the next generation of conversational interfaces. It overlaps with SEO but is not the same game.

Load this skill when someone needs a mental model before tactics, or when another AEO skill needs to anchor a concept.

## When to Run This Skill

Run it when:

- The user asks "what is AEO" or any variant
- The user is new to AEO and is about to receive a recommendation that will not make sense without context
- Another skill in this category references a foundational concept (citation vs mention, extractability, entity authority, fan-out) and you want to ground the explanation
- The user is briefing a stakeholder or client on why AEO matters

Skip it when:

- The user wants a specific tactical deliverable (audit, content rewrite, citation tracking)
- The user has already demonstrated AEO fluency
- The user wants tactics only

## Why AEO Is Different From SEO

SEO and AEO share infrastructure (the same site, the same crawl, often the same content). They diverge in three places that matter operationally.

**1. The outcome is different.** SEO wins by ranking a page in a list. AEO wins by getting your content extracted, paraphrased, or quoted inside an AI-generated answer, ideally with a citation link back. The user experience is "I asked, the AI told me, sometimes with a link." Ranking #3 in a SERP gets a click. Being cited in an AI Overview gets a brand impression and a smaller click. Both have value; they are not the same metric.

**2. The mechanic is different.** Search engines retrieve and rank pages. Answer engines retrieve passages, synthesize across them, and generate a response. The unit that wins is not a page, it is a self-contained quotable passage. A page that ranks #1 in Google can be invisible in ChatGPT if its content does not extract well into a quotable claim.

**3. The visibility surface is different.** Google is one surface. AI answer engines are many: ChatGPT, Claude, Perplexity, Gemini, Meta AI, Grok, Brave Search Summarizer, plus Google's own AI Overviews. Each draws from overlapping but distinct sources, with distinct quirks. A page well-cited in Perplexity may be unknown to ChatGPT. AEO measurement is multi-platform by default.

## The Mental Model

All AEO work serves three objectives. Every tactic in this category maps to one or more.

1. **Be retrievable.** AI engines must be able to crawl and read your content. If their bots cannot reach the page, render the JavaScript, or extract clean text, no other work matters.
2. **Be quotable.** Once retrieved, the content must extract cleanly into self-contained passages an answer engine can paraphrase or cite without surrounding context.
3. **Be trusted as an entity.** Beyond any single page, the brand needs to be recognized in the engine's internal entity model as a known, consistent, credible source on the topic.

These objectives compound. A page that is retrievable but not quotable gets crawled and ignored. A page that is quotable but not retrievable might as well not exist. A page that is both, on a brand with weak entity signals, gets passed over for a competitor with stronger entity authority.

When you load this model into a session, every recommendation should map back to one of these three. This keeps the work coherent and explainable.

## The Three Layers of AEO Work

Map any AEO recommendation to one of these layers.

### Layer 1: Infrastructure (Retrievability)

The technical layer that determines whether AI engines can access your content at all.

- **AI crawler access.** Robots.txt explicitly allows the major AI user agents. Server logs confirm crawlers are actually visiting. Firewalls and CDNs are not blocking them. See `ai-crawler-access`.
- **JavaScript rendering.** Critical content is in the initial HTML response, not populated by client-side JavaScript. Most AI crawlers do not render JS reliably, even though human visitors see a complete page.
- **Crawl breadth.** The content appears in Common Crawl (the open web crawl most LLMs train on). Brands not in Common Crawl are likely underrepresented in LLM training data.
- **Indexation and discoverability.** Standard SEO indexation (covered in `technical-audit`) is necessary but not sufficient.

### Layer 2: Content (Quotability)

The structural and rhetorical layer that determines whether retrieved content can be cited.

- **Extractability.** Self-contained passages, factual specificity, explicit phrasing, inverted-pyramid answer-first structure.
- **Intent-format match.** Lists for "best" queries, step-by-step for "how to" queries, definitions for "what is" queries. The format of the page matches the query type.
- **Quotable paragraphs.** Each key page has at least three sentences in its opening that could be extracted and cited in isolation, without surrounding context.
- **Heading structure as queries.** H2s and H3s use the language users actually use, not internal section labels like "Our Approach" or "Key Considerations." See `content-for-citations`.

### Layer 3: Authority (Entity Trust)

The reputation and identity layer that determines whether the engine treats your brand as a credible source on the topic.

- **Entity consistency.** Your brand is described the same way across your site, LinkedIn, Crunchbase, Wikipedia, G2, and any other major source. Conflicting descriptions create LLM uncertainty.
- **Entity recognition.** The brand appears in Wikipedia (either with its own article or mentioned within category articles), is on Wikidata, has a Knowledge Graph entity.
- **Author authority.** Content is bylined by identifiable, verifiable experts with linked external profiles. Anonymous content gets less weight.
- **Third-party citations.** Other sites, especially trusted ones, cite the brand and link back. Original data and named frameworks accelerate this.
- **Named frameworks and methodologies.** The brand owns a named concept that practitioners reference by name. See `named-framework-development`.

## Shared Vocabulary

Definitions other AEO skills assume. Use these to keep terminology consistent.

- **Mention rate.** The percentage of AI responses to a query set that mention your brand name. Easy to measure, easy to feel good about, less actionable than it looks.
- **Citation rate.** The percentage of AI responses to a query set that cite your URL as a source. Lower than mention rate for most brands. Citation rate is what drives traffic and trust; mention rate alone is brand awareness.
- **Position in response.** Where your brand appears in an AI response: first brand named, named alongside peers, named late, or named only in direct brand queries. A leading indicator of entity strength.
- **Extractability.** The degree to which a page's content can be lifted into an AI response without surrounding context. Driven by self-contained passages, explicit phrasing, and factual specificity.
- **Fan-out.** The pattern where an AI engine generates multiple sub-queries from a single user query, then synthesizes results across them. A page benefits from being relevant to multiple sub-queries, not just the parent query.
- **Self-contained passage.** A block of text that makes complete sense on its own, without context from earlier or later parts of the page. The unit AI engines actually extract.
- **Inverted pyramid.** The journalistic structure where the most important information appears in the first paragraph, with supporting context following. AI engines prefer this structure because the answer is where they look first.
- **Entity authority.** The brand's standing in the AI engine's internal entity model. Built from consistent descriptions across the web, third-party recognition, and the brand's named contributions to its category.
- **Named framework.** A brand-owned proprietary concept (model, methodology, approach) that practitioners reference by name. High-leverage because every mention of the framework is an implicit mention of the brand.
- **AI Overview.** Google's AI-generated answer block at the top of some SERPs, with cited sources. A leading indicator of broader AI search performance.
- **Fan-out rank.** Internal link equity flowing to a page from other authoritative pages on the site. Signals to AI engines which pages the site considers most important.
- **Knowledge cutoff.** The date past which an LLM has no training data. Brands launched after a model's cutoff date are invisible to that model until retraining.
- **Live retrieval.** Some answer engines (Perplexity, ChatGPT with browsing, Google AI Overviews) augment training-data knowledge with live web retrieval. This means recent content can appear even without being in training data, if it ranks well in the engine's live retrieval layer.

## Philosophical Posture

The skills in this category take these positions. Downstream skills should not contradict them.

- **Mention rate is brand awareness; citation rate is the goal.** Many AEO tools and dashboards focus on mention rate because it is easier to measure. We focus on citation rate because that is what produces traffic, trust, and conversion.
- **AEO does not replace SEO.** Traditional search rank is one of the strongest signals AI engines use to decide what to cite. A page that does not rank in Google rarely gets cited in ChatGPT. AEO is built on top of SEO foundations, not instead of them.
- **Multi-platform measurement is non-negotiable.** Tracking only ChatGPT, or only Google AI Overviews, gives a distorted picture. The minimum measurement set is ChatGPT, Claude, Perplexity, and Gemini.
- **Position matters more than presence.** Being mentioned fifth in a list of six tools is meaningfully different from being mentioned first. Most measurement tracks presence; the practitioners who track position have a more sensitive signal.
- **Entity authority compounds; tactics decay.** Schema tweaks and on-page changes produce short-term wins. Building a recognized entity, a named framework, and a body of original data produces a moat. Bias toward the long game.
- **No prompt injection, no manipulation, no fake citations.** Some AEO content recommends hidden prompts, schema spamming, or other tactics designed to manipulate AI output. We do not. These tactics are detectable, increasingly penalized, and erode trust with the actual humans the AI is serving.

## How AEO and SEO Fit Together

The cleanest framing: SEO is the foundation, AEO builds on it.

- A site with broken indexation cannot win in AI search.
- A site with strong SEO and weak AEO leaves AI citation share on the table.
- A site with strong AEO and weak SEO is a rare pattern (most AI engines lean heavily on traditional search rank) and usually a fragile one.

The implication for sequencing: complete the SEO baseline before launching aggressive AEO work. The `seo-foundations`, `on-page-audit`, `technical-audit`, and `content-audit` skills produce the substrate AEO work depends on.

There is one important exception: **entity authority** can be built in parallel with SEO work, because it lives on third-party sites (Wikipedia, LinkedIn, G2, Crunchbase) and depends less on the brand's own site state.

## How Other Skills Use This One

Like the SEO foundations skill, this is a textbook. Pull what you need; do not dump the whole skill into every session.

- If the user has AEO fluency, reference terms and move on. ("This page has a citation rate problem, not a mention rate problem.")
- If the user is new, define inline. ("Citation rate is the percent of AI responses that link back to your URL, not just mention your brand. Yours is...")
- If the user asks "wait, what is X," load the relevant section.

You do not need to teach the whole model in every conversation. The model is for grounding the recommendations.

## What This Skill Does Not Do

This is a primer. It does not:

- Audit AI citation readiness (use `ai-search-audit`)
- Rewrite content for citations (use `content-for-citations`)
- Track citations across AI platforms (use `citation-tracking`)
- Build entity presence (use `entity-presence`)
- Deploy AEO-specific schema (use `schema-for-aeo`)
- Develop a Reddit presence (use `reddit-strategy`)
- Configure AI crawler access (use `ai-crawler-access`)
- Develop a named framework (use `named-framework-development`)

Hand off to the relevant skill for any of the above.

## Quick Reference: The Three Layers

| Layer | What it determines | Top tactics | Skill |
|---|---|---|---|
| 1. Infrastructure | Whether AI engines can read your content | Robots.txt for AI bots, server-side rendering, Common Crawl presence | `ai-crawler-access` |
| 2. Content | Whether retrieved content can be extracted and cited | Inverted pyramid, quotable paragraphs, self-contained passages, intent-format match, question-style headings | `content-for-citations`, `schema-for-aeo` |
| 3. Authority | Whether the engine treats your brand as a credible source | Entity consistency, Wikipedia presence, author Person schema, original data, named frameworks, third-party citations | `entity-presence`, `named-framework-development`, `reddit-strategy` |

When diagnosing why a brand is not getting cited, walk through the layers in order. The first layer that fails is where the work goes.

## References

- `references/glossary.md`: The Shared Vocabulary section as a standalone reference for quoting into reports.
- `references/ai-search-landscape.md`: A current map of the major AI answer engines, how each retrieves and cites sources, and what the optimization implications are.
