# AI Search Landscape

A current map of the major AI answer engines, how each retrieves and cites sources, and what the optimization implications are. As of 2026. Verify specifics before relying on them; this space changes monthly.

## The Four You Must Track

If you only track four engines, track these.

### ChatGPT (OpenAI)

- **Retrieval pattern:** Hybrid. Default responses pull from training data (knowledge cutoff varies by model). The "Search" mode and the auto-triggered browsing capability retrieve live content from the web.
- **Citation behavior:** When browsing is active, ChatGPT typically cites sources with inline links. In default training-data responses, no citations unless the user asks ("cite your sources with URLs"). Source visibility varies.
- **Optimization implications:** Both training-data presence and live-retrieval rank matter. Training-data presence requires Common Crawl inclusion plus general web prominence. Live retrieval rank correlates with traditional search rank and freshness.
- **Tracking method:** Ask the model directly. Add "Please cite your sources with URLs" to every test query. Run 20-30 queries monthly.

### Claude (Anthropic)

- **Retrieval pattern:** Primarily training data in conversational use. The Claude API with search tool support, plus Claude in third-party browsing integrations, can retrieve live content.
- **Citation behavior:** When asked, Claude cites sources from training data with general descriptions ("according to [organization]") rather than always providing exact URLs. Live retrieval responses include URLs.
- **Optimization implications:** Entity authority signals (consistent descriptions across major external profiles) carry significant weight because Claude leans heavily on its training data identity model. Wikipedia and Wikidata presence is high-leverage.
- **Tracking method:** Direct testing. Ask Claude to cite sources. Note source quality: specific URLs versus generic attributions.

### Perplexity

- **Retrieval pattern:** Live retrieval first. Every response retrieves the open web in real time and cites sources visibly.
- **Citation behavior:** Most transparent of the major engines. Sources are visible in a sidebar with URLs. Easy to measure citation rate.
- **Optimization implications:** Citation rate in Perplexity is the most direct read on which sites the engine trusts in a category. Strong traditional search rank correlates with Perplexity citation; quality of the cited passage (extractability) determines whether you appear and where.
- **Tracking method:** Direct testing. Run category queries, capture which domains appear as cited sources, calculate brand citation share over time.

### Gemini (Google)

- **Retrieval pattern:** Hybrid. Training data plus live retrieval. Tightly integrated with Google Search infrastructure.
- **Citation behavior:** Citation behavior varies by response mode. Google AI Overviews (which use Gemini under the hood for many features) show citations with linked sources.
- **Optimization implications:** Strong overlap with traditional Google SEO. A site that ranks well in Google Search has structurally better odds in Gemini and AI Overviews.
- **Tracking method:** Direct testing of Gemini plus monitoring AI Overview appearance for category queries.

## The Two You Should Track if Bandwidth Allows

### Google AI Overviews

- **What it is:** Not an engine in its own right but the AI summary block at the top of many Google SERPs. Powered by Gemini and Google's search infrastructure.
- **Why it matters:** Highest user reach of any AI surface (Google's search audience). A leading indicator of broader AI search performance; brands cited in AI Overviews tend to be cited across other AI engines.
- **Citation behavior:** Citations visible as linked "Learn more" sources beneath the summary. Often 3-5 sources per Overview.
- **Optimization implications:** Standard SEO foundations plus AEO structure (extractability, factual specificity, schema). Brands invisible to AI Overviews are usually invisible across the AEO surface.
- **Tracking method:** Run category queries on Google in a logged-out browser. Record whether an Overview appears, which sources are cited, whether the brand is one of them.

### Meta AI

- **What it is:** Meta's conversational AI surfaced in WhatsApp, Instagram, Messenger, and Facebook search.
- **Why it matters:** Massive user reach across social platforms. Optimization implications still emerging.
- **Citation behavior:** Less consistent than the major dedicated engines.
- **Optimization implications:** Less actionable as of 2026 than the major engines. Worth monitoring; not yet a primary investment surface.

## The Smaller and Adjacent Surfaces

Aware-of but not actively-optimize-for for most clients.

- **Grok (xAI):** Conversational AI integrated with X (Twitter). Less transparent retrieval. Real-time X content is a unique input source.
- **Brave Search Summarizer:** AI summaries in Brave's privacy-focused search engine. Smaller audience but quality user base.
- **You.com:** AI search with citation. Smaller usage.
- **Phind:** Developer-focused AI search. Worth tracking only for technical content categories.
- **ChatGPT plugins / GPTs / Custom GPTs:** Specialized agents that can be configured with specific data sources. Generally not an SEO/AEO target; an integration play.

## Cross-Engine Patterns Worth Knowing

A few patterns hold across most engines.

- **Training data presence is foundational.** Engines with strong live-retrieval (Perplexity, ChatGPT browsing) can surface brands not in training data, but the citation rate is dramatically higher for brands that ARE in training data.
- **Traditional search rank correlates with AI citation.** Pages that rank well in Google rank better as citation sources in most AI engines. This is the strongest evidence that SEO foundations matter for AEO.
- **Entity consistency moves the needle for entity-recognition queries.** If your brand is the answer to "what is X" type queries, your entity profile across the web (LinkedIn, Crunchbase, Wikipedia, G2, your own About page) is the primary lever.
- **Original data dramatically outperforms aggregated content.** A page citing a unique statistic the brand published gets cited at 5-10x the rate of a page summarizing others' research. Becoming the source is the path to becoming the citation.
- **Recent content benefits from live retrieval.** A page published this month, well-structured, on a relevant query, can appear in Perplexity and ChatGPT browsing within days. Engines without live retrieval will not see it until retraining.
- **Knowledge cutoff dates vary by model and update.** A brand founded in 2024 may appear in some current engines and not others. Refresh entity descriptions across the web regularly to ensure consistency at retraining time.

## Practical Tracking Setup

The minimum viable AEO tracking stack:

- **Direct testing.** Manually query each of the four primary engines (ChatGPT, Claude, Perplexity, Gemini) with a defined query set monthly. Capture mention, citation, position.
- **AI Overview monitoring.** Manual Google SERP checks for category queries, logged-out, monthly.
- **Optional: a paid tracking platform.** Several have emerged in the AEO tracking category. Useful at scale; the manual setup above produces the same insights for most small clients.

Detailed tracking methodology lives in `citation-tracking`.

## What This Map Will Look Different in 6 Months

This space is moving fast. Expect:

- **More retrieval, less reliance on training data.** Engines are racing to live retrieval to reduce hallucinations and stay current. Brands that adapt to live-retrieval reality will win earlier than those waiting for next-training-cycle inclusion.
- **More agentic interfaces.** Users delegating multi-step tasks to AI agents that retrieve, synthesize, and act. Brands need to be retrievable in agent workflows, not just chatbot answers.
- **More fragmentation, then consolidation.** New surfaces will appear, the strongest will absorb others. Track what is dominant now; revisit quarterly.
- **More attribution friction.** Some engines may reduce visible citations to keep users in-app. This will make citation tracking harder and shadow-citation rate more important.

Stay current. Review this landscape map quarterly.
