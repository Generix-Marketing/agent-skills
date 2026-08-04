---
name: on-page-audit
description: Use this skill when the user gives you a single URL and asks you to audit it, review it, check its SEO, see what is wrong with it, optimize it, or fix it. Triggers include "audit this page," "what is wrong with this URL," "how can I improve this page," "review my landing page," "is this page optimized," or any request to assess one specific page (not a whole site). The output is a structured report covering title and meta, headings, content quality, internal linking, images, schema markup, mobile rendering, and intent match. Reads client-context.md if it exists in the working directory. Do not use this skill for site-wide crawls (use technical-audit) or for keyword selection (use keyword-research).
---

# On-Page Audit

This skill produces a structured audit of a single URL. The output is a report the user can hand to a client, a developer, or a content writer without rewriting it. The audit covers ten checkpoints in a fixed order, maps each finding to a fix, and prioritizes the work.

## When to Run This Skill

Run it when:

- The user gives you one specific URL and asks for an audit, review, or critique
- The user says "this page is not ranking" or "this page lost traffic"
- The user is preparing to launch a page and wants a pre-flight check
- The user wants a deliverable they can share with a stakeholder

Skip it when:

- The user wants a site-wide audit (use `technical-audit`)
- The user wants help picking keywords (use `keyword-research`)
- The user wants the page rewritten in their voice (use `generix-brand-writer` or a content skill)
- The user is asking a conceptual question (use `seo-foundations`)

## Before You Start

Check the working directory for `client-context.md`. If it exists, read it. Use the client's voice notes when writing the report, their goals when prioritizing fixes, and their constraints when recommending changes. If it does not exist, proceed without it but note in the report that recommendations are generic and could be sharper with client context.

Then fetch the page. Options, in order of preference:

1. **Claude in Chrome** (`mcp__Claude_in_Chrome__navigate` + `mcp__Claude_in_Chrome__get_page_text` and `mcp__Claude_in_Chrome__read_page`). Renders JavaScript, sees what users see. Best for modern sites built with React, Vue, or any client-rendered framework.
2. **WebFetch.** Faster for static sites. If the returned content looks like a shell ("enable JavaScript," loading spinner, missing body), escalate to Chrome.
3. **A user-provided HTML dump.** If the user pastes the source, use that.

You need the rendered HTML, the visible text, and ideally the page's HTTP status code and any redirect chain. If you only have one of these, do what you can and flag the gap in the report.

## The Ten-Point Audit (Fixed Order)

Walk through these in order. Do not skip ahead. The order moves from "must be right" to "nice to have," so if you run out of time or token budget, the most important fixes are already covered.

### 1. URL and Status

- Is the URL clean? Short, descriptive, lowercase, hyphens (not underscores), no tracking params, no session IDs.
- HTTP status code: 200 expected. Flag 301 chains, 302s that should be 301, 404s, 500s.
- HTTPS, not HTTP.
- Canonical tag: present and self-referential (or pointing to the intended canonical).

### 2. Title Tag

- Length: 50-60 characters is the sweet spot. Longer gets truncated in SERPs.
- Includes the primary keyword (or a close variant), ideally near the front.
- Distinct from every other title on the site.
- Reads like something a human would click. "Roof Replacement in Indianapolis | Cardinal Ridge Roofing" beats "Indianapolis | Roof Replacement | Roofing Services | Cardinal Ridge Co. | IN."

### 3. Meta Description

- Length: 140-160 characters.
- Compelling, not just descriptive. Treat it as ad copy.
- Includes the primary keyword (Google bolds it in the SERP).
- Has a soft call to action where appropriate ("Get a free estimate," "See pricing," "Read the guide").
- If missing, Google will write one from the page content, often badly.

### 4. Heading Hierarchy

- Exactly one H1 per page. Should contain the primary keyword and answer "what is this page about" in one line.
- Logical H2 → H3 → H4 hierarchy. Do not skip levels (no H2 jumping to H4).
- Headings describe sections, not styles. Do not use H3 just because you want a smaller font.
- Subheadings should preview the value of the section. "How long does a roof replacement take" is better than "Timeline."

### 5. Content Quality

This is the most subjective checkpoint. Use this lens:

- **Intent match.** Does this page answer the query its primary keyword implies? Informational query, informational content. Commercial query, commercial content. The single most common reason a page does not rank is intent mismatch.
- **Depth.** Does the page fully satisfy the query, or does it leave the user with follow-up questions? A 400-word page can be deep if the topic is narrow; a 4,000-word page can be thin if it pads.
- **Originality.** Does the page say anything the next three competing pages do not? First-hand experience, original data, specific examples, named people, photos of actual work, these are signals of originality.
- **Readability.** Short paragraphs (1-3 sentences), short sentences (15-20 words average), plain language, scannable. No corporate jargon.
- **Freshness.** When was this last updated? For evergreen content older than 18 months, flag for review. For news or trends content, flag anything older than 6 months.

### 6. Internal Linking

- How many internal links point INTO this page from elsewhere on the site? (Ask the user to check, or run a crawl.)
- How many internal links does this page send OUT? Aim for 5-15 contextual links to related pages.
- Anchor text: descriptive, not "click here" or "learn more."
- Are the most important related pages linked? A blog post about roof maintenance should link to the relevant service page.

### 7. Images

- Every image has descriptive alt text. Not "image1.jpg," not blank, not stuffed with keywords. Describe what the image actually shows.
- File names are descriptive (`asphalt-shingle-roof-installation.jpg`, not `IMG_4521.jpg`).
- Images are compressed. Anything over 200KB for a standard content image is too large.
- Modern formats where supported (WebP or AVIF) with fallbacks.
- Hero images include a person, a place, or a thing, not stock illustrations of arrows hitting targets.

### 8. Schema Markup

- Is there any structured data? Check the page source for JSON-LD blocks.
- Does the schema match the page type? Article schema on articles, Product on products, LocalBusiness on local landing pages, FAQPage on FAQ sections.
- Validate against the Schema.org spec. Common mistakes: missing required fields, mismatched types, contradicting the visible content.
- If schema is missing and would help, recommend the specific type and the minimum required fields.

### 9. Mobile Rendering

- Does the page render correctly on mobile? Use Chrome to view at a 375px width if you can.
- Tap targets are large enough (44x44 pixels minimum).
- Text is readable without zooming.
- No horizontal scroll.
- Critical content is above the fold on mobile, not buried under a giant hero image.

### 10. Performance and Core Web Vitals

- LCP (Largest Contentful Paint): under 2.5 seconds is good.
- INP (Interaction to Next Paint): under 200ms is good.
- CLS (Cumulative Layout Shift): under 0.1 is good.
- Use PageSpeed Insights or the Chrome DevTools Performance tab if you have access.
- Flag the top three Lighthouse opportunities by impact, not by score.

## Output Format

Always produce the report in this structure. Always write the title with the URL being audited so the user can save and find it.

```markdown
# On-Page Audit: [URL]

**Audited:** [YYYY-MM-DD]
**Auditor:** [Agent or user]

## Summary

[Two to three sentences. What is the page, what is the biggest issue, what is the recommended next step.]

## Top Three Fixes (Do These First)

1. **[Fix name]**, [One-line explanation of the problem and the fix.]
2. **[Fix name]**, [...]
3. **[Fix name]**, [...]

## Full Findings

### URL and Status
[Finding. Pass / Issue / Recommendation.]

### Title Tag
**Current:** `[exact current title]`
**Length:** [N] characters
**Finding:** [Pass / Issue]
**Recommended:** `[suggested new title if changes needed]`

### Meta Description
**Current:** `[exact current meta]`
**Length:** [N] characters
**Finding:** [Pass / Issue]
**Recommended:** `[suggested new meta if changes needed]`

### Heading Hierarchy
[List the heading outline as found, then findings.]

### Content Quality
[Findings on intent match, depth, originality, readability, freshness.]

### Internal Linking
[Findings on links in and out.]

### Images
[Findings on alt text, file names, compression, format.]

### Schema Markup
[What schema is present, what is missing, what is recommended.]

### Mobile Rendering
[Findings.]

### Performance and Core Web Vitals
[Findings, with specific scores if available.]

## Priority Matrix

| Fix | Effort | Impact | Owner |
|---|---|---|---|
| [Fix] | Low / Med / High | Low / Med / High | Writer / Dev / Designer |

## Notes

[Anything else worth flagging: missing data, items to revisit, dependencies on other pages.]
```

## How to Prioritize Fixes

Three rules:

1. **Crawl and index blockers come before everything.** If the page is noindexed, has a broken canonical, or returns a 404 part of the time, fix that first. None of the other work matters until the page is in the index correctly.
2. **Intent match before content depth.** If the page is targeting the wrong intent, no amount of content improvement saves it. Re-target or rewrite.
3. **Title and meta before body content.** They take ten minutes to fix and move the CTR needle for every existing impression. Body content takes hours and the impact compounds slower.

When in doubt, ask: what would I do with one hour of a developer's time and one hour of a writer's time? Recommend those two things first.

## When the User Pushes Back

Some users want a single-line answer: "is this page good or bad." Resist the temptation to oversimplify, but you can give them the summary and offer to dig in:

> The biggest issue is intent mismatch: this page is written like a blog post but the keyword you are targeting drives commercial-investigation traffic. Want the full audit, or do you want to focus on the intent question first?

When they want the full audit, deliver the full audit. When they want a focused dive, focus.

## Common Pitfalls

- **Auditing a page without knowing what it is supposed to do.** Ask the user what query the page is targeting and what action it should drive. Without that, the audit is generic.
- **Recommending changes that break the brand voice.** Read `client-context.md` first. A "compelling" title written in agency tone will be rejected by a brand that values plainspoken copy.
- **Skipping the mobile check.** Most users are on mobile. Most auditors check desktop only because it is easier. The gap is where the regressions live.
- **Confusing low-effort wins with low-impact wins.** A title rewrite is low-effort AND high-impact. A schema audit is medium-effort and often low-impact. Sort the priority matrix accordingly.
- **Writing the report in a way the client cannot act on.** "Improve content quality" is not a fix. "Add a 200-word section answering 'how long does a roof replacement take' under the existing 'Process' heading" is a fix.

## References

- `references/checklist.md`: The ten-point audit as a copy-pasteable checklist for users running their own audits.
- `references/title-meta-patterns.md`: Title and meta description templates for common page types (service, product, blog, location, FAQ).
- `examples/sample-audit-report.md`: A worked audit on a fictional service page, showing the full output format.
