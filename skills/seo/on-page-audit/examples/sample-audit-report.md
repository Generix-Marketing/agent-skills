# On-Page Audit: https://www.example.com/services/roof-replacement-indianapolis

> Fictional example for illustration. Brand name, URL, and findings are made up.

**Audited:** 2026-05-23
**Auditor:** Agent (using `on-page-audit` skill, with client-context for Cardinal Ridge Roofing loaded)

## Summary

This is the primary service page for Cardinal Ridge Roofing's residential roof replacement offering in the Indianapolis metro. The page is technically sound and indexes correctly, but its title and meta description are wasting impressions, the H1 does not match the keyword the page is targeting, and there is no schema markup despite being a perfect LocalBusiness candidate. The top three fixes below will move the needle within two weeks.

## Top Three Fixes (Do These First)

1. **Rewrite the title tag.** Current title is "Services | Cardinal Ridge Roofing", generic, missing the keyword, missing the city. Suggested: `Roof Replacement in Indianapolis | Cardinal Ridge Roofing` (55 chars).
2. **Add LocalBusiness schema.** The page has none. A LocalBusiness JSON-LD block with name, address, phone, hours, and aggregateRating would qualify the page for rich results and clarify the entity for Google.
3. **Fix the H1.** Currently the H1 is "Welcome." Replace with `Roof Replacement in Indianapolis` so the page's primary topic is unambiguous in the first heading.

## Full Findings

### URL and Status

- URL: `https://www.example.com/services/roof-replacement-indianapolis`, clean, descriptive, hyphenated, no tracking params. Pass.
- Status code: 200. Pass.
- Canonical tag: present, self-referential. Pass.
- HTTPS: yes. Pass.

### Title Tag

**Current:** `Services | Cardinal Ridge Roofing`
**Length:** 36 characters
**Finding:** Issue. The title is generic and missing both the primary keyword ("roof replacement") and the geo modifier ("Indianapolis"). It also does not differentiate from other service pages on the site, which likely all share this template.
**Recommended:** `Roof Replacement in Indianapolis | Cardinal Ridge Roofing` (55 chars)

### Meta Description

**Current:** (none)
**Length:** 0
**Finding:** Issue. Google will auto-generate a meta from the page content, usually from whatever appears first in the visible text. Since the page opens with a generic welcome paragraph, the SERP snippet is likely uncompelling.
**Recommended:** `Cardinal Ridge has replaced over 2,000 roofs across the Indianapolis metro since 2003. Insurance claim help included. Get a free estimate today.` (149 chars)

### Heading Hierarchy

Current outline:

- H1: "Welcome"
- H2: "Our Services"
- H2: "Why Choose Us"
- H3: "Experience"
- H3: "Warranty"
- H2: "Get Started"

Findings:

- H1 is uninformative. Replace with the primary keyword phrase.
- Hierarchy is otherwise clean. Single H1, logical H2 → H3 nesting, no skipped levels.
- "Why Choose Us" is generic. Consider rewriting as "Why Indianapolis Homeowners Choose Cardinal Ridge" for both keyword reinforcement and personality.

### Content Quality

- **Intent match:** Mixed. The page reads more like an "about us" page than a service page. A user searching "roof replacement Indianapolis" wants pricing signals, process, materials, warranty terms, and a path to an estimate. They get some of this, but it is buried.
- **Depth:** Insufficient. The page is roughly 450 words. Competing pages average 1,200 to 1,800. Specifically missing: how long the process takes, what materials are offered, what the warranty covers, what insurance work looks like in practice.
- **Originality:** Low. Content reads like it could be on any roofer's site. No photos of completed Indianapolis jobs, no neighborhood references, no named team members, no specific projects.
- **Readability:** Strong. Short paragraphs, sentence-case headings, plain language. Voice matches the brand (no jargon, "crew" used correctly, no aggressive sales language).
- **Freshness:** Last modified date is not visible to the user. Consider adding "Last updated: [date]" to the page footer.

### Internal Linking

- Internal links INTO this page: not measured (would require a crawl, see `technical-audit`). Recommendation: confirm the homepage, the "Service Areas" page, and at least three neighborhood landing pages link to this URL with the anchor text "roof replacement" or "roof replacement in Indianapolis."
- Internal links OUT of this page: 3 (to homepage, about, contact). Low.
- **Recommendation:** Add 5-8 internal links to: the storm damage page, the insurance claims process page, three neighborhood-specific service pages (Carmel, Fishers, Greenwood), and the materials/warranty page.

### Images

- 2 images on the page.
- Hero image: stock photo of a generic suburban house. Replace with a photo of an actual Cardinal Ridge crew on an Indianapolis roof.
- Both images have alt text but it reads as keyword stuffing ("roof replacement Indianapolis roofer roofing services"). Rewrite to describe what the image actually shows.
- Both images are JPEGs in the 400-600KB range. Convert to WebP and target under 200KB each.

### Schema Markup

- **Current:** None.
- **Recommended:** Add LocalBusiness JSON-LD with the following minimum fields:
  - `name`: Cardinal Ridge Roofing Co.
  - `image`: URL to the hero image
  - `@id`: canonical URL of this page
  - `url`: canonical URL of this page
  - `telephone`: business phone
  - `address`: full PostalAddress
  - `geo`: latitude and longitude
  - `openingHoursSpecification`: business hours
  - `priceRange`: e.g., `$$`
  - `aggregateRating`: if there are review counts to cite from Google Business Profile

### Mobile Rendering

- Renders correctly at 375px width. Pass.
- Tap targets meet the 44x44 minimum. Pass.
- Hero image occupies roughly 80% of the above-the-fold area on mobile, pushing the primary message below the fold. Consider reducing hero height by 30%.
- No horizontal scroll. Pass.

### Performance and Core Web Vitals

- LCP: 3.4 seconds. Issue. Above the 2.5 second threshold. Primary cause: the unoptimized hero image.
- INP: 142ms. Pass.
- CLS: 0.04. Pass.
- Top three Lighthouse opportunities by impact:
  1. Serve images in next-gen formats (WebP / AVIF). Estimated savings: 1.1s.
  2. Properly size images. Estimated savings: 0.6s.
  3. Eliminate render-blocking resources (a Divi theme stylesheet). Estimated savings: 0.4s.

## Priority Matrix

| Fix | Effort | Impact | Owner |
|---|---|---|---|
| Rewrite title tag | Low | High | Writer / SEO |
| Add meta description | Low | High | Writer / SEO |
| Rewrite H1 | Low | High | Writer |
| Add LocalBusiness schema | Medium | Medium-High | Dev |
| Expand content (process, materials, warranty, insurance) | High | High | Writer |
| Replace stock hero image with real crew photo | Medium | Medium | Owner / Photographer |
| Convert images to WebP, compress under 200KB | Low | Medium | Dev |
| Add internal links to neighborhood pages, storm damage, insurance process | Low | Medium | Writer / SEO |
| Rewrite image alt text (remove keyword stuffing) | Low | Low-Medium | Writer |

## Notes

- Recommendation depth assumes Cardinal Ridge will not invest in a full redesign (per client-context constraint). All recommendations work within the existing Divi theme.
- Site took a hit during the August 2025 helpful content update (per client-context). The "thin location pages" hypothesis is consistent with what this audit found on the main service page, likely worse on the neighborhood landing pages. Recommend running this skill on three neighborhood pages next.
- The unclaimed Reddit thread mentioned in client-context is a separate workstream, flag for the Reddit strategy skill, not on-page.
