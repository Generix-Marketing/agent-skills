# Editorial Calendar Template

A starting structure for the editorial calendar. The calendar IS the operational execution of the strategy. Adapt to whatever tool the team uses (Notion, Airtable, Asana, ClickUp, Google Sheets, etc.).

## Required Fields

Every entry in the calendar needs these:

- **Title or working title** (will evolve through drafting)
- **Cluster** (which topic cluster this piece belongs to)
- **Page type** (pillar, supporting article, comparison, FAQ, listicle, case study, original data, etc.)
- **Target query** (primary keyword the page is built to answer)
- **Target URL slug** (pre-decided where possible; supports internal-link planning ahead of publish)
- **Writer** (real named person, not "the team")
- **Editor/reviewer** (who edits before publish, who approves)
- **Status** (Backlog / Briefed / Drafting / In review / Ready / Published / Refreshing)
- **Publish target date** (realistic, not aspirational)
- **Actual publish date** (filled in at publish; useful for retro)
- **Last refreshed date** (for post-publish maintenance tracking)

## Useful-To-Have Fields

These improve the calendar without bloating it:

- **Priority** (P0 / P1 / P2, used when rescheduling decisions are needed)
- **Estimated effort** (writer hours; helps with capacity planning)
- **Dependencies** (other pieces or data this one needs first)
- **Schema type** (Article, FAQPage, HowTo, Product, LocalBusiness, etc.)
- **Internal links planned** (which existing pages will link to this from where)
- **Distribution channels** (email, LinkedIn, X, Reddit, podcast pitch, etc.)
- **Outcome tags** (the funnel stage and business outcome this piece serves)
- **Notes** (free text for anything that does not fit elsewhere)

## Suggested Status Workflow

The status field carries most of the operational signal. A clean workflow:

1. **Backlog:** the piece is on the strategy roadmap but not yet started.
2. **Briefed:** the content brief has been written and assigned to a writer.
3. **Drafting:** the writer is actively producing the first draft.
4. **In review:** draft delivered, editor or SME or stakeholder is reviewing.
5. **Ready:** approved, scheduled, awaiting publish date.
6. **Published:** live on the site.
7. **Refreshing:** scheduled for a refresh cycle.

Some teams add **Blocked** as a state outside the workflow. Use it sparingly; blocked pieces should have a documented reason and an unblock owner.

## Suggested Cadence Patterns

### Weekly editorial planning

- Review the calendar for the upcoming 2-4 weeks
- Confirm each piece's status and on-track-ness
- Flag risks (writer capacity, dependencies, missing approvals)
- Move pieces between weeks if needed

Owner: editorial lead. Duration: 30-45 minutes.

### Monthly editorial review

- Pieces published last month: hit dates, quality assessment, early performance signals
- Pieces shipping this month: confirm assignments, surface risks
- Refresh queue: which existing pages need attention
- Strategy alignment: are we shipping against the cluster plan?

Owner: editorial lead with strategy owner. Duration: 60-90 minutes.

### Quarterly strategy review

- Cluster performance against the strategy's success criteria
- Cluster decisions: continue, expand, sunset, add
- Capacity planning for the next quarter
- Major refreshes due

Owner: strategy owner with editorial lead. Duration: 2-3 hours.

## A Minimal Spreadsheet Calendar (For Small Programs)

For brands that do not use a project management tool, a spreadsheet works:

```
| Title | Cluster | Page Type | Target Query | URL Slug | Writer | Editor | Status | Brief Due | Draft Due | Publish Target | Published | Last Refreshed | Notes |
```

That row, populated for every piece in the next quarter, beats a more elaborate setup that nobody fills in.

## A More Robust Database Calendar (For Medium and Large Programs)

For brands using a database tool (Notion, Airtable, ClickUp, Asana):

- Pieces as records, not rows
- Relations to: cluster records (so cluster status rolls up), writer records (so writer capacity rolls up), brief records (linked to draft and published versions)
- Views: by writer, by cluster, by status, by month, by priority
- Filters: ship this week, ship this month, due for refresh, blocked
- Automation: status changes trigger Slack notifications to the next owner

The database setup takes a couple of days. The payoff scales with program size: small programs get little benefit, large programs cannot operate without it.

## What Not to Track in the Calendar

The calendar is the production tool. Some adjacent data should live elsewhere:

- **Detailed briefs:** lives in a brief document linked from the calendar (see `content-briefs`).
- **Drafts and revisions:** live in the writing tool (Google Docs, Notion docs, etc.), linked from the calendar.
- **Performance data:** lives in the analytics tool (GA4, GSC, the AEO tracker). Pull periodically into the strategy review, do not try to live-track in the calendar.
- **Distribution scheduling:** in the social/email tool; the calendar tracks "scheduled" status, not the specific timing.

Trying to make the calendar the system of record for everything creates a heavy tool that nobody uses.

## Common Editorial Calendar Failures

- **Overbooked calendars.** A calendar scheduled to 100% of capacity has no slack for the unexpected. Real programs hit 70-80% of capacity in practice.
- **Stale status fields.** Pieces marked "Drafting" for three months. Weekly editorial planning catches this.
- **Calendars with no due dates.** "When it's ready" is not a date. Even a soft target creates accountability.
- **Calendars with only target dates and no actuals.** Without comparing target to actual, the team cannot learn what realistic capacity looks like.
- **Calendars in a tool nobody opens.** Pick the tool the team already lives in. A perfect calendar in an unused tool is worse than a rough calendar in a used tool.
- **Calendars updated only at strategy reviews.** The calendar is a weekly tool. If it gets updated only at quarterly reviews, it does not support production.
