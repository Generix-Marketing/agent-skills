# On-Page Audit Checklist

A printable / copy-pasteable version of the ten-point audit. Use it when running an audit by hand, or hand it to a client who wants to self-audit before sending a page over.

## 1. URL and Status

- [ ] URL is clean (short, descriptive, lowercase, hyphens, no tracking params)
- [ ] HTTP status returns 200
- [ ] No redirect chains (A → B is fine, A → B → C is not)
- [ ] HTTPS, not HTTP
- [ ] Canonical tag is present and points to the correct URL

## 2. Title Tag

- [ ] 50-60 characters
- [ ] Primary keyword included, ideally near the front
- [ ] Distinct from every other page title on the site
- [ ] Reads like something a human would click

## 3. Meta Description

- [ ] 140-160 characters
- [ ] Compelling, not just descriptive
- [ ] Primary keyword included
- [ ] Soft call to action where appropriate

## 4. Heading Hierarchy

- [ ] Exactly one H1
- [ ] H1 contains the primary keyword and describes the page in one line
- [ ] Logical H2 → H3 → H4 hierarchy with no skipped levels
- [ ] Subheadings preview the value of each section

## 5. Content Quality

- [ ] Intent match: the page answers what the primary keyword's searchers actually want
- [ ] Depth: the page fully satisfies the query
- [ ] Originality: the page offers something the next three competing pages do not
- [ ] Readability: short paragraphs, short sentences, plain language
- [ ] Freshness: updated within 18 months for evergreen, 6 months for trends

## 6. Internal Linking

- [ ] At least 3-5 internal links point INTO this page from elsewhere on the site
- [ ] Page sends 5-15 contextual links OUT to related pages
- [ ] Anchor text is descriptive (not "click here" or "learn more")
- [ ] The most important related pages are linked

## 7. Images

- [ ] Every image has descriptive alt text
- [ ] File names are descriptive
- [ ] Images compressed (under 200KB for content images)
- [ ] Modern formats where supported (WebP, AVIF)
- [ ] Hero image is meaningful (not generic stock)

## 8. Schema Markup

- [ ] Structured data is present
- [ ] Schema type matches page type
- [ ] Required fields are filled
- [ ] Schema does not contradict visible content
- [ ] Validates in Google's Rich Results Test

## 9. Mobile Rendering

- [ ] Page renders correctly at 375px width
- [ ] Tap targets are at least 44x44 pixels
- [ ] Text is readable without zooming
- [ ] No horizontal scroll
- [ ] Critical content is above the fold on mobile

## 10. Performance and Core Web Vitals

- [ ] LCP under 2.5 seconds
- [ ] INP under 200ms
- [ ] CLS under 0.1
- [ ] Top three Lighthouse opportunities addressed
- [ ] Page weight under 2MB total
