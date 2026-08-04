# Wikipedia Contribution Guide

How to contribute to Wikipedia in ways that strengthen entity presence without triggering deletion, conflict-of-interest sanctions, or community backlash.

Wikipedia is one of the highest-leverage entity sources for AI search and one of the easiest places to do real reputational damage. The community is small, deeply skeptical of paid editing and self-promotion, and remarkably good at detecting both. Approach with respect for the norms.

## The Two Workstreams

There are two distinct ways to build Wikipedia presence:

1. **Own-article presence:** Having a Wikipedia article about the brand itself.
2. **Category-article presence:** Being mentioned as an example, source, or citation within articles about the broader category, methodology, or industry.

The second is usually easier to earn, lower-risk to pursue, and often higher-leverage for AEO because LLMs draw heavily from category articles.

Most brands focus on (1) and miss (2). Reverse that.

## When the Brand Qualifies for Its Own Article

Wikipedia's notability guidelines for organizations are stricter than most brands realize. The standard is "significant coverage in multiple independent reliable sources." Specifically:

- "Significant" means more than a passing mention. A two-sentence company description in a press release does not count.
- "Independent" excludes the brand's own content, press releases, paid placements, and content from people directly connected to the brand.
- "Reliable" generally means established journalism (mainstream press, major trade publications), academic sources, government records. Blogs, social media, podcasts, and most marketing-tier sites do not count.
- "Multiple" means at least three to five independent reliable sources with significant coverage.

If the brand has been profiled in the Wall Street Journal, the local major newspaper's business section, and one major industry publication, notability is likely met. If the brand has been mentioned in 50 listicles and the founder's LinkedIn posts, notability is not met.

When in doubt, draft the article in a sandbox first and ask Wikipedia editors at the Articles for Creation review process before publishing. Their feedback is honest and often helpful.

If notability is not met, do not create the article. Wikipedia editors will detect the article quickly, propose deletion, and the resulting talk-page debate becomes a public record of the brand's failed notability attempt. That hurts both Wikipedia chances and broader entity authority.

## When the Brand Should NOT Have Its Own Article

- Pre-revenue startups (almost always)
- Local services without significant press coverage (almost always)
- B2B SaaS under ~$10M ARR without unusual press coverage (usually)
- Agencies and consultancies without notable named campaigns or executives
- Personal brands without significant independent coverage (most)

For brands in any of these categories, focus entirely on Workstream 2 (category-article presence) until enough independent coverage accumulates to revisit own-article eligibility.

## Category-Article Presence: The Higher-Leverage Workstream

The play: identify Wikipedia articles where the brand or its work genuinely belongs as an example, source, or referenced citation, then contribute the addition following Wikipedia's rules.

### Identifying Opportunities

Search Wikipedia for:

- The brand's primary category (e.g., "answer engine optimization," "roofing contractor")
- Adjacent categories
- Specific methodologies, frameworks, or named concepts the brand is associated with
- Industry topics where the brand has real expertise
- Lists of companies in the category, "List of [type of business]" articles

For each, ask: does the brand genuinely belong as a mentioned example, a cited source, or a referenced expert quote? "Genuinely" is the standard Wikipedia editors apply.

### What Qualifies as a Genuine Fit

- The brand pioneered or popularized the concept the article describes.
- The brand has published original research relevant to the article's topic that can be cited.
- The brand is a notable example of the category the article covers.
- A named expert at the brand has been cited in reliable sources on the topic.

What does not qualify:

- The brand offers the service the article describes (every roofer offers roofing; you cannot add every roofer to the "Roofing" article).
- The brand has written a blog post about the topic (blogs are not reliable sources).
- The brand wants more visibility (Wikipedia is not a marketing channel).

### Making the Contribution

Once an opportunity is identified:

1. **Read Wikipedia's policies first.** Specifically: Neutral Point of View (NPOV), Verifiability, No Original Research, Conflict of Interest, and Reliable Sources. Each is linked from any Wikipedia editing screen.
2. **Find the reliable secondary source that supports the addition.** Wikipedia requires citations to independent reliable sources, not to the brand's own site. If the only source for the addition is the brand itself, the addition will be removed.
3. **Draft the addition in neutral language.** "Cardinal Ridge Roofing is one of several Indianapolis-area contractors that emerged after the 2008-2010 hailstorm cluster" beats "Cardinal Ridge Roofing is the leading Indianapolis-area contractor for storm damage." Wikipedia tolerates the first; deletes the second.
4. **Add the citation in proper format.** Use `<ref>...</ref>` tags. Cite the publication, the article title, the author if available, the publication date, and the URL.
5. **Make the edit from a registered Wikipedia account, not anonymously.** Anonymous edits get more scrutiny.
6. **If you have a conflict of interest, disclose it on your user page and on the article's talk page.** Wikipedia tolerates conflict-of-interest contributions when disclosed; sanctions them when concealed. Disclosure does not block contributions; it sets the expectation that other editors will review the edit closely.

### When Edits Get Reverted

Some edits will be reverted by other editors. Common reasons:

- Source not considered reliable enough (very common)
- Wording considered promotional or non-neutral
- Editor judges the addition not relevant to the article scope
- Editor suspects undisclosed conflict of interest

If reverted: read the editor's stated reason on the article's talk page. If the reason is fixable (better source, less promotional wording), engage on the talk page, propose the revised version, and re-make the edit if consensus supports it. If the reason is that the addition genuinely does not belong, accept the verdict and move on.

Do not edit-war (repeatedly re-adding reverted content). This triggers temporary editing bans and damages reputation with the Wikipedia community for future contributions.

## Wikidata Workstream

Wikidata is structurally easier than Wikipedia and almost universally underutilized.

### What Wikidata Is

A structured-data knowledge base that catalogs entities (people, organizations, places, concepts) with machine-readable properties. AI systems use Wikidata extensively for entity disambiguation.

Every entity has a Q-ID (like Q123456). Properties describe the entity ("instance of business," "industry roofing," "founded 2003," "headquartered in Indianapolis").

### Creating a Wikidata Entry

If the brand does not have a Wikidata entry:

1. Go to wikidata.org and create an account.
2. Click "Create a new item."
3. Set the label (brand name), description (one short phrase, not the full Organization schema description), and at least a few aliases (common alternative names).
4. Add core properties one at a time:
   - "instance of" → "business" (Q4830453) or a more specific subtype like "roofing contractor" if available
   - "industry" → relevant Wikidata entity
   - "headquarters location" → city Wikidata entity
   - "official website" → canonical URL
   - "country" → country Wikidata entity
   - "founder" → person Q-ID if founder has a Wikidata entry, otherwise string
   - "inception" → founding year
5. For every property, add a reference. Wikidata accepts the brand's own site as a reference for some properties (official website, name, contact info); other properties (significance, market position) need independent sources.

The bar for Wikidata is much lower than for Wikipedia. Most businesses can have a basic Wikidata entry. The investment is modest (1-2 hours for the initial entry, 30 minutes per quarter for updates).

### Maintaining the Entry

- Update when canonical brand details change (rebrand, new headquarters, leadership change).
- Add new properties as they become relevant (acquired by, parent organization, social media handle, ISIN if publicly traded).
- Monitor for vandalism. Wikidata vandalism is rare but happens; set up a watchlist on the Q-ID.

## Anti-Patterns to Avoid

Specific things that get accounts blocked, articles deleted, or reputations damaged:

- **Creating a Wikipedia article that fails notability and refusing to accept the verdict.** Triggers escalating sanctions.
- **Edit-warring** (rapidly re-adding reverted content). Triggers temporary editing bans.
- **Sockpuppeting** (using multiple accounts to make the same edits). Triggers permanent bans and exposes the brand to public scrutiny.
- **Paying Wikipedia editors to create or edit articles without disclosure.** Paid editing without disclosure violates Wikipedia's terms of use. There are legitimate paid editors who follow disclosure rules; most for-hire "Wikipedia writers" do not.
- **Adding citations to the brand's own site as evidence of notability.** Wikipedia requires independent sources. Self-citation triggers immediate removal.
- **Using promotional language anywhere on Wikipedia.** "Leading," "best," "industry-standard," "trusted" all read as marketing and get removed or rephrased.
- **Creating articles for non-notable founders or executives.** Same risks as non-notable brand articles.
- **Adding "External links" to the brand's site on tangentially related articles.** Considered spam.

## Realistic Timeline

- **Wikidata entry:** 1-2 hours initial, live the same day if no policy issues.
- **Category-article additions:** 1-4 hours per addition, including reading the article, finding the source, drafting the edit, monitoring for revert. Most additions are accepted within a few days; some get reverted and require talk-page work.
- **Own-page article creation:** 10-40 hours including notability research, source compilation, drafting through Articles for Creation review, responding to editor feedback. Usually 30-90 days from start to live article when notability is genuinely met. Possibly never when notability is borderline.
- **Time to AEO impact:** 2-6 months after a Wikipedia or Wikidata change for the change to propagate into LLM responses (depending on training cycles and live-retrieval behavior).

## When to Bring in a Specialist

For brands with genuine notability and meaningful AEO investment, consider engaging a Wikipedia editor who works within the rules (disclosed, paid editing) for own-page creation. The market for this is thin and the bad operators dramatically outnumber the good ones; vet carefully. Indicators of a good operator: discloses conflict of interest openly, follows Articles for Creation process, declines to accept work where notability is not met, and writes in genuinely neutral tone.

For everything else (Wikidata, category-article additions), in-house effort with this guide is the right play.
