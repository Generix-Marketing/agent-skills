# Versions

Changelog for agent-skills. Follows [semantic versioning](https://semver.org/) loosely: major versions for breaking changes (skill renames, removed skills), minor for new skills, patch for fixes and clarifications.

## Unreleased

Planned roadmap is complete with the v0.8.0 release. Future direction: ongoing patches as the AI search space evolves (new AI crawlers to track, new platforms to monitor, new research data to incorporate), plus new skills surfaced by client work (likely candidates: video-content, podcast-strategy, multilingual-content, attribution-modeling). No fixed timeline; future releases driven by demand.

## v0.8.0 (2026-05-25)

Analytics category complete with this release. Two Analytics skills shipped, closing out the planned 25-skill roadmap.

- Added `analytics/marketing-analytics` skill: measurement infrastructure covering GA4 setup, event taxonomy, conversion tracking, attribution modeling, and dual-surface source tracking (with explicit AI Search custom channel grouping). Includes a field-by-field GA4 setup checklist with the dual-surface configuration baked in, plus an event taxonomy template covering universal, B2B lead gen, B2B SaaS, ecommerce, local service, and publisher event sets.
- Added `analytics/search-reporting` skill: stakeholder reporting program covering cadence, format, audience, and metric selection. Both SEO ranking and AEO citation surface as co-equal first-class data in every report. Renamed from "seo-reporting" in the original roadmap because search reporting that only covers SEO is half the picture in 2026. Includes starter report templates for monthly tactical, quarterly strategic, and annual review reports.
- Updated Skills Index to mark Analytics category complete with both skills shipped.

Repo now stands at 25 shipped skills across Foundation (1), SEO (8), AEO (9), Content (5), and Analytics (2). The planned v1.0 roadmap is complete.

## v0.7.0 (2026-05-24)

Content category complete with this release. Five Content skills now shipped covering strategic content planning, scale content production, the writer-brief workflow, ongoing content refresh, and site information architecture.

- Added `content/content-strategy` skill: the strategic primer for the Content category. Topic clusters, content pillars, editorial calendar, content-to-funnel mapping, ownership and measurement. Sits above keyword-research and content-audit as the strategy layer. Includes cluster development worksheet, editorial calendar template, and a worked strategy for the fictional Cardinal Ridge Roofing.
- Added `content/programmatic-content` skill: opinionated guidance on building large numbers of pages from a structured data source, framed for both SEO and AEO. Covers when it works (real differentiation per page, real demand and citation potential per page, real data depth, extractable per-page passages, committed maintenance) and when it fails (templated thin pages that earn Helpful Content System penalties or extract poorly in AI engines). Includes the five-question dual-surface litmus test with worked examples, template design patterns by page type, and a worked plan for a fictional outdoor gear marketplace. (Renamed from "programmatic SEO" since the practice now must serve both surfaces.)
- Added `content/content-briefs` skill: the bridge between strategy and writer execution. The full brief anatomy with adapted templates for the most common page types (pillar, supporting article, comparison, listicle, FAQ, how-to, case study, location, comparison categories, concept explainer).
- Added `content/content-refresh` skill: setting up the refresh program AND the per-page refresh workflow. Distinct from content-audit (portfolio-level keep/cut decisions) and on-page-audit (single-page diagnostic). Includes refresh decision tree for choosing scope (light, medium, heavy, or do not refresh).
- Added `content/site-architecture` skill: URL hierarchy, navigation, internal linking, category taxonomy. Hub-and-spoke vs silo, breadcrumb design, taxonomy depth, consolidate vs split. Includes detailed restructure-migration checklist for safely changing a site's architecture without losing ranking equity.
- Updated Skills Index to mark Content category complete with all five skills shipped.

## v0.6.1 (2026-05-24)

Patch release: alignment of the AEO category with current industry research and best practices. No new skills added; existing skills updated with research-backed data and corrections.

- `aeo/citation-tracking`: added the "Two Realities" section quantifying AI citation instability (~30% brand visibility retention across consecutive runs, ~20% across five runs per current industry research). Corrected the prior overclaim that strong SEO ranking is a foundation for AEO; research has shown ~60% of AI Overview citations come from pages NOT in the top 20 organic results. Added GA4 AI-referral traffic tracking to the spreadsheet template.
- `aeo/ai-search-audit`: added a new "What Drives Citation" section anchoring the audit checks against the citation factors current industry analysis identifies as highest-leverage, with the top 5 drivers ranked in priority order. Added preview control (meta description and OpenGraph) as part of Check #7. Strengthened Check #17 with explicit fan-out rank framing.
- `aeo/ai-crawler-access`: expanded the AI crawler inventory to include AI2Bot, DuckAssistBot, FacebookBot, LinkedInBot, Omgili Bot, and Timpi. Added the corresponding robots.txt allow rules to the default template. Added a new Step 5 covering mobile content parity, HTTPS hygiene, and redirect-chain checks as AEO factors (previously only covered in the SEO category).
- `aeo/content-for-citations`: added a passage/chunk-level relevance reframe before the six patterns (relevance happens at the section level, not the document level). Strengthened Pattern 5 (Headings) with explicit "aligned headings" guidance and research findings on citation-likelihood lift from clean heading hierarchies. Added two new patterns: cite sources outbound and freshness with dateModified hygiene (research has shown roughly 70%+ of AI-cited pages were updated within 12 months).
- `aeo/entity-presence`: added the `references/platform-distribution-by-engine.md` reference mapping AI engines to the external platforms they favor based on commercial partnerships and data agreements (LinkedIn for ChatGPT via the Microsoft partnership, Reddit for ChatGPT and Claude via data licensing, etc.). Strengthened Track B framing to surface platform-distribution as co-equal with profile consistency.

## v0.6.0 (2026-05-23)

AEO category complete with this release. Nine AEO skills now shipped covering primer, audit, content patterns, measurement, entity authority, schema, Reddit strategy, crawler infrastructure, and named framework development.

- Added `aeo/aeo-foundations` skill: conceptual primer covering the three-layer model (retrievability, quotability, entity authority), shared vocabulary, and the AI search landscape. Includes glossary and current map of major AI answer engines.
- Added `aeo/ai-search-audit` skill: 20-point operational audit across three tiers (critical blockers, citation rate drivers, entity authority). Quick-scan and deep-audit modes. Includes diagnostic categorization framework, copy-pasteable quick-scan punch list, and a worked deep-audit example.
- Added `aeo/content-for-citations` skill: writing content that gets cited, not just mentioned. Six patterns: inverted pyramid, quotable sentences, self-contained passages, intent-format match, question-style headings, factual specificity. Includes worked before-and-after rewrites.
- Added `aeo/citation-tracking` skill: monthly measurement program covering mention rate, citation rate, position in response, and competitive presence across ChatGPT, Claude, Perplexity, and Gemini. Includes query set templates for common business categories.
- Added `aeo/entity-presence` skill: building entity authority through on-site schema, off-site profile consistency, Wikipedia/Wikidata work, and author authority. Includes profile consistency checklist and a Wikipedia contribution guide that respects the platform's norms.
- Added `aeo/schema-for-aeo` skill: the five schema types that move AEO (Organization with full sameAs, Person on author bios, Article with auto-updating dateModified, FAQPage matched to real queries, BreadcrumbList sitewide). Includes deployment and maintenance checklist.
- Added `aeo/reddit-strategy` skill: Reddit-first social citation strategy with disclosed-expert presence, AMA mechanics, and the anti-patterns that get brands banned. Includes FTC-compliant disclosure templates.
- Added `aeo/ai-crawler-access` skill: infrastructure configuration including robots.txt for the full 2026 AI crawler inventory, server log verification, JavaScript rendering check, Common Crawl presence audit, and an honest llms.txt assessment. Includes commands for filtering server logs across common hosting environments.
- Added `aeo/named-framework-development` skill: the five-stage path from insight discovery to flywheel-engaged framework citation. Includes practitioner interview and validation questions.
- Updated Skills Index to mark AEO category complete with all nine skills shipped.

## v0.5.0 (2026-05-23)

SEO category complete with this release. Eight SEO skills now shipped covering primer, on-page, technical, keyword, competitor, off-page, content portfolio, and local search.

- Added `seo/off-page-link-building` skill: white-hat authority and link strategy covering digital PR, expert sourcing, local citations, partner backlinks, content-earned links, and reclamation. Explicitly refuses link schemes, PBNs, paid networks, and other tactics that risk manual actions. Includes link quality rubric, outreach templates, foundational citation source list, and a worked example.
- Added `seo/content-audit` skill: portfolio-level inventory and prune workstream. Classifies every URL as keep, improve, consolidate, prune, or redirect. Especially valuable for sites affected by helpful content algorithm updates. Includes classification rubric, HCU recovery playbook, and a worked example.
- Added `seo/local-seo` skill: balanced strategy across Google Business Profile (local pack play) and on-site local SEO (organic blue-link play). Includes GBP optimization checklist, reviews program playbook, local schema templates for common business types, and a worked example.
- Updated Skills Index to mark SEO category complete with all eight skills shipped.

## v0.4.0 (2026-05-23)

- Added `seo/keyword-research` skill: tool-agnostic workflow with adapter sections for Semrush MCP, Ahrefs, GSC, Google Keyword Planner, and free fallbacks. Includes intent classification reference, scoring framework, SERP feature guide, and a worked example for the fictional Cardinal Ridge Roofing.
- Added `seo/competitor-analysis` skill: three-tier competitor framing (direct, aspirational, shadow) with extended treatment of shadow competitors (Reddit, YouTube, AI Overviews, review sites). Includes shadow competitor playbook, content gap method reference, and a worked example.
- Updated Skills Index to show keyword-research and competitor-analysis as Shipped.

## v0.3.0 (2026-05-23)

- Added `seo/seo-foundations` skill: SKILL.md and a quotable glossary reference. Acts as the conceptual primer the rest of the SEO category builds on.
- Added `seo/on-page-audit` skill: SKILL.md, ten-point checklist, title and meta description pattern library, and a worked audit example on a fictional service page.
- Added `seo/technical-audit` skill: SKILL.md, crawl-setup reference (Screaming Frog and free alternatives), GSC pulls reference, dev-ticket templates for the ten most common findings, and a worked audit example on a fictional mid-size site.
- Updated Skills Index to show the three SEO foundations as Shipped, with planned SEO skills listed separately.

## v0.2.0 (2026-05-22)

- Added `_foundation/client-context` skill: SKILL.md, intake-questions reference, and a worked example for a sample SMB client
- Added Quick Start section to README covering install paths, the recommended first prompt, and the role of the foundation skill
- Updated Skills Index to show `client-context` as Shipped

## v0.1.1 (2026-05-20)

- Migrated repo from `GenerixMarketing/agent-skills` user account to `Generix-Marketing/agent-skills` organization
- Updated internal links to reference the new org URL
- Old URL continues to redirect to the new location

## v0.1.0 (2026-05-19)

Initial repo setup.

- Added `README.md` with category overview and usage instructions
- Added `CLAUDE.md` with Claude Code-specific conventions
- Added `AGENTS.md` for cross-agent compatibility (Cursor, Windsurf, Codex)
- Added `CONTRIBUTING.md` with skill submission guidelines
- Added `LICENSE` (MIT)
- Added `.gitignore`
- Added `validate-skills.sh` for SKILL.md frontmatter validation
- Established planned structure for 32 skills across SEO, AEO, Content, and Analytics categories
