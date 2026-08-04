# Instructions for AI Agents

This file is read by AI agents that follow the cross-agent `AGENTS.md` convention (Cursor, Windsurf, OpenAI Codex, and others). It tells the agent how to use this repo.

For Claude Code-specific instructions, see `CLAUDE.md`. The two files overlap intentionally so agents only need to read one.

## What This Repo Is

A collection of agent skills for SEO, AEO, content, and marketing analytics work. Each skill is a self-contained instruction set that teaches an AI agent how to do one specific job.

## How to Find a Skill

Skills are organized by category under `skills/`:

- `_foundation/`: Read first by every other skill. Currently holds `client-context`.
- `seo/`: Traditional SEO skills.
- `aeo/`: AI citation and answer-engine optimization skills.
- `content/`: Content strategy, schema, site architecture, programmatic content.
- `analytics/`: Measurement and reporting.

Each skill lives at `skills/[category]/[skill-name]/SKILL.md`.

## How Skills Work

Every `SKILL.md` starts with frontmatter:

```yaml
---
name: skill-name
description: When to load this skill.
---
```

When a user's request matches a skill's `description`, the agent loads that skill's `SKILL.md` and follows its instructions. Skills can reference other files (in their own `references/` folder) and load them on demand.

## Installation Across Agents

### Cursor

Place skill folders in your project's `.cursor/skills/` directory (or wherever your Cursor config expects skills).

### Windsurf

Place skill folders in your project's `.windsurf/skills/` directory.

### OpenAI Codex

Place skill folders in your project's `.agents/skills/` directory. Codex respects the `AGENTS.md` standard.

### Generic agents

Any agent that supports the Agent Skills spec ([agentskills.io](https://agentskills.io)) can load these skills. Place them in the agent's configured skills directory.

## Skill Conventions

- Skills are prescriptive. They tell the agent exactly what to do, in what order.
- Skills reference shared rule libraries instead of duplicating rules inline.
- Skills reference tool cheatsheets instead of teaching tool syntax from scratch.
- Skills follow the writing style defined in `CONTRIBUTING.md`.

## Contributing

See `CONTRIBUTING.md` for how to add a new skill or improve an existing one.
