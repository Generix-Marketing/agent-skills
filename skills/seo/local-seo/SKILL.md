---
name: local-seo
description: Use this skill when the user runs a business that serves a geographic market (single location, multi-location, or service-area), and asks about local SEO, Google Business Profile (GBP), Google Maps, local pack, "near me" search, neighborhood ranking, citations, NAP consistency, local reviews, local schema, location pages, or geo-targeted content. Triggers include "local SEO," "Google Business Profile," "GBP optimization," "Google Maps ranking," "show up for near me," "local pack," "rank in [city]," "neighborhood SEO," "service area business." This skill produces a balanced local strategy covering both GBP optimization (the local pack play) and on-site local SEO (the organic blue-link play). Reads client-context.md if present. Pairs with keyword-research (local terms), competitor-analysis (local SERPs), off-page-link-building (local citations and links), and on-page-audit (location-page level).
---

# Local SEO

This skill produces a local search strategy that works on two fronts in parallel: Google Business Profile (which drives local pack visibility) and on-site local SEO (which drives organic blue-link visibility for local queries). Both matter. Most clients underinvest in one or the other.

The two fronts are different games with different mechanics:

- **GBP and the local pack** is a profile-quality, proximity, and review game. Win it primarily by maintaining a complete and active GBP with strong review velocity.
- **On-site local SEO** is a content, schema, and authority game. Win it primarily with well-built location pages, LocalBusiness schema, geo-targeted content, and local backlinks.

A client winning one but not the other leaves money on the table. This skill addresses both as equals.

## When to Run This Skill

Run it when:

- The client serves a geographic market (single location, multi-location, or service-area business)
- The user mentions Google Business Profile, Google Maps, local pack, or "near me" searches
- The user wants to rank in a specific city, neighborhood, or region
- The user is launching a new location or service area
- The competitor analysis surfaces local-pack rankings as a gap
- The user is investigating why GBP is underperforming

Skip it when:

- The business is fully online with no geographic specificity (use `keyword-research` and `on-page-audit` instead)
- The user wants single-page work (use `on-page-audit`)
- The user wants link building broadly (use `off-page-link-building`)

## Before You Start

### Read client-context.md

Local SEO is highly contextual. The metro, the neighborhoods served, the service area shape, and the competitive landscape from `competitor-analysis` all narrow the strategy.

If the file does not exist, ask:

1. What city or region does the business serve, and at what level of granularity (whole metro, specific counties, specific neighborhoods)?
2. Is there a physical address customers visit, a service area without a public address, or both?
3. How many locations? (Single, multi-location chain, franchisee network)

### Audit current local presence

Check these in order:

- **GBP existence and ownership.** Is there a profile? Is it claimed by the client? Is it verified?
- **GBP completeness.** Categories, services, hours, attributes, posts, Q&A, photos. Most profiles are 30-60% complete.
- **GBP performance.** From Insights: how many views, calls, direction requests, website clicks per month?
- **Review profile.** Star average, total count, recent velocity (reviews in last 90 days), response rate, common themes.
- **NAP consistency across top 20 directories.** Use BrightLocal or Whitespark free audit, or check by hand.
- **On-site signals.** LocalBusiness schema present? Address visible in footer? City names in title tags on local-intent pages? Location pages exist?
- **Local pack rankings** for top 5-10 target queries. Manually search each in incognito while geographically located in the service area (or use a tool with geo-spoofing).
- **Organic blue-link rankings** for the same target queries.

This audit produces the baseline. The strategy below builds from it.

## The Strategy (Two Tracks)

### Track A: GBP Optimization (Local Pack Play)

Local pack rankings depend on three factors Google has stated openly: **proximity** (the searcher's location relative to the business), **relevance** (how well the GBP matches the query), and **prominence** (how well-known the business is, signaled by reviews, citations, brand mentions).

Proximity is given by physics; the business cannot move. Relevance and prominence are the levers.

#### Relevance

Make the GBP unambiguously about what the business does.

- **Primary category.** The single most important field. Pick the most specific available category that matches the core business. "Roofer" not "Contractor." "Family Dentist" not "Dentist." Google has tens of thousands of categories; specificity wins.
- **Secondary categories.** Up to 9. Add legitimate secondary services only. Padding with irrelevant categories hurts.
- **Services.** Itemize specific services with descriptions. This is one of the strongest relevance signals in modern GBP.
- **Products.** For applicable businesses (retail, food, some services). Each product gets a name, photo, price, description.
- **Business description.** 750 characters. Use it. Lead with what the business does and the area served.
- **Attributes.** "Wheelchair accessible," "Family owned," "Veteran owned," "Online estimates," "Free Wi-Fi," etc. Add every accurate attribute available.
- **Q&A.** Pre-seed common customer questions. Respond promptly to user-submitted questions. This section is underused and high-impact.

#### Prominence

Build the signals that mark the business as known and trusted.

- **Reviews.** Quantity, velocity, recency, response rate. Aim for at least one new review per week for an active SMB. Five-star average matters less than total count and velocity beyond a threshold.
- **Review responses.** Respond to every review, positive and negative. Polite and specific. Negative reviews handled well become trust signals.
- **Photos.** Upload regularly. Aim for at least 5-10 new photos per month: completed work, team, location, products. GBP shows engagement on photo uploads.
- **GBP Posts.** Weekly minimum. Updates, offers, events, products. Visible in the panel for ~7 days each.
- **Citations and brand mentions.** Covered in `off-page-link-building` references. The breadth and consistency of mentions across the web feeds prominence.

#### Profile hygiene

- **Hours accurate, including holiday updates.** Outdated hours frustrate customers and signal neglect to Google.
- **Suspicious edits monitoring.** Anyone can suggest edits to a GBP. Google sometimes accepts edits without notifying the owner. Audit the profile weekly for unexpected changes.
- **Spam fighting.** If competitors are using fake reviews, keyword-stuffed business names, or other GBP spam, report via Google's redress form. Persistent reporting works.

### Track B: On-Site Local SEO (Organic Blue-Link Play)

Below and around the local pack, organic blue-link results for local queries are won with on-site work.

#### Location pages

For service-area businesses (no public address) or multi-location businesses, dedicated location pages are the primary lever.

- **One page per significant location, neighborhood, or service area.** Quality matters more than quantity; do not template 50 pages to chase 50 zip codes.
- **Each page substantively unique.** Real neighborhood references, real project photos, real local proof points (landmarks, common service requests in that area, named local clients where appropriate). See `on-page-audit` references for the neighborhood-page treatment.
- **Each page has a primary local query target** ("[service] in [neighborhood]") and is built to win it specifically.
- **Each page interlinks with related location pages** (a Carmel page links to Fishers, Westfield, and the parent service hub).
- **Avoid programmatic templating with only city name swap.** Penalty risk under Helpful Content. Even five well-built neighborhood pages outperform fifty templated ones.

#### LocalBusiness schema

JSON-LD schema declaring the business as a LocalBusiness (or the appropriate subtype: Plumber, Dentist, Restaurant, AutoRepair, etc.). Implemented sitewide via a template or per page.

Minimum fields:

- `@type` (specific subtype)
- `name`
- `image` (URL)
- `@id` (canonical URL)
- `url`
- `telephone`
- `address` (PostalAddress object with all fields)
- `geo` (latitude, longitude)
- `openingHoursSpecification`
- `priceRange`

For multi-location, use a `Place` or location-specific schema per location page.

For service-area businesses, use `serviceArea` instead of just `address`.

For aggregate reviews from third-party platforms (Google, Yelp), use `aggregateRating` with a citation source.

Validate via Google's Rich Results Test before deploying.

#### NAP visibility on-site

- Address visible in the site footer on every page.
- Phone number visible in the header on every page.
- A dedicated `/locations/` page (for multi-location) or `/service-area/` page (for service-area business) listing every served area with internal links to corresponding location pages.

#### Geo-targeted content

- Blog posts and resources occasionally targeted to local angles ("How Indianapolis winters affect roof lifespan," "Seasonal home maintenance for Carmel homeowners").
- Pair with keyword research to ensure target queries have actual local demand.

### Pairing the Two Tracks

Track A and Track B amplify each other. A polished GBP without local pages on the site leaves organic rankings underdeveloped. Strong location pages with a thin GBP leave the local pack uncontested.

The cleanest sequencing for a new client:

1. Track A foundations (claim, verify, complete GBP) before anything else.
2. Track B foundations (footer NAP, sitewide LocalBusiness schema, at least one strong location page) in the first 30 days.
3. Track A optimization (reviews program, posts cadence, photo cadence) ongoing.
4. Track B expansion (additional location pages, geo-targeted content) over the following quarters.

## Output Format

```markdown
# Local SEO Strategy: [Client Name]

**Date:** [YYYY-MM-DD]
**Strategist:** [Agent or user]
**Tools used:** [GBP Insights, BrightLocal scan YYYY-MM-DD, manual local-pack checks, etc.]
**Service area:** [Geographic scope]

## Executive Summary

[Three to five sentences. Current state of local presence on both tracks. Biggest gap. Recommended first move. Expected timeline for measurable change.]

## Current State

### Google Business Profile

- **Profile status:** [Claimed / Unclaimed / Verified / Suspended]
- **Completeness:** [Estimated %, with the biggest gaps noted]
- **Last 28 days performance:** [Views, calls, direction requests, website clicks]
- **Reviews:** [Count, star average, last 90-day velocity, response rate]
- **Posts cadence:** [Frequency over last 90 days]
- **Photos:** [Upload cadence, count]

### NAP Consistency

- **Audited across [N] sources.** [N] consistent, [N] inconsistent, [N] missing.
- **Specific inconsistencies to fix:** [List]

### On-Site Local Signals

- **LocalBusiness schema:** [Present / Absent / Partial; on which templates]
- **Footer NAP:** [Present / Absent]
- **Header phone:** [Present / Absent]
- **Location pages:** [Count, quality assessment]
- **Geo-targeted content:** [Count, performance assessment]

### Rankings Snapshot

| Target query | Local pack rank | Organic blue-link rank | Top local pack winner |
|---|---|---|---|

## Top Five Local SEO Priorities

1. **[Priority]** [Track A or B]. [Effort, impact, owner.]
2. ...

## Track A: GBP Optimization Plan

### Immediate (Week 1-2)

- [Specific GBP completeness actions]

### Reviews Program

- **Target velocity:** [N new reviews per month]
- **Review request process:** [How customers are asked, by whom, at what point in the engagement]
- **Response standards:** [Time-to-response target, tone guide]

### Posts and Photos Cadence

- **Posts:** [Weekly minimum, content themes, owner]
- **Photos:** [Monthly minimum, content types, owner]

### Q&A Strategy

- **Pre-seeded questions to publish:** [List 5-10]
- **Monitoring cadence:** [Daily check for new user-submitted questions]

### Ongoing Hygiene

- **Suspicious edit monitoring:** [Weekly check; responsible owner]
- **Holiday hours updates:** [Calendar of upcoming holidays needing updates]
- **Competitor GBP spam monitoring:** [Quarterly review; redress process if needed]

## Track B: On-Site Local SEO Plan

### Foundation (Week 1-2)

- [LocalBusiness schema implementation]
- [Footer NAP if missing]
- [Sitewide local signal audit]

### Location Pages

- **Existing pages to rebuild:** [List from `on-page-audit` and `competitor-analysis` outputs]
- **New pages to create:** [List with priority]
- **Avoid:** templating pattern that creates 50 thin pages

### Geo-Targeted Content

- **Cornerstone local guides to create:** [List]
- **Existing content to refresh with local angle:** [List]

## Citation and Local Link Plan

[Brief; defer to `off-page-link-building` for detail.]

- **Tier 1 citations to verify / complete:** [List]
- **Industry associations to join or audit:** [List]
- **Local press / partner outreach:** [Note workstreams; detailed plan in off-page]

## Tracking

- **GBP metrics:** views, calls, direction requests, website clicks (monthly)
- **Reviews:** count, average, velocity (monthly)
- **Local pack rank tracking:** top 10 queries (monthly, ideally with grid view tool like Local Falcon)
- **Organic local query rankings:** from GSC (monthly)

## Notes

[Caveats: ownership status if disputed, multi-location considerations, regulatory considerations like HIPAA for medical practices, etc.]
```

## Tool Adapters

### Google Business Profile

- **Manage the profile directly** at business.google.com.
- **GBP Insights** provides views, search queries, customer actions. Pull monthly.
- For multi-location, **GBP API** supports bulk management; tools like Yext, Birdeye, Whitespark, BrightLocal automate at scale.

### Local Rank Tracking

- **Local Falcon** (recommended; geo-grid view, the most useful local rank visualization).
- **BrightLocal** rank tracking module.
- **Whitespark** rank tracker.
- **Free fallback:** manual incognito searches from the actual service area, with notes per check.

### Citation Audit

- **BrightLocal Local Citation Tracker** (free scan + paid full audit).
- **Whitespark Local Citation Finder.**
- **Yext** (most expensive, most automated; manages and pushes data feeds).
- **Free fallback:** manual checks of the Tier 1 citation list in `off-page-link-building/references/citation-sources.md`.

### Schema Validation

- **Google Rich Results Test** (free, official).
- **Schema.org Validator** (free).

## When the User Pushes Back

**"We do not need GBP, we have a great website."** GBP and on-site are complementary, not competitive. Local pack typically captures 40-60% of clicks on local queries; ignoring GBP cedes most local visibility regardless of how good the site is.

**"Reviews feel like begging."** Reframe: a quick post-job text asking "If you have a moment, would you mind leaving a Google review?" is industry standard and is not begging. The customers who would not have reviewed otherwise are the ones the prompt unlocks. Mature businesses systematize this.

**"We tried GBP posts and saw no traffic from them."** Posts are not primarily a traffic driver; they signal activity to Google and reinforce the profile in front of users already on the GBP. The cumulative effect is on pack visibility, not on direct clicks.

## Common Pitfalls

- **Templated location pages at scale.** Helpful Content System penalizes this. Better to have five strong neighborhood pages than fifty thin ones.
- **GBP review velocity that swings wildly.** Five reviews in one week followed by nothing for three months pattern-matches to a campaign. Steady cadence beats bursts.
- **Asking for reviews on platforms that violate their TOS by gating.** Do not ask only happy customers; do not screen for stars before requesting. Both violate Google's review policy and risk profile suspension.
- **Stuffing the business name with keywords.** "Cardinal Ridge Roofing - Best Indianapolis Roofer" instead of "Cardinal Ridge Roofing Co." Violates Google's GBP guidelines and gets profiles suspended. Use the legal business name only.
- **Letting holiday hours go unupdated.** Customers showing up to a closed business when GBP says open is one of the worst possible local SEO experiences.
- **Ignoring competitor GBP spam without reporting.** Some competitors play dirty (fake reviews, keyword-stuffed names, fake addresses). Google's redress process works; use it.
- **Building a perfect GBP and a terrible site (or vice versa).** Both tracks together. Neither alone wins the full local search opportunity.

## References

- `references/gbp-optimization-checklist.md`: The complete field-by-field checklist for a fully optimized Google Business Profile.
- `references/reviews-playbook.md`: How to build a sustainable review velocity program, including request templates and response guidance.
- `references/local-schema-templates.md`: JSON-LD schema templates for common local business types, with required and recommended fields.
- `examples/sample-local-seo-strategy.md`: A worked local SEO strategy for the fictional Cardinal Ridge Roofing.
