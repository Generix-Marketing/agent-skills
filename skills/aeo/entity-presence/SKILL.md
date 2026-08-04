---
name: entity-presence
description: Use this skill when the user wants to build brand entity authority, improve how AI engines describe the brand, fix conflicting brand descriptions across the web, get on Wikidata or in Wikipedia, optimize the brand's Knowledge Graph entity, build author authority, or address the "AI describes us wrong / inconsistently / thinly" problem. Triggers include "entity SEO," "entity optimization," "Knowledge Graph," "Wikipedia presence," "Wikidata," "brand entity," "AI describes us wrong," "sameAs schema," "author authority," "E-E-A-T for AI." This skill produces an entity authority program covering on-site Organization and Person schema, off-site profile consistency, Wikipedia/Wikidata strategy, and author bylines. Pairs with ai-search-audit (diagnostic) and schema-for-aeo (technical implementation).
---

# Entity Presence

This skill produces the work that fixes how AI engines understand the brand at the entity level. The output is a multi-track program: on-site schema and bylines, off-site profile consistency, Wikipedia/Wikidata work, and a maintenance cadence.

Entity work is the slowest of the AEO disciplines and the foundation of every other AEO investment. Without strong entity signals, citation rate has a low ceiling regardless of how good the content is. With strong entity signals, every other tactic compounds.

## When to Run This Skill

Run it when:

- The `ai-search-audit` describe-the-brand check returned "Thin," "Outdated," "Confused with competitor," or "Wrong language"
- The user is rebranding, repositioning, or doing a major pivot
- The user has been doing AEO content work without seeing citation rate improvement (entity authority is the likely ceiling)
- The user is preparing for or recovering from a major company change (new product, leadership, market focus)
- The competitor analysis surfaces entity authority as a competitive gap

Skip it when:

- The user wants content writing work (use `content-for-citations`)
- The user wants schema-only work without strategy (use `schema-for-aeo`)
- The brand is brand-new and not yet differentiated enough to merit entity work (focus on content and SEO foundations first)

## Before You Start

Read `client-context.md` for the canonical brand description. If no canonical description exists, that is the first work product: a single one-paragraph description the brand commits to using consistently across every surface. Without it, every other entity action just propagates inconsistency.

Run the describe-the-brand baseline from `ai-search-audit` if it has not been run. Entity work is directionally guided by what gap shows up there.

## The Four Tracks

These run in parallel. Each one supports the others.

### Track A: On-Site Entity Signals

The brand's own site declares who the brand is via structured data and bylines. AI engines pick this up directly.

- **Organization schema on the homepage** with the canonical brand description, accurate founding date, accurate employee count range, contact info, logo, and (critically) a complete `sameAs` array.
- **Person schema for every named author** on the site (blog authors, executive bios, team pages), with `sameAs` to LinkedIn, published work, and any academic or professional profiles.
- **Author bylines on every editorial page,** linking to a Person-schema-equipped bio page, not a plain text author name.
- **Article schema with the author linked to the Person entity,** not just a string author name.
- **Consistent brand description and About page lead** matching the Organization schema description (LLMs cross-reference these).

Detailed schema implementation in `schema-for-aeo`.

### Track B: Off-Site Profile Consistency and Engine-Specific Distribution

The brand's presence on third-party sites is what LLMs aggregate into the entity model. Two parts: (1) the profiles themselves must be consistent in how they describe the brand; (2) different AI engines disproportionately weight different external platforms based on commercial partnerships and data agreements, so where the brand maintains active presence matters as much as which profiles exist.

See `references/platform-distribution-by-engine.md` for the engine-to-platform map (LinkedIn for ChatGPT due to the Microsoft partnership, Reddit for both ChatGPT and Claude via data licensing, Wikipedia for Claude and Gemini, etc.).

The profile set to maintain (adapt to the client's business):

- **LinkedIn company page** (universal)
- **Crunchbase** (B2B, tech, agencies)
- **G2 / Capterra / GetApp** (SaaS / B2B software)
- **Google Business Profile** (any local business)
- **Apple Business Connect** (any local business)
- **Bing Places for Business** (any business)
- **BBB** (any US business)
- **Industry-specific directories** (NAR for real estate, AMA for medical, trade association directories, etc.)
- **Wikipedia** (if applicable; see Track C)
- **Wikidata** (always; see Track C)
- **Major social profiles** (LinkedIn, X, Instagram, Facebook, YouTube, etc., where the brand is active)

The work:

1. Pull the brand's current description from each profile.
2. Compare. Note every inconsistency in: founding year, employee count, product description, target market, geographic focus, named services, leadership.
3. Adopt the canonical description as the source of truth.
4. Update every profile to match (or use a near-variant matched in substance).
5. Schedule a quarterly audit to catch drift.

Most brands have 5-15 profiles with meaningfully different descriptions. Standardizing them is the single biggest entity intervention available outside of Wikipedia / Wikidata work.

### Track C: Wikipedia and Wikidata

The most heavily weighted entity sources in LLM training. Two distinct workstreams.

**Wikidata** is the structured-data backbone many AI systems use to disambiguate entities. Every entity has a Wikidata Q-ID. Properties include "instance of," "industry," "headquarters location," "official website," "founder," "inception."

If the brand does not have a Wikidata entity, create one. Wikidata accepts entries for businesses that can be verified through reliable secondary sources. Add as many sourced properties as the brand can support. Maintain quarterly.

**Wikipedia** is the harder workstream. Most brands focus on getting their own Wikipedia page. That is appropriate only for brands that genuinely meet Wikipedia's notability standards (substantial coverage in multiple independent reliable sources). For brands that do not meet notability, attempting to create an article triggers deletion and reputational risk.

The more leverage workstream: **being mentioned within Wikipedia articles about the category, named methodologies, or industry topics where the brand genuinely belongs.** A roofer mentioned in a Wikipedia article on "asphalt shingles" is signaling category relevance in a way the brand's own page cannot.

The path to Wikipedia category-article presence:

1. Identify the Wikipedia articles where the brand could plausibly be mentioned (category articles, methodology articles, industry articles, list articles).
2. Read each. Note where the brand genuinely belongs (as an example, as a referenced source, as a citation).
3. Contribute the addition following Wikipedia's neutral-point-of-view and verifiability rules. Cite the addition to a reliable secondary source (a news article, an industry publication, a peer-reviewed paper), not the brand's own site.
4. Be patient. Wikipedia editors are skeptical of additions by people connected to the subject; disclose conflicts of interest on talk pages where applicable.

This work is slow, sometimes adversarial, and high-leverage. Expect 6-12 months for meaningful Wikipedia presence to materialize.

### Track D: Author Authority

Content tied to identifiable, verifiable experts gets cited more. The author authority workstream:

- **Identify the brand's named experts.** Owner, executives, senior practitioners, anyone who genuinely contributes to content.
- **Build bio pages for each.** Real photo, credentials, experience, publications, links to LinkedIn and any other authoritative profiles. Person schema with `sameAs`.
- **Byline editorial content to specific authors,** not "Brand Team" or "Editorial Staff." Connect each piece to the appropriate Person entity via schema.
- **Build off-site author presence.** Personal LinkedIn that mentions the brand and the expertise areas. Podcast appearances, conference talks, guest articles in trade publications (the digital PR workstream from `off-page-link-building`).
- **Track which authors are cited** in AI responses. Sometimes the engine surfaces the author rather than the brand. Both are wins; the engine that recognizes the author also strengthens the brand association.

## Output Format

```markdown
# Entity Presence Program: [Brand]

**Date:** [YYYY-MM-DD]
**Strategist:** [Agent or user]
**Current state:** [Brief summary of the describe-the-brand baseline diagnosis]

## Canonical Brand Description

[The one-paragraph description that becomes the source of truth across every profile. Approved by the brand before the rest of the work executes.]

## Track A: On-Site Entity Signals

| Item | Current state | Target state | Effort | Owner |
|---|---|---|---|---|
| Organization schema on homepage | [Status] | [Specific spec] | [Hours] | Dev |
| Person schema on author bios | [Coverage] | All named authors | [Hours] | Dev + Writer |
| Article schema author linkage | [Status] | All editorial pages | [Hours] | Dev |
| About page consistency with Org schema | [Match level] | Identical lead paragraph | [Hours] | Writer |

## Track B: Off-Site Profile Consistency

| Profile | Current description match | Action |
|---|---|---|
| LinkedIn | [Match / Drift / Missing] | [Specific edit] |
| Crunchbase | [...] | [...] |
| G2 / Capterra | [...] | [...] |
| GBP | [...] | [...] |
| BBB | [...] | [...] |
| (Industry-specific) | [...] | [...] |

## Track C: Wikipedia and Wikidata

- **Wikidata Q-ID:** [Number, or "to be created"]
- **Wikidata properties to add or update:** [List]
- **Wikipedia own-page status:** [Has page / Notability check / Not pursuing]
- **Wikipedia category-article opportunities:** [List of articles where brand belongs]
- **Recommended sequencing:** [Quarter-level plan]

## Track D: Author Authority

| Author | Bio page status | Person schema | Off-site presence | Action |
|---|---|---|---|---|
| [Name] | [Status] | [Y/N] | [LinkedIn, podcasts, etc.] | [Specific work] |

## Top Five Entity Priorities

1. **[Priority]** [Track]. [Effort, expected impact, timeline, owner.]
2. ...

## Maintenance Cadence

- **Weekly:** [Specific weekly checks]
- **Monthly:** [Specific monthly checks]
- **Quarterly:** [Full entity audit]
- **Annually:** [Comprehensive entity refresh and Wikipedia review]

## Notes

[Sensitive: any conflict-of-interest considerations on Wikipedia, any profile ownership disputes, any pending leadership or company changes that will affect descriptions.]
```

## When the User Pushes Back

**"Wikipedia is impossible / hostile."** Sometimes. The skill is in finding the genuine fits where the brand belongs rather than trying to force placement. If the brand really has no Wikipedia-worthy presence in any article anywhere in the category, that is a diagnostic finding: the brand needs to build more third-party authority first, then revisit Wikipedia. Wikipedia is downstream of authority, not a substitute for it.

**"Why does Wikidata matter? Nobody uses it."** People do not use Wikidata directly, but AI systems do. Wikidata is one of the structured-data backbones for entity disambiguation in many LLM and search pipelines. A complete Wikidata entry with sourced properties is one of the cheapest entity investments available.

**"Standardizing descriptions across profiles seems trivial."** It is also remarkably under-done. The first audit usually finds 5-15 inconsistencies that have been slowly creeping in for years. Standardizing them is hours of work; the AEO impact is measurable within one or two training cycles.

## Common Pitfalls

- **Treating Organization schema as a marketing field.** It is not for ad copy. It is for accuracy and machine-readable consistency.
- **Creating a Wikipedia page the brand does not merit.** Triggers deletion, drama, and reputational damage. Build the underlying notability first.
- **Skipping Wikidata because it does not have visible traffic.** Visible traffic is the wrong metric; entity signal weight is the metric.
- **Bylining editorial content to "Marketing Team" or "Brand Editorial."** Defeats the author authority play. Use real names connected to real bios.
- **Letting the Organization schema description drift from the About page lead paragraph.** LLMs cross-reference these. Drift creates entity uncertainty.
- **Updating descriptions on one platform and forgetting the others.** Causes drift over time. Quarterly audit of all profiles, every time.

## References

- `references/profile-consistency-checklist.md`: The field-by-field checklist for entity consistency across the major external profiles.
- `references/wikipedia-contribution-guide.md`: How to contribute to Wikipedia articles without triggering deletion or community backlash, including the notability and conflict-of-interest rules that matter most.
- `references/platform-distribution-by-engine.md`: Which external platforms each major AI engine pulls from due to partnerships and data agreements (LinkedIn for ChatGPT via the Microsoft partnership, Reddit for both ChatGPT and Claude via licensing, etc.).
