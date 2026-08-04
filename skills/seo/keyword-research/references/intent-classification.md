# Intent Classification

How to assign intent to a keyword in under 60 seconds.

## The Four-Bucket Model

Use these four intent types:

- **Informational.** The user wants to learn or understand. "What is X," "how does X work," "X explained," "guide to X."
- **Navigational.** The user wants a specific brand, person, or page. "Brand name," "brand name login," "brand name pricing page."
- **Commercial investigation.** The user is comparing or evaluating options before buying. "Best X," "X reviews," "X vs Y," "X for [use case]," "X cost," "X near me" (when comparing providers, not committing to one).
- **Transactional.** The user is ready to act. "Buy X," "hire X," "X quote," "X near me" (when committing), "schedule X."

Most teams stop at three buckets (informational, commercial, transactional) and treat navigational as a special case. That works fine.

## The Fast Test: Look at the SERP

The most reliable classification method is also the fastest. Open Google. Search the term. Look at the top 5 results.

- **Five blog posts / wiki entries / forum threads.** Informational.
- **A brand's homepage or named-brand pages.** Navigational.
- **A listicle ("10 Best X"), a comparison ("X vs Y"), a review site, a cost guide.** Commercial investigation.
- **Product pages, service pages, "buy now" pages, location landers.** Transactional.

Google has already done the intent inference work. The SERP shows you the answer.

## What to Do When the SERP Is Mixed

Many SERPs blend intent. A search for "roof replacement cost" might return a how-it-works article (informational), a cost guide (commercial), and three contractor service pages (transactional).

When this happens:

- The intent is whichever type dominates the top 3 results.
- If genuinely split, the keyword is fighting for multiple intents. Either:
  - Pick a side that matches the client's goal and accept that the SERP is contested, or
  - Target a more specific long-tail variant that has a clearer intent signal.

For example: "roof replacement cost" is mixed. "average cost of roof replacement in Indianapolis" is unambiguously commercial investigation, and easier to win.

## Common Intent Misreads

- **"Best [thing]" looks transactional but is always commercial investigation.** The user is researching, not buying.
- **"How much does [thing] cost" looks informational but is usually commercial.** The user is evaluating spend before deciding.
- **"[Brand name] reviews" looks navigational but is commercial investigation.** The user is debating whether to commit to that brand.
- **"[Service] near me" can be commercial OR transactional.** Look at the SERP: if local pack is present and dominant, transactional; if listicle is dominant, commercial investigation.
- **"What is [product category]" can be top-of-funnel B2B research that is actually high value.** A SaaS prospect asking "what is content velocity" is closer to a sale than they look, IF the article that ranks for it converts well.

## Mapping Intent to Content Type

| Intent | Best content types |
|---|---|
| Informational | Long-form guides, how-tos, glossary entries, explainers, FAQs |
| Navigational | The actual destination page (homepage, product page, about page) |
| Commercial investigation | Comparison pages, listicles, "best of" roundups, cost guides, review pages, alternative pages ("Notion vs Asana") |
| Transactional | Service pages, product pages, location landing pages, quote/contact pages |

A page mismatched to its intent will not rank, no matter how well-written it is. This is the most common diagnosis in on-page audits.

## Intent and AI Overviews

AI Overviews are most likely to appear on informational and "how much does X cost"-style commercial queries. They are less likely on transactional queries and pure navigational queries.

If a keyword's SERP shows an AI Overview, factor that into prioritization:

- The AI Overview will eat a meaningful share of clicks.
- Pages that get cited in the AI Overview gain visibility but not necessarily clicks.
- For AEO-aware programs, the goal shifts from "rank #1" to "get cited."

For high-value transactional terms with no AI Overview, the ranking game still works the way it always did.
