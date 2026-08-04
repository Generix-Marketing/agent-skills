# Instructions for Claude Code

This file is read automatically by Claude Code when working in this repo. It defines conventions for adding, editing, and reviewing skills.

## What This Repo Is

A collection of agent skills for SEO, AEO, content, and marketing analytics work. Each skill teaches an AI agent how to do one specific job well.

## Repo Conventions

### Skill folder structure

Every skill lives in its own folder under `skills/[category]/[skill-name]/` with this layout:

```
skill-name/
├── SKILL.md          # Required. The skill instructions.
├── references/       # Optional. Topic-specific reference docs.
└── examples/         # Optional. Worked examples of the skill in action.
```

### SKILL.md frontmatter

Every `SKILL.md` starts with YAML frontmatter:

```yaml
---
name: skill-name
description: When the user wants to [specific task]. Also use when the user mentions [trigger phrases]. Use this when [conditions].
---
```

The `description` field is critical. It tells the agent when to load the skill. Be specific. Vague descriptions cause the skill to load when it shouldn't, or fail to load when it should.

### References

Reference data (rule libraries, tool cheatsheets, templates) lives in each skill's local `references/` folder. Skills should `Read` references on demand, not load them upfront. This keeps token usage low.

When a reference is genuinely useful across multiple skills, duplicate it into each skill's `references/` folder rather than creating a shared dependency. Skills should be self-contained so they can be installed and run independently.

## Writing Style

When editing or adding skills, follow these rules:

- **Be prescriptive.** Skills should tell the agent exactly what to do, not provide background or theory.
- **No em dashes.** Use colons, periods, parentheses, or commas instead.
- **No filler.** Skip phrases like "in today's landscape," "leveraging cutting-edge approaches," "comprehensive suite of."
- **Be specific.** Reference tools by name, list exact thresholds, name specific MCP method names where applicable.
- **Match the action to the verb.** "Audit the page for X" is better than "consider auditing the page for X."

## When Adding a New Skill

1. Pick the right category folder (`seo/`, `aeo/`, `content/`, `analytics/`).
2. Create the skill folder and `SKILL.md`.
3. Write the frontmatter with a specific, trigger-friendly description.
4. Write the skill body as a clear workflow.
5. If the skill needs reference data, put it in the skill's local `references/` folder.
6. Add the skill to the Skills Index in `README.md`.
7. Add a line to `VERSIONS.md` under the next version.

## Validation

Run `./validate-skills.sh` before opening a pull request. It catches missing frontmatter, broken reference paths, and other common issues.

## Out of Scope

This repo focuses on SEO, AEO, and adjacent marketing workflows. Skills for CRO, copywriting, paid ads, email, sales enablement, and product marketing are out of scope. See [coreyhaines31/marketingskills](https://github.com/coreyhaines31/marketingskills) for those.
