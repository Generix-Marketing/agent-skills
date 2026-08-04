---
name: marketing-analytics
description: Use this skill when the user wants to set up marketing analytics, configure GA4, build conversion tracking, set up attribution, measure cross-channel performance, track AI-referral traffic, audit existing analytics setup, or diagnose attribution problems. Triggers include "marketing analytics," "GA4 setup," "Google Analytics," "conversion tracking," "attribution model," "cross-channel attribution," "AI referral traffic," "marketing measurement," "analytics audit," "measurement plan." This skill produces a measurement infrastructure plan covering tracking setup, event taxonomy, conversion definitions, attribution model, and dual-surface (SEO + AEO) source tracking. Reads client-context.md. Pairs with search-reporting (how to communicate the measurement) and citation-tracking from the AEO category.
---

# Marketing Analytics

This skill produces the measurement infrastructure a marketing program needs to know if anything is working. The output is a tracking setup, an event taxonomy, conversion definitions, an attribution approach, and source-tracking that treats SEO and AEO as first-class channels alongside paid, email, social, and direct.

Most analytics setups in 2026 were built for a pre-AI-search world. They track organic search as one bucket, miss AI referral traffic entirely, and apply attribution models that assume the user took a clean linear path from query to conversion. This skill addresses that.

Marketing analytics is not the same as marketing reporting. This skill builds the measurement; `search-reporting` covers how to communicate it. The two are paired but distinct.

## When to Run This Skill

Run it when:

- The user is launching a new website or replatforming and needs analytics built from scratch
- The user has existing analytics but cannot answer basic questions ("how many leads came from organic last month?")
- The user is migrating from Universal Analytics to GA4 (years late, but it still happens)
- The user is adding AEO to their program and needs to track AI-referral traffic
- The user wants attribution that reflects how buyers actually research and convert in 2026
- An audit of existing analytics is needed before any optimization work

Skip it when:

- The user wants the reports (use `search-reporting`)
- The user wants AEO citation tracking specifically (use the AEO category's `citation-tracking`)
- The user wants conversion rate optimization (analytics is a prerequisite, not the same skill)

## Before You Start

Read `client-context.md`. The measurement plan depends on the business model (lead gen vs ecommerce vs SaaS vs publisher), the conversion definition (form submission, demo request, purchase, signup), the sales cycle length (a B2B SaaS with 90-day cycles needs different attribution than an ecommerce store with same-day purchases), and the tool stack already in place.

Also check what already exists. Most clients have some analytics setup, even if incomplete. Auditing what is there before building new prevents duplicate tracking, broken events, and the consultant-classic move of replacing something that mostly worked.

## The Five Decisions

A marketing analytics setup is the answer to five questions, in order.

### 1. What is the primary conversion the program optimizes for?

Pick one. There can be secondary conversions (newsletter signups, content downloads, video watches), but the primary conversion is the one every other measurement decision serves.

- B2B lead gen: usually a demo request or qualified form submission
- B2B SaaS: usually a free trial start or paid conversion
- Ecommerce: a purchase, with optional secondary conversions like add-to-cart or account creation
- Publisher: usually ad revenue per session, with secondary like newsletter subscriptions
- Local service: form submission or tracked phone call

The primary conversion gets the most rigorous tracking, the most attribution attention, and the most cross-channel surfacing.

### 2. What is the event taxonomy?

Every action worth tracking gets a named event. The taxonomy should be:

- **Consistent.** `form_submit` is the same event whether it fires on the contact page or the demo page; parameters distinguish the form, not the event name.
- **Predictable.** Naming follows a documented convention. snake_case event names; descriptive parameters.
- **Bounded.** GA4 has limits (500 distinct events, 25 user parameters, 25 event parameters per event). A naming convention prevents accidental sprawl.

Standard event categories most programs need:

- **Conversion events:** the primary plus 1-5 secondary conversions
- **Engagement events:** scroll depth on key pages, video play / completion, downloads, outbound link clicks
- **Form events:** form_view, form_start, form_submit, form_error (helps diagnose drop-off)
- **Search events:** internal site search, including the query (for keyword research feedback)
- **CTA events:** clicks on primary CTAs across the site
- **Page events:** automatic page_view, plus custom events for key page interactions

Document the taxonomy in a single source-of-truth file. Without documentation, the taxonomy drifts and reports become unreliable.

### 3. What is the attribution model?

GA4 defaults to data-driven attribution for users with sufficient data; for smaller programs, last-click is the default. Neither is automatically right.

- **Last click:** simple, easy to defend, undercredits assists (especially top-of-funnel content).
- **First click:** opposite tradeoff, overcredits the first touch.
- **Linear:** equal credit to every touchpoint. Easy to explain, rarely matches reality.
- **Position-based (40/20/40):** 40% to first, 40% to last, 20% spread across middle. Reasonable default.
- **Data-driven (Google):** ML-based, requires sufficient data volume. The right answer when available.

For modern programs, a hybrid approach often works best: data-driven attribution in GA4 for the primary measurement, with a parallel last-click view for stakeholders who do not trust the black box, plus a documented assist-tracking method for content that influences but does not convert directly.

For AEO specifically: AI engines often serve as an assist (the user sees the brand cited in ChatGPT, then later searches the brand directly and converts). Pure last-click attribution misses this entirely. Either upgrade to data-driven or build a custom assist-tracking layer for AI-referral sources.

### 4. How are sources and mediums tracked, including AI?

The traffic-source layer determines whether organic, paid, social, email, AI-referral, and direct each get credited correctly.

**Standard UTM convention** (use across every external campaign):

- `utm_source`: the platform (google, linkedin, email, etc.)
- `utm_medium`: the channel type (cpc, organic, social, email, referral)
- `utm_campaign`: the named campaign
- `utm_content`: the specific piece (helpful for A/B variants)
- `utm_term`: the keyword for paid, optional

**AI-referral tracking** (often missed):

GA4 default channel grouping does not categorize AI-referral traffic correctly. Most ChatGPT and Perplexity referrals show up as "Referral" or "Direct" depending on browser configuration. Set up a custom channel grouping with these conditions:

- Source contains `chatgpt.com` → Channel: AI Search
- Source contains `perplexity.ai` → Channel: AI Search
- Source contains `claude.ai` → Channel: AI Search
- Source contains `copilot.microsoft.com` → Channel: AI Search
- Source contains `gemini.google.com` → Channel: AI Search
- Source contains `you.com` → Channel: AI Search
- Source contains `phind.com` → Channel: AI Search

Apply the custom channel grouping to every standard report. Then traffic from AI engines becomes its own visible row alongside Organic Search, Paid Search, Social, etc.

**Google AI Overview tracking** is trickier: AI Overview citations send users to the cited URL, but the referrer typically shows as `google.com`. There is no clean way to separate AI-Overview-driven clicks from regular organic Google clicks in GA4 today. Document this as a known measurement gap rather than pretending it is solved.

### 5. What tools beyond GA4?

GA4 is the core but not the only piece. The full stack for most programs:

- **GA4** (free): primary web analytics
- **Google Search Console** (free): SEO performance, indexation
- **Google Tag Manager** (free): event firing, tag deployment
- **Microsoft Clarity** (free) or Hotjar (paid): session recording, heatmaps
- **CRM** (HubSpot, Salesforce, Pipedrive, etc.): conversion attribution beyond the form fill
- **AEO tracking platform or spreadsheet** (per `citation-tracking`): AI citation visibility
- **Looker Studio** (free) or similar: dashboards and reporting
- **Call tracking** (CallRail, etc.): for local services where phone is a primary conversion

Smaller programs can run on just GA4 + GSC + GTM. Mid-market programs add CRM integration and a session-recording tool. Enterprise adds attribution platforms (Ruler Analytics, HockeyStack), full dashboarding solutions, and custom data warehouses.

Match the stack to the program's complexity. A small business with 50 leads a month does not need an enterprise attribution platform.

## The Five Workstreams

Translating the five decisions into the actual work.

### Workstream 1: Audit existing setup

Before building, document what already exists.

- What GA4 properties exist? Are they configured correctly (domain, time zone, currency, data retention)?
- Which events are firing? Pull the Events report and review the last 90 days.
- Which conversions are defined? Are they firing correctly? Validate by triggering each one manually.
- Which integrations are in place? CRM, ad platforms, marketing automation.
- Where are the gaps? Common: no AI-referral tracking, no scroll-depth events, no internal site search tracking, no form_error events.

Output: an audit document. List what works, what is broken, what is missing.

### Workstream 2: Build or fix the tracking

In priority order:

1. **Foundation:** fix the GA4 property if it is misconfigured. Set data retention to maximum (currently 14 months for free tier).
2. **Conversion tracking:** the primary conversion must fire correctly. Test it. Then secondary conversions.
3. **Custom channel grouping:** add the AI Search channel grouping above. Document the configuration.
4. **Event taxonomy:** deploy the events from the taxonomy decision. GTM is the cleanest deployment mechanism for non-developer-managed events.
5. **Integration to CRM:** map GA4 conversions to CRM lead records so lead source flows through to sales.
6. **Optional:** session recording, attribution platform, call tracking per scope.

### Workstream 3: Validate and document

A tracking setup that is not validated and documented degrades within 6 months. Every new team member breaks things they did not know were there.

- Validate every event with a real user action.
- Validate conversion attribution end-to-end (form submission appears as conversion in GA4, lead appears in CRM with correct source).
- Document the event taxonomy, the attribution model, the channel grouping, the integration map.
- Store the documentation where the team will actually look (project wiki, shared drive, README in the analytics repo if technical).

### Workstream 4: Build the dashboards

Looker Studio or equivalent. The dashboard layer is where stakeholders actually look. Without this, the data is invisible to everyone who is not in GA4 daily.

Minimum dashboard set:

- **Executive summary:** top-line metrics for the last 28 days vs the prior 28 days. Traffic, conversions, primary conversion rate, AI referral traffic share.
- **Channel performance:** traffic and conversions by channel (Organic, Paid, AI Search, Email, Social, Direct, Referral) with month-over-month and year-over-year comparison.
- **Page performance:** top pages by traffic, top pages by conversion contribution.
- **Conversion funnel:** form_view → form_start → form_submit drop-off rates per primary conversion.

Detailed dashboard work lives in `search-reporting`. Marketing-analytics produces the data layer the dashboards consume.

### Workstream 5: Ongoing maintenance

Analytics setups break. New site sections do not have events. CRM integrations get disconnected. Channel groupings need updating as new AI engines emerge.

- **Monthly:** spot-check that conversions are firing, that channel grouping is still capturing AI referral, that the dashboard data is current.
- **Quarterly:** full event taxonomy review. New events to add (new CTAs, new conversion paths). Stale events to remove.
- **Annually:** attribution model review. Has the buyer journey changed? Is the model still right?
- **Triggered:** any site relaunch, CMS migration, or rebrand triggers a full setup re-audit.

## Output Format

```markdown
# Marketing Analytics Setup: [Client]

**Date:** [YYYY-MM-DD]
**Analyst:** [Agent or user]
**Tools in scope:** [GA4, GSC, GTM, CRM, AEO tracking, etc.]

## Decision 1: Primary Conversion

- **Primary conversion:** [Specific definition]
- **Secondary conversions (max 5):** [List]
- **Sales cycle implication:** [How attribution windows reflect the actual cycle]

## Decision 2: Event Taxonomy

| Event | Trigger | Parameters | Conversion? |
|---|---|---|---|
| [event_name] | [What fires it] | [Key parameters] | Yes / No |

[Repeat for all tracked events]

## Decision 3: Attribution Model

- **Primary model:** [Data-driven / Position-based / Last-click / etc.]
- **Parallel views maintained:** [If applicable]
- **AEO attribution approach:** [How AI assist gets credit]
- **Documented limitations:** [What the model cannot capture]

## Decision 4: Source/Medium Tracking

- **UTM convention:** [Standardized format]
- **Custom channel grouping (AI Search):** deployed yes/no, configuration documented at [link]
- **Known gaps:** [AI Overview attribution, etc.]

## Decision 5: Tool Stack

| Tool | Purpose | Status | Owner |
|---|---|---|---|

## Workstream Status

### Workstream 1: Audit
[Findings summary]

### Workstream 2: Build/Fix
[What was deployed, what remains]

### Workstream 3: Validate and Document
[Validation status, documentation location]

### Workstream 4: Dashboards
[Dashboard set built, link to dashboard, owner]

### Workstream 5: Maintenance Cadence
- Monthly check: [Owner, what is checked]
- Quarterly review: [Owner, scope]
- Annual review: [Date]

## Known Measurement Gaps

[Honest list of what the setup does NOT capture. Examples: AI Overview clicks attributed to organic, phone calls without call tracking, offline conversions, etc.]

## Notes

[Anything else: pending integrations, dependencies on other workstreams, expected timeline to full setup.]
```

## When the User Pushes Back

**"We just want to see traffic."** Fine, but traffic is the easiest metric to fake-good. The setup needs conversions or there is no way to tell whether traffic is doing anything for the business. Start with the primary conversion if nothing else; build out from there.

**"GA4 is too complicated."** It is more complicated than Universal Analytics was. The complexity reflects how messy modern attribution actually is. Workarounds (using GA4 like UA, ignoring events, treating page_view as the only signal) waste GA4's actual capabilities.

**"AI referral traffic does not show up much yet."** Often true today, growing fast. Setting up the channel grouping now means having the baseline when traffic does start coming. A program that adds AI Search tracking after the traffic arrives is months behind a program that set it up in advance.

**"Why not Plausible / Fathom / [other lightweight analytics]?"** They have valid use cases (privacy-focused, simpler, lighter). For marketing programs needing conversion attribution and channel comparison, GA4 still wins on completeness. Lightweight tools are better suited for content sites where session count is the primary metric.

## Common Pitfalls

- **Tracking everything, analyzing nothing.** Hundreds of events firing, nobody pulling the data into decisions. Less is more.
- **No event documentation.** Without it, six months later nobody knows what `cta_click_v2_final` actually tracks.
- **Conversion tracking that does not match CRM.** GA4 shows 50 leads; sales says 30. Without reconciliation, both numbers lose credibility.
- **Attribution model chosen by default.** Picking by default rather than deliberately means the model probably does not match the business.
- **No AI referral tracking.** Setting up GA4 in 2026 without an AI Search custom channel grouping is missing an entire growing channel.
- **Dashboards built once, never updated.** A dashboard with stale data is worse than no dashboard.
- **Treating GA4 as the source of truth without CRM reconciliation.** GA4 has its own attribution model; the CRM has another. They will disagree. Document which is canonical for which questions.
- **Ignoring measurement gaps.** Every analytics setup has gaps (AI Overview attribution, offline conversions, multi-device journeys). Pretending they are solved erodes trust when stakeholders discover them.

## References

- `references/ga4-setup-checklist.md`: The field-by-field GA4 setup checklist including dual-surface (SEO + AEO) configuration.
- `references/event-taxonomy-template.md`: A starter event taxonomy with the most common events for B2B, SaaS, ecommerce, and local-service programs.
