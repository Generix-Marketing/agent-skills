# Profile Consistency Checklist

The fields to standardize across the major external profiles. Walk through each profile, pull the current value, compare to the canonical source of truth, and update.

## Canonical Source of Truth

First, lock down the canonical values. These become the standard for every profile.

| Field | Canonical value |
|---|---|
| Legal business name | [Exact legal name as filed] |
| Common brand name | [What customers call you; may match legal name] |
| Founding year | [Exact year; not "founded in the early 2000s"] |
| Founder name(s) | [Full names, consistent spelling] |
| Headquarters city / region | [City, State, Country] |
| Employee count range | [Pick a bracket: 1-10, 11-50, 51-200, 201-500, 501-1000, 1001-5000, 5001+] |
| Primary category description | [One short phrase: "SEO and AEO agency," "residential roofing contractor"] |
| Full description (canonical paragraph) | [Approved one-paragraph description, 60-90 words] |
| Primary website URL | [Canonical homepage URL with protocol] |
| Primary phone | [E.164 format preferred for B2B; standard local format for local services] |
| Primary email | [Public contact email] |
| Logo URL | [URL to the canonical logo file] |
| Brand colors | [Hex codes, optional] |

Lock these. Updates require deliberate decision and propagation across every profile.

## Per-Profile Checklist

### LinkedIn Company Page

- [ ] Company name matches canonical legal or common name
- [ ] Website URL matches canonical
- [ ] Industry matches a reasonable LinkedIn category (avoid overly generic)
- [ ] Company size matches canonical bracket
- [ ] Headquarters matches canonical city
- [ ] Founded year matches canonical
- [ ] Specialties list (the LinkedIn-specific service tags) reflects current focus
- [ ] About section (the visible description) leads with the canonical paragraph or a close variant
- [ ] Cover image is current
- [ ] Logo is current

### Crunchbase

- [ ] Organization name matches canonical
- [ ] Founded date matches canonical
- [ ] Headquarters location matches canonical city + region + country
- [ ] Operating status accurate (Active / Closed / Acquired)
- [ ] Company type accurate (For Profit / Non-profit / etc.)
- [ ] Number of employees matches canonical bracket
- [ ] Website URL matches canonical
- [ ] Description matches canonical paragraph (or close variant)
- [ ] Industries tagged reflect current focus, not legacy
- [ ] Founders listed accurately with linked profiles where possible
- [ ] Leadership team listed accurately
- [ ] Recent news / funding events current

### G2 / Capterra / GetApp (SaaS / B2B)

- [ ] Product name matches canonical
- [ ] Company name on the listing matches canonical
- [ ] Founded year matches canonical
- [ ] HQ matches canonical
- [ ] Company size matches canonical bracket
- [ ] Product description leads with canonical positioning
- [ ] Features list current
- [ ] Pricing tier information current
- [ ] Categories the product is listed under are accurate
- [ ] Logo current
- [ ] Screenshots current (not from prior product version)
- [ ] Review responses recent and personalized

### Google Business Profile (Local)

- [ ] Business name = legal business name (no keyword stuffing)
- [ ] Primary category specific and accurate
- [ ] Secondary categories all legitimately offered
- [ ] Address matches canonical (or service area cleared for service-area business)
- [ ] Phone matches canonical
- [ ] Website URL matches canonical
- [ ] Hours accurate including holiday updates
- [ ] Business description uses full 750 characters with canonical positioning
- [ ] Services itemized with descriptions
- [ ] Attributes accurate
- [ ] Photos current (logo, cover, products, team, location)

### Apple Business Connect

- [ ] Business name matches canonical
- [ ] Address matches canonical
- [ ] Phone matches canonical
- [ ] Website matches canonical
- [ ] Hours accurate
- [ ] Categories accurate
- [ ] Photos current

### Bing Places for Business

- [ ] Same field set as GBP, matched to canonical values
- [ ] Verification status current

### Better Business Bureau

- [ ] Business name matches canonical
- [ ] Address matches canonical
- [ ] Phone matches canonical
- [ ] Website matches canonical
- [ ] Hours accurate
- [ ] Description leads with canonical positioning
- [ ] Accreditation status current
- [ ] Recent complaints addressed

### Wikipedia (if applicable)

- [ ] Article exists and is not flagged for deletion or notability concerns
- [ ] Lead paragraph reflects current positioning
- [ ] Founding year matches canonical
- [ ] Founder names match canonical
- [ ] Headquarters matches canonical
- [ ] Industry / category accurate
- [ ] Major events / milestones current
- [ ] Citations are all from reliable secondary sources
- [ ] External links section includes the canonical website

### Wikidata

- [ ] Q-ID exists for the brand
- [ ] `instance of` property set (typically Q4830453 "business" or a more specific subtype)
- [ ] `industry` property set
- [ ] `headquarters location` set
- [ ] `official website` matches canonical
- [ ] `founder` property linked to founder Q-IDs (or string names if founders are not themselves notable)
- [ ] `inception` (founding date) matches canonical
- [ ] `country` set
- [ ] `parent organization` set if applicable
- [ ] Every property has a sourced reference

### Major Social Profiles

For each of LinkedIn (personal pages of founders / executives), X / Twitter, Instagram, Facebook, YouTube, TikTok where the brand is active:

- [ ] Handle / vanity URL consistent across platforms
- [ ] Display name matches canonical brand name
- [ ] Bio reflects canonical positioning
- [ ] Logo / profile image matches across platforms
- [ ] Pinned content (where applicable) current
- [ ] Website link in bio matches canonical URL
- [ ] Last post or activity within the last 30 days (active signal)

### Industry-Specific Directories

For each relevant industry directory (NAR for real estate, AMA for medical, NRCA for roofing, trade association directories):

- [ ] Listing exists
- [ ] Business name matches canonical
- [ ] Contact info matches canonical
- [ ] Description reflects current positioning
- [ ] Membership status current
- [ ] Logo current

## How to Use This Checklist

- **Initial audit:** walk through every profile. Document current vs canonical in a tracking sheet. Surface inconsistencies.
- **Standardization sprint:** update every inconsistent profile. Use the canonical paragraph. Test that updates have propagated (some platforms have caching delays of 24-72 hours).
- **Quarterly audit:** re-walk. Catch any drift. Especially watch GBP (anyone can suggest edits) and LinkedIn (employees sometimes edit company-page content).
- **Triggered audit:** any time canonical values change (new headquarters, new product name, new positioning, new logo), trigger a full sweep within 30 days.

## What to Do When Two Sources Conflict

If two existing profiles disagree on a fact (founding year, employee count) and you cannot determine which is correct:

1. Ask the brand owner / founder. The legal record (state filings, incorporation documents) usually wins.
2. If genuinely ambiguous (e.g., "founded in 2003" vs "incorporated in 2005" vs "first paying customer in 2002"), pick one canonical answer and use it consistently. Document the choice and why.
3. Do not leave conflicting values out in the wild while you decide. Pick the most accurate available, standardize, and revisit if needed.

## Drift Patterns to Watch For

The most common ways profile consistency erodes:

- **A new employee updates the LinkedIn About page without checking the source of truth.**
- **A platform UI update introduces new fields that get populated with new descriptions.**
- **The brand evolves and the canonical paragraph is updated, but not all profiles get the update.**
- **A new platform launches, the brand creates a profile from scratch, and the new profile's description does not match the old ones.**
- **Crunchbase imports outdated data from other sources that overrides current values.**

Build the quarterly audit cadence to catch these. The lower the brand's tolerance for drift, the more important quarterly discipline becomes.
