---
name: client-context
description: Use at the very start of any SEO, AEO, content, or analytics work. Load this skill before auditing a page, picking keywords, writing content, or recommending changes. It captures who the client is, what they sell, who they sell to, who their competitors are, and how they sound, so every downstream skill has the context it needs. Trigger when the user names a client, brand, website, or domain for the first time, when a session starts on a new working directory, or when the user says "let's work on [brand]" or "audit [URL]". Skip only for one-off factual questions that do not depend on client specifics.
---

# Client Context

This is the foundation skill. Every other skill in this repo reads `client-context.md` before doing real work. If the file does not exist, this skill creates it. If it exists, this skill confirms it is still accurate.

The goal is simple: never run an SEO audit, write content, or recommend a strategy without first knowing who the client is, who they serve, who they compete with, and how they sound.

## When to Run This Skill

Run it when:

- The user starts a session about a new client, brand, or website
- The working directory does not yet contain a `client-context.md` file
- The user explicitly asks to set up, update, or review client context
- A downstream skill loads and finds `client-context.md` is missing or stale (older than 90 days)

Skip it when:

- The user is asking a quick factual question that does not depend on client specifics ("what is schema markup?")
- The user is mid-task and the context file already exists and is current
- The user explicitly says they want a one-off answer without setting up a project

If you are unsure whether to run it, ask the user: "Are we working on a specific client, or is this a one-off question?" If they name a client, run the skill.

## Decision: Persist or Not

Before you start asking questions, decide whether to write a `client-context.md` file or just hold the context in conversation.

Write the file when:

- The user is starting an ongoing project for a client
- The user mentions they will return to this work later
- The user is in an agency workflow with multiple clients
- The user asks you to "set up" or "scaffold" client context

Hold context in conversation only when:

- The user is doing exploratory or one-off analysis
- The user is testing a workflow without a real client yet
- The user explicitly says "don't save anything, just walk me through this"

When in doubt, default to writing the file. It costs little and makes every future session faster.

## Workflow

### Step 1: Check for an Existing File

Before asking any questions, look for `client-context.md` in the working directory root.

- If the file exists and was modified within the last 90 days, read it and confirm with the user: "I found a client-context file for [brand]. Should I use this, or do you want to update it?"
- If the file exists but is older than 90 days, read it and say: "I found a client-context file for [brand] from [date]. Some of this may be stale. Want me to walk through it and update anything that has changed?"
- If the file does not exist, move to Step 2.

### Step 2: Ask the Intake Questions

Load `references/intake-questions.md` and walk through the questions in order. The reference file groups questions into six categories:

1. Business basics (name, URL, what they sell, where they operate)
2. Ideal customer profile (who buys, what they care about, what stops them)
3. Competitors (direct, aspirational, and "shadow" competitors the client may not name)
4. Voice and brand (how they sound, words they use, words they avoid)
5. Technical setup (CMS, hosting, analytics, search console access)
6. Goals and constraints (what success looks like, what is off limits)

Ask questions in plain language. Do not dump the full question bank on the user at once. Walk them through it section by section, and let them skip questions they do not have answers for. Mark skipped items as `TBD` in the output file.

If the user gives a URL but no other context, offer to visit the site first and pull what you can (brand name, what they sell, basic positioning) before asking the rest. This reduces friction.

### Step 3: Write the File

When you have enough to be useful (at minimum: business basics, ICP, top three competitors, voice notes), write `client-context.md` to the working directory root.

The file structure is:

```markdown
# Client Context: [Brand Name]

**Last updated:** [YYYY-MM-DD]
**Updated by:** [User or agent]

## Business Basics

- **Brand:** [Name]
- **URL:** [https://www.example.com/]
- **What they sell:** [One to two sentences]
- **Where they operate:** [Geographic scope, online/offline, B2B/B2C]
- **Business stage:** [Startup, growth, established, etc.]

## Ideal Customer Profile

- **Primary audience:** [Who they serve first]
- **What the audience cares about:** [Top three priorities]
- **What stops the audience from buying:** [Top objections]
- **Secondary audiences (if any):** [Other segments worth noting]

## Competitors

- **Direct competitors:** [Companies that show up in the same SERPs and sell the same thing]
- **Aspirational competitors:** [Brands the client wants to be compared to, even if not direct rivals]
- **Shadow competitors:** [Sources that take the client's traffic without being obvious rivals, e.g., Reddit threads, YouTube creators, marketplaces]

## Voice and Brand

- **How they sound:** [Three to five adjectives, e.g., warm, technical, plainspoken]
- **Words they use:** [Industry terms they own, internal jargon they want kept]
- **Words they avoid:** [Banned terms, competitor names, regulated language]
- **Style notes:** [Em dash policy, oxford comma, etc.]

## Technical Setup

- **CMS:** [WordPress, Webflow, Shopify, custom, etc.]
- **Hosting:** [If known]
- **Analytics:** [GA4 property ID, other tools]
- **Search Console:** [Verified? Access available?]
- **Other tools the client uses:** [Ahrefs, SEMRush, Screaming Frog, etc.]

## Goals and Constraints

- **Primary goal:** [Lead gen, ecommerce sales, brand awareness, citations, etc.]
- **Success metric:** [How they will know it worked]
- **Constraints:** [Things off limits: design changes, dev resources, content topics, legal]
- **Timeline:** [Quarter, year, project deadline]

## Notes

[Anything else worth knowing: recent algorithm hit, pending site migration, founder preferences, etc.]
```

Fill in every section. Use `TBD` for anything the user could not answer in this session, with a note so it can be filled in later.

### Step 4: Confirm and Hand Off

After writing the file, summarize what you captured in two to three sentences and tell the user where the file lives. Then ask what they want to work on first. Common next steps:

- Run a technical SEO audit
- Do a competitor analysis
- Plan a content calendar
- Audit AI citation readiness

When the next skill loads, it will read `client-context.md` automatically and act with the context already in hand.

## Updating an Existing File

If the file exists and the user wants to update it, do not rewrite the whole thing. Read it, ask which sections need to change, and edit those sections. Bump the `Last updated` date. If the brand pivots or rebrands, archive the old version (rename it to `client-context-[YYYY-MM-DD].md`) before writing a new one.

## When the User Pushes Back

Some users do not want to answer twenty questions before starting work. If the user says "let's just dive in," do this:

1. Capture the bare minimum out loud: brand name, URL, one-sentence description of what they sell, and the top competitor that comes to mind.
2. Write a short `client-context.md` with just those fields filled in and the rest marked `TBD`.
3. Move to the requested work.
4. Fill in more context as it comes up naturally during the session.

This is better than running an audit blind, and it sets up the file so future sessions are smoother.

## What Counts as "Enough" Context

You have enough to start downstream work when you have answered yes to these four:

- I know what the client sells and to whom
- I know their site URL and can visit it
- I can name at least three competitors who rank for the same things
- I know what voice and tone to write in if asked

If any of those four is missing, stop and fill it in before moving to the next skill.

## Common Pitfalls

- **Skipping voice and brand questions.** Easy to skip, expensive later. Without voice notes, content gets written in generic agency tone and the client asks for a rewrite.
- **Listing only obvious competitors.** Direct rivals are the easy answer. The shadow competitors (Reddit, YouTube, niche forums, Wirecutter-style review sites) often take more traffic than direct rivals in AEO contexts. Always ask about these explicitly.
- **Treating the file as one-and-done.** Brands change. ICPs shift. Competitors enter and exit. Re-read the file at the start of every new session and update what is stale.

## References

- `references/intake-questions.md`: the full question bank, grouped by category
- `examples/filled-context-example.md`: a worked example of a completed file for a sample SMB client
