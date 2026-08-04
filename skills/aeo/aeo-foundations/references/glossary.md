# AEO Glossary

Quotable definitions for use in audits, reports, and content. Pull what you need.

## Core Concepts

**Answer Engine Optimization (AEO).** The discipline of getting content surfaced and cited by AI answer engines (ChatGPT, Claude, Perplexity, Gemini, AI Overviews). Sometimes called Generative Engine Optimization (GEO) or LLM Visibility Optimization.

**Mention rate.** The percentage of AI responses to a defined query set that mention the brand name in any form. A measure of awareness, not authority.

**Citation rate.** The percentage of AI responses to a defined query set that cite the brand's URL as a source. A measure of authority and the driver of traffic.

**Position in response.** Where the brand appears within an AI response: first brand named, named alongside peers, named late, or only on direct brand queries. A more sensitive signal of entity strength than mention rate alone.

**Extractability.** The degree to which a page's content can be lifted into an AI response without surrounding context. Driven by self-contained passages, explicit phrasing, factual specificity, and answer-first structure.

**Self-contained passage.** A block of text (paragraph, list, definition) that makes complete sense on its own, without requiring context from earlier or later parts of the page. The unit AI engines extract.

**Inverted pyramid.** The journalistic structure where the most important information appears in the first paragraph. AI engines extract from the top of the page first; pages that build to their answer get passed over.

**Intent-format match.** Alignment between the format of the page and the type of query it targets. Lists for "best of" queries; step-by-step for "how to" queries; definitions for "what is" queries.

## Retrievability

**AI crawler.** Bots operated by AI companies to gather training data and serve live retrieval. Major crawlers (2026): GPTBot (OpenAI), PerplexityBot (Perplexity), anthropic-ai (Anthropic), Google-Extended (Google), Bytespider (ByteDance), CCBot (Common Crawl), Meta-ExternalAgent (Meta), Applebot-Extended (Apple), Diffbot, Amazonbot.

**Common Crawl.** An open, non-commercial repository of web crawl data. A primary training data source for many LLMs. Absence from Common Crawl strongly correlates with absence from LLM training data.

**Server-side rendering (SSR).** Rendering page content into HTML on the server before delivery to the client. AI crawlers see the full content. The alternative, client-side rendering, often delivers an empty shell to bots that do not run JavaScript.

**Live retrieval.** Some answer engines augment training data with live web retrieval (Perplexity always, ChatGPT and Gemini when relevant). Recent content can appear via live retrieval even without being in training data, provided it ranks well in the engine's retrieval layer.

**Knowledge cutoff.** The date past which an LLM has no training data. Varies by model. Brands founded or repositioned after the cutoff are invisible to that model until retraining.

## Authority and Entity

**Entity authority.** A brand's standing in an AI engine's internal entity model. Built from consistent descriptions across the web, third-party recognition, named contributions to the category, and original data.

**Entity consistency.** The degree to which the brand is described the same way across all major external profiles (LinkedIn, Crunchbase, Wikipedia, G2, the About page, Organization schema). Inconsistencies reduce LLM confidence.

**Knowledge Graph.** Google's structured representation of entities and their relationships. Being a recognized entity in the Knowledge Graph is a strong AEO signal.

**Wikipedia citation.** Being mentioned within a Wikipedia article about your category (not just having your own page) is one of the strongest entity signals available, because Wikipedia is heavily weighted in LLM training data.

**Named framework.** A brand-owned proprietary concept (model, methodology, mnemonic) that practitioners reference by name. Each external reference is an implicit brand mention; named frameworks compound entity authority over time.

**Original data.** Research, surveys, or data series published by the brand and cited by others. Original data citation rate is meaningfully higher than aggregated content citation rate. The brand becomes the canonical source.

## Content Structure

**Answer-near-top.** The principle that key information should appear in the first 200 words of a page. AI engines prioritize early-page content during extraction.

**Quotable paragraph.** A paragraph in the opening of a page that contains a specific, citable claim (a definition, a statistic, a named insight) that could appear on its own in an AI response.

**Question-style heading.** An H2 or H3 written in the language of a user query ("How do you measure AI search visibility?") rather than as an internal label ("Our Approach"). Question-style headings match how AI engines map page sections to user intents.

**Factual specificity.** The use of concrete numbers, named entities, specific dates, and precise claims rather than vague generalizations. AI engines extract specific claims more reliably than abstract assertions.

**Explicit phrasing.** Direct language that states relationships and conclusions plainly, without requiring inference. Idioms, metaphors, and implied meanings reduce extractability.

## Measurement

**Query set.** A defined list of queries (typically 20-50) run monthly across AI platforms to track mention rate, citation rate, position, and competitive presence over time.

**Baseline.** The initial measurement before any AEO work begins. Without a baseline, attribution of changes is guesswork.

**Competitive citation map.** A view of which domains AI engines cite for queries in the brand's category, regardless of whether the brand itself is cited. Reveals the citation set the brand needs to enter.

**Shadow citation.** Content used by an AI engine in its response without explicit attribution (no link, no brand mention, paraphrased). Estimated to represent 40-60% of actual content usage by some practitioners.

## Schema and Technical

**Organization schema.** JSON-LD structured data describing the brand entity. Strongest AEO impact when it includes a `sameAs` array linking to every official external profile.

**Person schema.** JSON-LD describing an author or executive, ideally linked from their bylined content and including `sameAs` links to LinkedIn and other published work. Strengthens author authority.

**sameAs.** A schema property linking the brand or author entity to its presence on other sites. The mechanism by which LLMs consolidate entity identity across sources.

**dateModified.** A schema property indicating when content was last meaningfully updated. Many CMSs set it once at publication and never update it; correctly updating dateModified is a freshness signal AI engines weight.

**llms.txt.** A proposed text file (analogous to robots.txt) providing AI-specific instructions or content summaries. Adoption and impact remain low as of 2026; high-impact only if other AEO foundations are in place.

## Common Acronyms

- **AEO:** Answer Engine Optimization
- **GEO:** Generative Engine Optimization (same idea, different acronym)
- **LLM:** Large Language Model
- **SGE:** Search Generative Experience (Google's earlier name for AI Overviews)
- **AIO:** AI Overviews (Google)
- **PAA:** People Also Ask
- **JSON-LD:** JavaScript Object Notation for Linked Data (the schema format)
- **SSR:** Server-Side Rendering
- **CSR:** Client-Side Rendering
- **SSG:** Static Site Generation
