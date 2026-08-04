# Event Taxonomy Template

A starter event taxonomy with the most common events for B2B, SaaS, ecommerce, and local-service programs. Use as a starting point; tune to the specific business.

## Naming Convention

- snake_case event names
- Verb-noun or noun-verb pattern, consistent within the program
- Descriptive parameters, not encoded values
- Lowercase parameters
- No PII in event names or parameters

Examples that work: `form_submit`, `cta_click`, `video_complete`, `pricing_view`
Examples that fail: `Submit Form`, `CTA-click`, `click_v2_final`, `event_42`

## Universal Events (Apply to Most Programs)

Events most programs need regardless of business model.

| Event | Trigger | Key Parameters | Conversion? |
|---|---|---|---|
| `page_view` | Automatic (GA4 enhanced measurement) | page_location, page_title, page_referrer | No |
| `scroll` | Automatic (90% scroll depth) | percent_scrolled | No |
| `click` | Automatic (outbound link click) | link_url, link_domain, outbound (true/false) | No |
| `file_download` | Automatic (PDF, doc, video downloads) | file_name, file_extension | Maybe (if downloads are conversions) |
| `video_start` | Automatic (embedded YouTube) | video_title, video_provider | No |
| `video_complete` | Automatic (video 100% watched) | video_title, video_duration | Maybe |
| `view_search_results` | Automatic (internal site search) | search_term | No |

## Form Events (Critical for Lead Gen)

Form events are the foundation of conversion tracking. The drop-off pattern between them diagnoses form friction.

| Event | Trigger | Key Parameters | Conversion? |
|---|---|---|---|
| `form_view` | Form section enters viewport | form_id, form_name, page_location | No |
| `form_start` | User focuses any form field | form_id, form_name | No |
| `form_submit` | Successful submission | form_id, form_name, form_destination | Yes (usually) |
| `form_error` | Validation error displayed | form_id, error_field, error_type | No |

## CTA Events

| Event | Trigger | Key Parameters | Conversion? |
|---|---|---|---|
| `cta_click` | Click on a primary or secondary CTA button | cta_label, cta_location (page section), cta_destination | No (usually a step toward conversion) |
| `header_click` | Click in the primary navigation | nav_label, destination_url | No |
| `footer_click` | Click in the footer | footer_section, link_label | No |

## B2B Lead Gen Events

For programs where the primary conversion is a form submission or demo request.

| Event | Trigger | Key Parameters | Conversion? |
|---|---|---|---|
| `generate_lead` | Qualified lead form submission | form_name, lead_source, value (estimated lead value) | Yes (primary) |
| `demo_request` | Demo request form submission | product_interest, company_size_tier | Yes (often the primary) |
| `contact_submit` | General contact form submission | inquiry_type, inquiry_source | Yes (often secondary) |
| `phone_click` | Click-to-call from mobile | phone_number_clicked, page_location | Maybe (yes for local services) |
| `email_click` | Mailto: link click | email_clicked | No |
| `pricing_view` | Pricing page reached | plan_viewed (if applicable) | No |
| `case_study_view` | Case study page reached | case_study_id | No |

## B2B SaaS Events

For SaaS programs with self-serve signup or trial flow.

| Event | Trigger | Key Parameters | Conversion? |
|---|---|---|---|
| `sign_up_start` | User begins signup flow | signup_method (email, google, sso) | No |
| `sign_up` | User completes signup | signup_method, user_type | Yes (often primary) |
| `trial_start` | User starts free trial | plan_tier, trial_length_days | Yes |
| `subscribe` | User subscribes to paid plan | plan_tier, billing_cycle (monthly, annual), value | Yes (primary) |
| `upgrade` | User upgrades plan tier | from_tier, to_tier, value | Yes |
| `cancel_subscription` | User cancels | reason (if collected), tier_at_cancel | No (but track) |

## Ecommerce Events

GA4 has standard ecommerce events; use the standard names so reports work out of the box.

| Event | Trigger | Key Parameters | Conversion? |
|---|---|---|---|
| `view_item_list` | User views a category or list page | item_list_id, item_list_name, items (array) | No |
| `view_item` | Product page view | currency, value, items | No |
| `add_to_cart` | Add to cart | currency, value, items | Maybe |
| `remove_from_cart` | Remove from cart | currency, value, items | No |
| `begin_checkout` | Checkout flow started | currency, value, items, coupon | No |
| `add_shipping_info` | Shipping step completed | currency, value, items, shipping_tier | No |
| `add_payment_info` | Payment step completed | currency, value, items, payment_type | No |
| `purchase` | Order completed | transaction_id, currency, value, items, tax, shipping, coupon | Yes (primary) |
| `refund` | Refund issued | transaction_id, currency, value, items (if partial) | No (but track) |

## Local Service Business Events

For service businesses where phone calls are often the primary conversion.

| Event | Trigger | Key Parameters | Conversion? |
|---|---|---|---|
| `phone_click` | Click-to-call from any source | phone_number_clicked, page_location | Yes (with call tracking integration) |
| `estimate_request` | Estimate form submission | service_type, location | Yes (primary) |
| `service_area_view` | Service area page viewed | area_viewed | No |
| `directions_click` | Get directions click (from GBP or site) | location_clicked | Maybe |
| `appointment_request` | Appointment scheduling completed | service_type, requested_date | Yes |

## Publisher / Content Site Events

For sites where engagement and ad revenue matter more than form conversions.

| Event | Trigger | Key Parameters | Conversion? |
|---|---|---|---|
| `article_read_25` | 25% scroll on article | article_id, article_category | No |
| `article_read_75` | 75% scroll on article | article_id, article_category | No |
| `article_complete` | 100% scroll on article | article_id, article_category, time_on_article | Yes (engagement conversion) |
| `newsletter_signup` | Newsletter form submission | source_page, list_id | Yes |
| `share_article` | Social share button clicked | platform (facebook, x, linkedin), article_id | No |
| `comment_post` | Comment submitted | article_id | No |

## Custom Events (Brand-Specific)

Beyond the standard sets, build custom events for brand-specific actions:

- Tool usage on the site (calculator completed, configurator built, quiz finished)
- Pricing toggle or comparison interactions
- Modal opens for specific high-intent prompts
- Whitepaper or gated content unlocks
- Webinar registrations
- Account activity if logged-in users
- Search refinement actions
- Filter or sort applications

Each custom event needs a clear naming convention and documented parameter set. Add to the team taxonomy document; do not deploy until documented.

## Anti-Patterns to Avoid

- **Tracking everything.** Hundreds of events firing creates noise and consumes GA4 limits. Track what you will use.
- **Inconsistent naming.** `formSubmit`, `form_submit`, `submit_form`, `formSubmission` all firing for the same action breaks every aggregation.
- **Encoding values in event names.** `cta_click_homepage_hero_blue` should be `cta_click` with parameters `cta_location: homepage_hero`, `cta_variant: blue`.
- **PII in events.** Never include email addresses, names, phone numbers, or other personal data in event parameters. Use hashed identifiers or user IDs.
- **Skipping form_view and form_start.** Without them, you cannot calculate drop-off rates. With them, you can see exactly where users abandon forms.
- **No deprecation process.** Events that stop being relevant should be deprecated in documentation and eventually removed. Without a deprecation process, the taxonomy bloats indefinitely.

## How to Use This Template

1. Copy the relevant universal events plus the business-model-specific block.
2. Add custom events specific to the brand.
3. Document every event in a team-accessible source-of-truth file.
4. Deploy via Google Tag Manager (or direct gtag.js for technical teams).
5. Validate every event in DebugView before considering deployment complete.
6. Review the taxonomy quarterly. Add what is missing, remove what is unused.

A documented, validated, maintained taxonomy is one of the highest-leverage analytics investments. It compounds over years; without it, every report is slightly suspect and every cross-period comparison is unreliable.
