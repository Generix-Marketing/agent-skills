# Refresh Decision Tree

A decision tree for choosing refresh scope (light, medium, heavy, or "do not refresh") based on the page's current state. Walk through top to bottom; the first matching path determines the scope.

## Step 1: Is the page actively performing well?

Performing well means: ranking #1-3 for the primary query AND traffic is stable or trending up AND conversion is at or above the page's historical baseline.

If YES: **Do not refresh.** Touch-the-stove rule. A page working well is better left alone unless a specific issue is identified. Move the refresh budget to a page that needs it.

If NO: continue.

## Step 2: Has the page been touched in the last 90 days?

If a substantive update was made within 90 days, refreshing again now is premature. Google needs time to reprocess the prior update before the next change. Premature refreshes can also create signal noise that makes it harder to measure what worked.

If YES (touched in last 90 days): **Wait.** Re-evaluate in 30-60 days unless an emergency trigger applies (algorithm hit, broken page, factual urgency).

If NO: continue.

## Step 3: Is there an emergency trigger?

- Traffic dropped more than 20% week-over-week or month-over-month
- A factual error or outdated stat is on the page that could embarrass the brand or mislead a reader
- A product change makes the page partially incorrect
- A Google update has noticeably hit the page

If YES to any: **Triggered refresh, scope determined by the issue.** A factual error might be a 30-minute fix. An algorithm hit might be a heavy refresh of the entire page.

If NO: continue.

## Step 4: Is the page Tier 1 (high-value)?

If YES: Tier 1 pages get refresh attention regardless of current state, per the program cadence. Move to Step 5 to determine scope.

If NO and the page is Tier 2 or Tier 3: refresh only if the page is in the current cadence cycle OR an emergency trigger has fired.

## Step 5: Determine refresh scope (for pages that should be refreshed)

Three questions in sequence:

### 5a. Is the page's content factually current?

Check:
- Are statistics, prices, and named tools/products current?
- Are screenshots and images current?
- Are external links live?
- Are referenced people, companies, or events still relevant?

If everything is current AND only date-stamping is needed: **Light refresh.** ~1-2 hours.

If some details are out of date: continue to 5b.

### 5b. Is the page's content structurally and competitively strong?

Check:
- Does the page use the patterns from `content-for-citations` (inverted pyramid, quotable openings, question-style headings)?
- Does it match the format of the current top 5 ranking pages for the primary query?
- Does it have meta description and OpenGraph that accurately represent the current content?
- Does the schema reflect the page accurately and update its dateModified properly?
- Does it have at least 3 quotable sentences in the opening?

If YES to most and the structural foundation is sound: **Medium refresh.** ~3-6 hours. Update stats, refresh stale sections, add one new section addressing a new PAA question or related query, refresh meta if CTR has dropped, update dateModified.

If NO to several: continue to 5c.

### 5c. Has the page lost meaningful ranking or is the topic substantially different from when the page was written?

Check:
- Has the page dropped from top 10 to page 2 or worse for the primary query?
- Have the top 5 ranking competitors all changed in the last 6 months (indicating a shift in what wins)?
- Has the brand's positioning shifted in a way that makes this page's framing outdated?
- Is this a Tier 1 page that needs to compete at the highest level on the topic and is currently underperforming?

If YES to several: **Heavy refresh.** 6-20 hours. Re-research the topic, substantial rewrite, possibly new original data or examples, schema updates, new images, full E-E-A-T upgrade.

If NO: a medium refresh probably suffices.

## Scope at a Glance

| Scope | Time | When to apply | What gets done |
|---|---|---|---|
| Do not refresh | 0 | Page working well or recently touched | Nothing; move budget elsewhere |
| Light | 1-2 hours | Page content still right, just needs updating | Stats, dates, screenshots, broken links, dateModified |
| Medium | 3-6 hours | Page structurally sound but underperforming on specifics | Light items + section restructure + one new section + meta refresh |
| Heavy | 6-20 hours | Page has lost ranking or topic has shifted significantly | Full rewrite, re-research, possible original additions, schema updates |

## Edge Cases

### A page ranking #5-10 for a primary query but with declining traffic

Often: medium refresh. The page is competitive but losing ground. The competitive set may have improved; the refresh needs to match.

### A page that ranks well but has a low conversion rate

Sometimes: light refresh focused on CTAs and meta description (these are what affect post-click action). Sometimes: investigate further before refreshing; the issue may be the page's audience match, not its current content.

### A page that has zero traffic and never ranked

Probably: do not refresh. This is a `content-audit` Prune candidate, not a refresh candidate. Pumping more time into a page that never worked rarely turns it around.

### A page that was performing, dropped significantly, and the drop coincides with a Google update

Often: wait 30-60 days for Google's update to settle, then assess. Refreshing during the volatility period creates confounding signals.

### A page where the topic has been substantially overtaken (e.g., a 2022 piece on a topic where the 2026 reality is different)

Probably: heavy refresh OR consider whether the page should be split into two (with the old still relevant for some queries) or sunset entirely. Consult `content-audit` for the portfolio-level call.

### A page with extensive backlinks but weak current content

Always: refresh, scope determined by how outdated the content is. Backlink equity is too valuable to lose; the URL needs to stay, and the content needs to be brought up to current standards.

## After the Refresh

Per the main SKILL.md workflow:

- Document the refresh in the page log
- Re-submit the URL for indexing
- Set 30 / 60 / 90-day check dates in the calendar
- Compare post-refresh metrics to baseline
- If the refresh produced no improvement after 90 days, the diagnosis was wrong; consider escalating to heavy refresh OR sunsetting the page

The decision tree above is a starting heuristic. With repeated use, the editorial team develops better intuition for which pages need which scope. Document outcomes (especially surprises) to build that institutional knowledge.
