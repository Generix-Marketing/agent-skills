# agent-skills

**25 production-grade Agent Skills for SEO, AEO, content, and analytics work.** Drop them into Claude (or any agent that follows the [Agent Skills spec](https://agentskills.io)) and turn vague requests like "audit this site" into structured, deliverable-quality output.

Built and used in client work by [Generix Marketing](https://www.generixmarketing.com/).

---

## What This Repo Is (And What It Isn't)

**This is a practitioner's toolkit, not a replacement for one.** These skills help a senior SEO/AEO professional move faster: structured audits, consistent deliverables, and reusable workflows that don't require re-explaining context every session. They give the agent enough guardrails to produce something genuinely useful instead of generic checklist output.

**They are not a replacement for an experienced SEO or AEO professional.**

What these skills do well:

- Generate initial audits and ideas a practitioner can build from
- Run structured spot-checks for things that should be present
- Produce consistent, decision-grade reports across clients
- Surface obvious wins quickly

What they don't do (and shouldn't be sold as doing):

- Replace site-specific judgment about what actually matters for a given business
- Detect every near-duplicate, cannibalization, or content-quality issue across a large portfolio without practitioner oversight
- Substitute for first-hand experience interpreting GSC anomalies, traffic drops, or algorithm impact
- Eliminate the need for a developer or a real implementation plan

Treat the output as a strong first draft that a seasoned practitioner reviews, weights against site context, and turns into something a client can act on. The skills are designed with this in mind: most include "what this audit did not cover" sections, severity-with-context rules, and explicit pushback against vanity metrics and composite health scores.

---

## Why This Repo Exists

Most AI agents are generalists. Ask one to "do SEO" and you'll get a generic checklist that misses the specifics of your stack, your industry, and what's actually moving in 2026 search (where AI Overviews, Perplexity, and ChatGPT citations matter as much as blue links).

A **Skill** fixes that. It's a folder the agent loads automatically when your prompt matches its trigger description. Inside is a `SKILL.md` with a worked process, output format, common pitfalls, and references the agent reads only when it needs them. Result: the agent behaves like a senior practitioner instead of a generalist.

This repo gives you 25 of those, organized into a system. Install the foundation skill once, add categories as your work calls for them, and your agent gets sharper at each task without you re-explaining context.

---

## What You Get

| Capability | Without skills | With this repo |
|---|---|---|
| Run a technical SEO audit | Generic checklist, no prioritization | Tiered fixes with effort/impact, crawl-config aware |
| Optimize for AI citations | "Add FAQs and schema" | Layer 1-4 framework with extractability scoring |
| Pick keywords | Volume + difficulty dump | Intent-mapped, gap-aware, ICP-filtered list |
| Write a content brief | Wordy outline | SERP-analyzed brief with extractable answer blocks |
| Pull GSC + GA into a report | Raw metrics | Decision-grade narrative with what to do next |
| Set up a new client | 30 minutes of intake | One file every other skill reads from |

---

## The 25 Skills

Every skill produces a specific deliverable. Browse by category; pick what matches your work.

### Foundation (1 skill, install first)

| Skill | What it does for you |
|---|---|
| [`client-context`](skills/_foundation/client-context/) | Captures who the client is, what they sell, who they compete with, and how they sound. Writes `client-context.md` to the working folder. **Every other skill reads from this file**, which is how the agent stays consistent across sessions. |

### SEO: Traditional Search (8 skills)

| Skill | What it does for you |
|---|---|
| [`seo-foundations`](skills/seo/seo-foundations/) | Primer the other SEO skills lean on. Defines E-E-A-T, intent types, the on-page / off-page / technical split. Load this if you're new to SEO. |
| [`technical-audit`](skills/seo/technical-audit/) | Full crawlability + indexability audit (Screaming Frog + GSC). Outputs a tiered fix list with effort estimates. |
| [`on-page-audit`](skills/seo/on-page-audit/) | URL-level review: title, headings, internal links, content gaps vs. SERP. Produces a per-page fix sheet. |
| [`keyword-research`](skills/seo/keyword-research/) | Intent-mapped keyword list aligned to ICP, with priority tiers and content-type recommendations per cluster. |
| [`competitor-analysis`](skills/seo/competitor-analysis/) | Identifies real competitors (not the ones the client names), maps their topic coverage, and surfaces gap opportunities. |
| [`off-page-link-building`](skills/seo/off-page-link-building/) | Link prospecting playbook with quality rubric, outreach templates, and a Tier 1 citation source list. |
| [`content-audit`](skills/seo/content-audit/) | Inventory of existing content with keep / refresh / consolidate / delete decisions and effort estimates. |
| [`local-seo`](skills/seo/local-seo/) | GBP optimization, local schema, reviews playbook, and citation hygiene for multi-location or service-area brands. |

### AEO: Answer Engine Optimization (9 skills)

| Skill | What it does for you |
|---|---|
| [`aeo-foundations`](skills/aeo/aeo-foundations/) | Mental model for getting cited by ChatGPT, Claude, Perplexity, Gemini, and AI Overviews. Read this before the rest. |
| [`ai-search-audit`](skills/aeo/ai-search-audit/) | Tiered AI-visibility audit. Tier 1 = blockers (robots.txt, JS rendering, Common Crawl). Tier 2/3 = upside work. |
| [`ai-crawler-access`](skills/aeo/ai-crawler-access/) | Infrastructure layer: full 2026 AI-crawler inventory, three robots.txt strategies (allow all / live-only / block all), server-log verification, llms.txt decision. |
| [`content-for-citations`](skills/aeo/content-for-citations/) | Rewrites or scaffolds content for extractability: chunked answers, factual specificity, AI-readable structure. |
| [`schema-for-aeo`](skills/aeo/schema-for-aeo/) | JSON-LD for citation readiness (not generic rich results). Organization + sameAs, Person + Article author, FAQPage matched to real queries. |
| [`entity-presence`](skills/aeo/entity-presence/) | Builds the brand's entity profile across Wikipedia, Wikidata, sameAs targets, and authoritative third-party mentions. |
| [`citation-tracking`](skills/aeo/citation-tracking/) | Measurement framework: track when and where the brand gets cited by AI engines, what prompts trigger it, what to optimize next. |
| [`reddit-strategy`](skills/aeo/reddit-strategy/) | Reddit is a top citation source for LLMs. This skill builds a presence strategy that earns mentions without tripping mod filters. |
| [`named-framework-development`](skills/aeo/named-framework-development/) | Develops a proprietary, named framework or methodology the brand can own: the kind LLMs cite by name. |

### Content (5 skills)

| Skill | What it does for you |
|---|---|
| [`content-strategy`](skills/content/content-strategy/) | Topic cluster model, pillar + supporting page plan, editorial calendar tied to ICP and search intent. |
| [`content-briefs`](skills/content/content-briefs/) | SERP-analyzed brief: angle, structure, must-cover questions, extractable answer blocks, internal links. |
| [`programmatic-content`](skills/content/programmatic-content/) | Template + data approach for scaled landing pages (locations, integrations, comparisons) without thin-content risk. |
| [`content-refresh`](skills/content/content-refresh/) | Decision framework for updating existing posts: what to refresh, what to consolidate, what to leave alone. |
| [`site-architecture`](skills/content/site-architecture/) | URL structure, hub/spoke topology, internal-link plan. Output is a deployable IA spec. |

### Analytics (2 skills)

| Skill | What it does for you |
|---|---|
| [`marketing-analytics`](skills/analytics/marketing-analytics/) | GA4 + ad-platform analysis tied to revenue, not vanity metrics. Diagnoses drops, attributes wins, recommends next moves. |
| [`search-reporting`](skills/analytics/search-reporting/) | GSC-driven monthly report: what moved, why, what to do about it. Decision-grade, not metric-dump. |

---

## Quick Start (Under 5 Minutes)

### 1. Install for your agent

- **Claude Code (terminal):** copy skills into `~/.claude/skills/`
- **Cowork mode (Claude desktop):** drop skills into your configured skills directory
- **Cursor:** `.cursor/skills/` in your project
- **Windsurf:** `.windsurf/skills/` in your project
- **Codex / other:** `.agents/skills/` in your project

### 2. Install the foundation skill first

```bash
git clone https://github.com/Generix-Marketing/agent-skills.git
cp -r agent-skills/skills/_foundation/client-context ~/.claude/skills/
```

Or pull a single skill without cloning the whole repo:

```bash
npx degit Generix-Marketing/agent-skills/skills/_foundation/client-context ~/.claude/skills/client-context
```

### 3. Set up your first client

Open your agent in a working folder for the client and say:

> Let's set up client context for Cardinal Ridge Roofing, https://cardinalridgeroofing.com

The agent loads `client-context`, walks the intake questions, and writes `client-context.md`. Every skill you add from here on reads from that file.

### 4. Add skills as the work calls for them

You don't need all 25 at once. A common starter set:

```bash
cp -r agent-skills/skills/seo/technical-audit ~/.claude/skills/
cp -r agent-skills/skills/seo/keyword-research ~/.claude/skills/
cp -r agent-skills/skills/aeo/ai-search-audit ~/.claude/skills/
cp -r agent-skills/skills/content/content-briefs ~/.claude/skills/
```

Then try prompts like:

> Run a technical SEO audit on the staging site.
> Pull a keyword list for the bathroom-remodeling service line.
> Audit the homepage for AI citation readiness.
> Write a brief for "how long does a roof last."

The agent picks the right skill automatically based on the prompt.

---

## Recommended Workflows

How the skills compose into real engagements.

**New client onboarding (Week 1)**
`client-context` → `technical-audit` → `ai-search-audit` → `content-audit` → `keyword-research`

**Quarterly AEO push**
`ai-search-audit` → `ai-crawler-access` → `entity-presence` → `schema-for-aeo` → `content-for-citations` → `citation-tracking`

**Content engine setup**
`client-context` → `keyword-research` → `competitor-analysis` → `content-strategy` → `site-architecture` → `content-briefs`

**Monthly reporting**
`search-reporting` → `marketing-analytics` → `content-refresh` (for what's slipping)

**Local SEO build**
`client-context` → `local-seo` → `schema-for-aeo` → `off-page-link-building`

---

## Cost & Token Notes

These skills are designed for **progressive disclosure**: the `SKILL.md` only loads when the agent's trigger matches your prompt, and detailed references (templates, checklists, command lists) sit in `references/` and load only when the skill actually needs them mid-task.

Practical implications:

- **You can install all 25 without bloating context.** Agents load skill descriptions (~1 line each) at session start, not full bodies.
- **A typical task triggers 1–3 skills.** Most prompts pull one primary skill plus `client-context`.
- **References stay cold by default.** A 500-line `references/server-log-verification.md` doesn't enter context unless the agent decides it needs the commands.

If you want to slim further, drop categories you don't use. The skills are independent except for `client-context`, which the rest read from.

---

## Repo Layout

```
agent-skills/
├── README.md            ← you are here
├── CLAUDE.md            ← agent instructions for working in this repo
├── AGENTS.md            ← spec compliance notes
├── CONTRIBUTING.md      ← how to add a skill
├── VERSIONS.md          ← changelog
└── skills/
    ├── _foundation/     ← client-context (install first)
    ├── seo/             ← 8 traditional SEO skills
    ├── aeo/             ← 9 answer-engine skills
    ├── content/         ← 5 content + IA skills
    └── analytics/       ← 2 measurement skills
```

Each skill folder contains a `SKILL.md` at the root plus optional `references/` and `examples/` subfolders.

---

## Contributing

Built a skill that solves a real problem in SEO, AEO, content, or analytics? Open a PR. Read `CONTRIBUTING.md` first. Every skill needs a specific trigger description (so the agent loads it at the right time), a worked process, an output format, and at least one example.

---

## License

[MIT](LICENSE). Use, fork, remix, ship. Attribution appreciated.

---

## About Generix Marketing

[Generix Marketing](https://www.generixmarketing.com/) is an SEO and AEO agency. We publish the skills, tools, and playbooks we use in client work so the rest of the industry can move faster.

If a skill here saved you time, we'd love to hear about it.
