# Diagnostic Categories

How to categorize the output of Check #1 (Describe-the-brand baseline). This check produces the gap between the LLM's understanding of the brand and the brand's actual positioning. That gap is the entire AEO problem statement; how you categorize it determines where the work goes.

Run the check on ChatGPT, Claude, and Perplexity. Compare outputs. Most brands fit one or two of these categories; some fit different categories on different platforms.

## Category 1: Accurate

The LLM describes the brand correctly, in roughly the language the brand uses.

**What it sounds like:** "Generix Marketing is an SEO and AEO agency that helps brands earn search visibility through technical fixes, content strategy, and answer-engine optimization."

**Diagnosis:** Strong starting position. The entity model is well-formed. Focus AEO work on citation rate, position improvement, and competitive displacement, not on rebuilding the entity foundation.

**Implication for the audit:** Tier 1 is probably already clean. Most of the work lives in Tier 2 (citation rate drivers) and Tier 3 (position and authority).

## Category 2: Outdated

The LLM describes a past version of the brand: an old product, an old positioning, an old leadership, an old market.

**What it sounds like:** "Generix Marketing is a digital marketing agency focused on social media advertising and email marketing." (When the brand pivoted to SEO/AEO 18 months ago.)

**Diagnosis:** The entity model is anchored to outdated training data. The brand has changed faster than the LLM's training cycles.

**Implication for the audit:** Aggressive entity refresh work. Update every external profile (LinkedIn, Crunchbase, G2, About page) with current positioning, in consistent language. Wait for the next training cycle. In the meantime, push live-retrieval engines (Perplexity, ChatGPT browsing) toward the current site, which they can see in real time.

This category is common for brands 12-24 months post-pivot.

## Category 3: Confused with Competitor

The LLM merges the brand with another company in the same space, or attributes the brand's work to a competitor.

**What it sounds like:** "Generix Marketing is part of the HubSpot ecosystem of marketing solutions." Or: "Generix Marketing was founded by [name of a competitor's founder]."

**Diagnosis:** The entity model is conflating two brands. Either the competitor is much more prominent in training data, or the brands are co-mentioned often enough that the model has learned them as related entities.

**Implication for the audit:** Disambiguation work. Strengthen brand-specific entity signals: a strong Wikipedia mention, a named framework that is uniquely the brand's, original data published under the brand's name, distinct co-occurrences in third-party content. Reduce co-mention with the confused competitor where possible (do not partner with them on co-published content during the disambiguation period).

This is one of the harder categories to fix because LLM entity models are sticky.

## Category 4: Thin

The LLM knows the brand name but has shallow knowledge of what it does.

**What it sounds like:** "Generix Marketing is a marketing company. I do not have detailed information about their services or focus areas." Or two sentences of vague description.

**Diagnosis:** The brand is recognized as an entity but the description is underspecified. Either the brand has not produced enough citable content for the LLM to form a clear model, or what exists is too generic to differentiate.

**Implication for the audit:** Authority-building work. Original data, named frameworks, specific positioning content. Get cited in publications with descriptive context (not just listings). The goal is to give the LLM something specific to learn about the brand.

Common for brands under 3-5 years old, brands without thought leadership programs, and brands with broad service descriptions.

## Category 5: Absent

The LLM does not recognize the brand at all.

**What it sounds like:** "I don't have information about a company called Generix Marketing. Could you provide more context?" Or the LLM hallucinates a fictional company by that name.

**Diagnosis:** The brand is not in the LLM's training data, or is so underrepresented that the model does not surface it.

**Implication for the audit:** Foundational entity work. All Tier 1 critical blockers need investigation (especially Common Crawl presence and crawler access). Then aggressive third-party coverage to enter training data: press, Wikipedia category mentions, citations in widely-distributed industry content.

Common for very new brands, very niche brands, and brands that have never been distributed widely in formats LLMs train on (e.g., brands whose only presence is paid advertising or video).

## Category 6: Wrong Language

The LLM describes the brand accurately on the facts but in the wrong vocabulary, missing the brand's distinct positioning or voice.

**What it sounds like:** "Generix Marketing is a search engine optimization agency." (Technically correct but missing "AEO," missing the SMB focus, missing the practitioner / open-source positioning that the brand uses.)

**Diagnosis:** The LLM understands what the brand does but does not understand how the brand differentiates. The brand is winning on capabilities in AI search but not getting credit for its actual positioning.

**Implication for the audit:** Content and distribution work focused on signature language. Get the brand's distinctive terms ("AEO," named frameworks, specific positioning vocabulary) cited in third-party content. Use these terms consistently on the brand's own site and across external profiles.

This is a happier diagnosis than Category 4 or 5 because the foundation exists; the work is shaping the description, not creating it.

## Mixed Categories

Most real brands fit two or more categories across the three platforms.

- A brand might be **Thin** in Claude (limited training data), **Outdated** in ChatGPT (older training cutoff), and **Accurate** in Perplexity (which retrieves the current site live).
- A brand might be **Accurate** on factual questions and **Wrong Language** on positioning questions.

When categorizing, note where each pattern appears. The fix sequence differs:

- Thin or Absent in all three: foundational entity work. Start at Tier 1 and Tier 3.
- Outdated in some, Accurate in others: refresh work plus patience for the next training cycle.
- Wrong Language across the board: positioning content and signature-language work in distribution.
- Confused with Competitor: disambiguation work. The hardest category.

## How to Document in the Audit Report

In the "Diagnostic: How LLMs Currently See the Brand" section of the audit output:

1. Quote or paraphrase the actual responses from each platform (1-3 sentences each).
2. Categorize each (one of the six above).
3. State the dominant pattern across platforms.
4. State the implication for the sequencing of the rest of the audit.

Example:

> ChatGPT describes the brand as a generic SEO agency, missing the AEO focus and the open-source skills positioning. Categorization: **Wrong Language**. Claude similarly emphasizes general SEO with no AEO context: **Wrong Language**. Perplexity, drawing from live retrieval, returns an accurate description with current positioning: **Accurate**. Dominant pattern: **Wrong Language** in training-data-dependent engines; recent positioning has not yet propagated. Implication: the foundation is sound (entity exists, recognized correctly when the live site is read), and the work is propagation. Prioritize distribution of signature-language content in publications and platforms that contribute to training data, plus a refresh of external profiles to ensure consistency.

The diagnostic categorization is the most important section of the audit because every subsequent recommendation should map back to closing the specific gap identified here.
