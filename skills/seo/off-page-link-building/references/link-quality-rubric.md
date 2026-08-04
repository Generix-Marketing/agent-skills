# Link Quality Rubric

How to decide whether a potential backlink is worth pursuing. Four dimensions, each rated 1-5. Pursue links scoring 12+ on a 20-point scale; deprioritize anything under 8.

## The Four Dimensions

### 1. Topical Relevance (most important)

How relevant is the linking page to the client's domain?

- **5:** Same industry, same audience, same intent (e.g., a roofing trade publication writing about roofing trends).
- **4:** Adjacent industry, overlapping audience (e.g., a home improvement publication writing about home maintenance, of which roofing is one section).
- **3:** Same broad category, different audience (e.g., a national real estate publication mentioning roofing as part of a home sale checklist).
- **2:** Loosely related, audience may overlap (e.g., a local lifestyle blog covering local businesses including a roofer).
- **1:** Unrelated topic, audience does not match (e.g., a pet care blog with a guest post about home improvement).

A high topical relevance score on a low-authority site is more valuable than a low relevance score on a high-authority site. Topical relevance is what Google increasingly weights post-Penguin.

### 2. Site Authority

How established and trusted is the linking domain?

- **5:** Major national publication, .gov, .edu, or industry-defining site (NYT, WSJ, This Old House for home topics, BBC).
- **4:** Strong regional or vertical publication, well-known association site (large local paper, major trade association).
- **3:** Solid niche or local site, established 5+ years (smaller trade pubs, established local business directories).
- **2:** New or small site with some real traffic and editorial standards (legitimate small blog, newer trade pub).
- **1:** Personal blog, low-traffic site, or anything with no editorial presence.

Use DR / DA estimates as a directional signal, not gospel. A DR 30 site that is genuinely respected in a niche is more valuable than a DR 60 site that is a content farm.

### 3. Link Placement

Where on the page does the link sit?

- **5:** In the body of the article, contextually relevant, surrounded by related text. Often called an "editorial link."
- **4:** In a curated resource list or honest recommendation list within editorial content.
- **3:** In an author byline, in a footer, in a sidebar widget. Less weight but real.
- **2:** In a comments section, in a UGC area, in a forum post.
- **1:** In a sponsored / paid section, in a press release distribution syndicate, in an obvious link-trade section.

Editorial body links pass the most weight. Footer / sitewide links are sometimes weighted lower (Google deprecated sitewide footer link weight years ago, especially for sketchy contexts).

### 4. Link Type and Attributes

What kind of link is it?

- **5:** Dofollow, not flagged with `rel="sponsored"` or `rel="ugc"` or `rel="nofollow"`.
- **4:** Dofollow but on a sponsored content page (the link itself is editorial but the page is paid).
- **3:** Nofollow link from a high-trust source (still useful for traffic and brand mention, less for ranking signals).
- **2:** UGC link (forum, comment) without obvious spam intent.
- **1:** Sponsored or paid link not disclosed; or link from a clearly low-quality / spammy context.

Google's stated position is that nofollow / ugc / sponsored links can still pass some signal. The reality: dofollow is still preferred. But a nofollow brand mention from the NYT is more valuable than a dofollow link from a content farm.

## Worked Examples

### Example A: Local trade association directory listing

- Topical relevance: 5 (same industry, same region)
- Site authority: 4 (established trade association, real authority in the niche)
- Link placement: 3 (footer/sidebar directory entry, not editorial body)
- Link type: 5 (dofollow, no attributes)

Score: 17. Pursue.

### Example B: Sponsored guest post on a high-DR home improvement site

- Topical relevance: 4 (adjacent home topic)
- Site authority: 4 (strong publication)
- Link placement: 1 (sponsored section, disclosed)
- Link type: 4 (likely sponsored-rel; if dofollow without disclosure, Google may penalize)

Score: 13. Pursue cautiously; understand the link will be marked sponsored. Real value is in brand exposure, not ranking signal.

### Example C: Reddit comment in r/HomeImprovement linking to client's cost guide

- Topical relevance: 5
- Site authority: 5 (Reddit DR is very high)
- Link placement: 2 (UGC, in a comment, not at the top)
- Link type: 3 (Reddit links are nofollow / ugc by default)

Score: 15. The link itself does not pass dofollow signal, but the visibility, secondary backlinks the comment can earn, and AI Overview citation potential make it valuable. Pursue when the engagement is genuinely helpful, not when spamming.

### Example D: Generic "best of" listicle on a low-quality SEO blog

- Topical relevance: 3 (related but the site itself has no audience in the client's domain)
- Site authority: 2 (low-traffic, low-trust)
- Link placement: 2 (in a 20-item list with weak editorial standards)
- Link type: 4 (dofollow, but in a context Google may discount)

Score: 11. Borderline. If the placement is free and the editor is responsive, the link is worth claiming. If it costs money or favors, skip.

### Example E: PBN-style site offering a guaranteed dofollow link for $200

- Topical relevance: any
- Site authority: any
- Link placement: any
- Link type: any

Skip regardless of score. Paid PBN links are a manual-action risk. The scoring rubric does not apply because the underlying tactic is disqualifying.

## Patterns to Watch For

A backlink profile should look like a real business's network of mentions, not a campaign. Healthy patterns:

- **Anchor text distribution skewed to brand and URL.** 50-70% brand name anchors, 15-25% URL or generic anchors, 5-15% partial-match keyword anchors, under 5% exact-match keyword anchors. Anything more aggressive on exact-match invites algorithmic skepticism.
- **Mix of dofollow and nofollow.** Real businesses earn both. A 100% dofollow profile is suspicious.
- **Steady growth, not spikes.** 5-15 new referring domains per month for a small business is healthy. A spike of 200 new referring domains in 30 days reads as a campaign and triggers review.
- **Geographic and topical clustering matches the business.** A local roofer's links should cluster in local press, local citations, and trade associations. A SaaS company's should cluster in tech publications, B2B media, podcasts.

If you see the opposite patterns (exact-match anchor heavy, 100% dofollow, sudden spikes, geographically nonsensical clusters), the profile has either been manipulated or attacked. Address before pursuing more links.
