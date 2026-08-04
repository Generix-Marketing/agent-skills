# GA4 Setup Checklist

The field-by-field GA4 setup checklist. Includes dual-surface (SEO + AEO) configuration. Walk through in order; later sections depend on earlier ones being done.

## Property Foundation

- [ ] Property created in the right Google Analytics account (verify, since accounts get confused)
- [ ] Property name matches the business (avoid generic names like "Website Property 1")
- [ ] Time zone matches the business location (affects every report)
- [ ] Currency matches the business reporting currency
- [ ] Industry category set (informs benchmarking and AI insights)
- [ ] Data retention set to maximum (14 months for the free tier; 26+ months for GA4 360)
- [ ] Data filters configured: internal IP exclusion for the office network, exclude developer traffic
- [ ] Cross-domain measurement configured if the brand spans multiple domains
- [ ] User-ID feature enabled if the brand has authenticated user data to pass

## Data Stream

- [ ] Web data stream created with the correct domain
- [ ] Measurement ID copied for installation
- [ ] Enhanced measurement enabled (page views, scroll, outbound clicks, site search, video engagement, file downloads)
- [ ] Stream-level events reviewed: anything not relevant disabled, anything missing flagged for custom event creation

## Installation

- [ ] GA4 tag installed via Google Tag Manager (recommended) OR direct gtag.js installation
- [ ] Installation verified via Real-Time report (a manual page visit should appear within 60 seconds)
- [ ] Installation verified via DebugView (events fire with parameters as expected)
- [ ] Tag fires on every page (validate with the Tag Assistant browser extension)
- [ ] Tag does NOT fire twice (a common GTM-plus-gtag.js mistake)

## Conversions

For each primary and secondary conversion:

- [ ] Conversion event defined with consistent naming (e.g., `generate_lead`, `purchase`, `sign_up`)
- [ ] Event configured to mark as a conversion in GA4 (Admin → Events → mark as conversion)
- [ ] Test conversion fires correctly in DebugView with all expected parameters
- [ ] Conversion value assigned if applicable (transaction amount, lead value estimate)
- [ ] Conversion appears in the Conversions report within 24 hours of first real fire

## Custom Channel Grouping (AI Search Channel)

GA4's default channel grouping does not categorize AI-referral traffic. Build a custom channel grouping for it.

- [ ] Admin → Data display → Channel groups → Create new
- [ ] Name it "Channel grouping with AI Search" (or similar)
- [ ] Duplicate the default channel group as a starting point
- [ ] Add a new channel called "AI Search" with these rules:
  - Source contains `chatgpt.com`
  - OR source contains `perplexity.ai`
  - OR source contains `claude.ai`
  - OR source contains `copilot.microsoft.com`
  - OR source contains `gemini.google.com`
  - OR source contains `you.com`
  - OR source contains `phind.com`
  - OR source contains `brave.com` (when Brave AI summary is used)
- [ ] Position the AI Search rule BEFORE the catch-all "Referral" rule so AI traffic does not get bucketed as Referral
- [ ] Apply the custom channel grouping as the default in standard reports
- [ ] Verify by visiting the site from an AI engine and confirming the visit shows under AI Search in real-time

Re-check the rule list quarterly. New AI engines emerge. Add them as they appear.

## UTM Convention

Standardize the team's UTM convention. Without standardization, traffic source data is unreliable across campaigns.

- [ ] Document the standard format in a team-accessible location
- [ ] Standard format:
  - `utm_source`: the platform (google, linkedin, facebook, email, etc.)
  - `utm_medium`: the channel type (cpc, organic_social, email, referral, paid_social)
  - `utm_campaign`: the named campaign (lowercase, hyphenated, year prefix optional: `2026-q1-product-launch`)
  - `utm_content`: the specific creative or piece
  - `utm_term`: keyword for paid search (Google Ads usually populates this automatically)
- [ ] Build a UTM generator tool or template for the team
- [ ] Audit existing UTMs across active campaigns; fix inconsistencies

## Internal Site Search

- [ ] Site has a search function (skip if not)
- [ ] Enhanced measurement → Site search enabled
- [ ] Search query parameter configured (usually `q` or `s` or `search`)
- [ ] Test by performing a site search and verifying the search term appears in the View site search terms report

## GSC Linkage

- [ ] GA4 property linked to Google Search Console property (Admin → Product links → Search Console links)
- [ ] Verify GSC data flows into GA4 by checking the Search Console reports (Queries, Google organic search traffic)
- [ ] Confirm the GSC property linked is the correct one (domain property vs URL prefix; common confusion)

## Google Ads Linkage

If running paid ads:

- [ ] GA4 linked to Google Ads (Admin → Product links → Google Ads links)
- [ ] Auto-tagging enabled in Google Ads
- [ ] GCLID parameter flowing through to GA4
- [ ] Conversions imported from GA4 into Google Ads for bidding optimization
- [ ] Conversion attribution model in Google Ads matches GA4 convention

## BigQuery Export (Optional, Recommended for Mid-Market+)

- [ ] BigQuery linked (Admin → Product links → BigQuery links)
- [ ] Daily export configured
- [ ] Streaming export configured for real-time data (optional)
- [ ] Cost monitoring set up on BigQuery side

Why: GA4 sampling kicks in on large data sets in the GA4 UI. BigQuery export gives full unsampled data and supports SQL-based analysis.

## User Permissions

- [ ] Admin access: limited to 2-3 people
- [ ] Editor access: marketing analytics owner
- [ ] Analyst access: anyone who needs to build reports
- [ ] Viewer access: stakeholders who need to see reports but not change configuration
- [ ] Document who has what level in the team wiki

## Documentation

Before considering setup complete:

- [ ] Event taxonomy documented (see `event-taxonomy-template.md`)
- [ ] Conversion definitions documented
- [ ] Channel grouping configuration documented
- [ ] Attribution model documented
- [ ] Known measurement gaps documented (AI Overview attribution, offline conversions, etc.)
- [ ] Integration map documented (GA4 → GTM → CRM → ads, etc.)
- [ ] Maintenance cadence documented (who checks what, when)

Store all documentation in a single source-of-truth location. A team wiki page, a README in the analytics repo, or a Notion database all work; what does not work is scattered docs across email and chat.

## Validation (Run After Setup)

- [ ] Real-Time report shows a self-test page visit immediately
- [ ] DebugView shows expected events with parameters when triggered
- [ ] Conversion event fires correctly with a test transaction or form submission
- [ ] AI Search channel grouping captures a self-test visit from ChatGPT or Perplexity
- [ ] GSC data appears in the Queries report (may take 24-48 hours)
- [ ] Google Ads data appears in the Ads reports (within 24 hours of campaign activity)
- [ ] CRM integration: a test lead flows from GA4 conversion to the CRM with correct attribution

If any validation fails, fix before considering setup complete and before relying on the data for decisions.

## Triggered Re-Audits

Re-run the relevant sections of this checklist when:

- The site migrates to a new CMS or platform
- The brand rebrands or changes domain
- New conversion paths are added (new product, new lead form, new service)
- New AI engines emerge (update the AI Search channel grouping)
- A major Google Ads or GA4 update changes default behavior
- Stakeholder reports start showing numbers that do not match other sources

Catching configuration drift early prevents months of decisions made on bad data.
