# Local Schema Templates

JSON-LD schema templates for common local business types. Drop into the `<head>` of the relevant page. Replace bracketed values with real ones. Validate via Google's Rich Results Test before deploying.

Notes that apply to all templates:

- Use one schema block per page, deployed via the site template (not pasted into the body).
- For multi-location businesses, render a separate schema block per location page.
- For service-area businesses, use `areaServed` instead of (or in addition to) `address`.
- Keep `@id` and `url` matched to the page's canonical URL.
- `priceRange` accepts `$`, `$$`, `$$$`, `$$$$` notation.

## Template 1: Generic LocalBusiness (Single Location, Visitable Address)

Use for any local business with a public storefront not covered by a more specific subtype.

```json
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "LocalBusiness",
  "@id": "https://www.example.com/#localbusiness",
  "name": "[Business Name]",
  "image": "https://www.example.com/images/storefront.jpg",
  "url": "https://www.example.com/",
  "telephone": "[+1-555-555-5555]",
  "priceRange": "$$",
  "address": {
    "@type": "PostalAddress",
    "streetAddress": "[123 Main St]",
    "addressLocality": "[Indianapolis]",
    "addressRegion": "[IN]",
    "postalCode": "[46220]",
    "addressCountry": "US"
  },
  "geo": {
    "@type": "GeoCoordinates",
    "latitude": [39.8283],
    "longitude": [-86.1581]
  },
  "openingHoursSpecification": [
    {
      "@type": "OpeningHoursSpecification",
      "dayOfWeek": ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"],
      "opens": "08:00",
      "closes": "17:00"
    },
    {
      "@type": "OpeningHoursSpecification",
      "dayOfWeek": "Saturday",
      "opens": "09:00",
      "closes": "13:00"
    }
  ],
  "sameAs": [
    "https://www.facebook.com/[handle]",
    "https://www.instagram.com/[handle]",
    "https://www.linkedin.com/company/[handle]"
  ]
}
</script>
```

## Template 2: Service-Area Business (No Public Address)

For roofers, plumbers, mobile services, and other businesses that serve customers but do not invite walk-ins.

```json
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "RoofingContractor",
  "@id": "https://www.example.com/#localbusiness",
  "name": "[Business Name]",
  "image": "https://www.example.com/images/team-on-roof.jpg",
  "url": "https://www.example.com/",
  "telephone": "[+1-555-555-5555]",
  "priceRange": "$$",
  "areaServed": [
    {
      "@type": "City",
      "name": "Indianapolis"
    },
    {
      "@type": "City",
      "name": "Carmel"
    },
    {
      "@type": "City",
      "name": "Fishers"
    },
    {
      "@type": "City",
      "name": "Westfield"
    },
    {
      "@type": "City",
      "name": "Greenwood"
    }
  ],
  "openingHoursSpecification": [
    {
      "@type": "OpeningHoursSpecification",
      "dayOfWeek": ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"],
      "opens": "07:00",
      "closes": "18:00"
    },
    {
      "@type": "OpeningHoursSpecification",
      "dayOfWeek": "Saturday",
      "opens": "08:00",
      "closes": "14:00"
    }
  ],
  "sameAs": [
    "https://www.facebook.com/[handle]",
    "https://www.instagram.com/[handle]"
  ]
}
</script>
```

Replace `RoofingContractor` with the most specific subtype available: `Plumber`, `Electrician`, `HVACBusiness`, `Locksmith`, `MovingCompany`, etc.

## Template 3: Multi-Location Business (per location page)

For a chain or multi-office business, render a location-specific schema on each location page.

```json
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "LocalBusiness",
  "@id": "https://www.example.com/locations/carmel/#localbusiness",
  "name": "[Business Name] - Carmel",
  "image": "https://www.example.com/images/carmel-office.jpg",
  "url": "https://www.example.com/locations/carmel/",
  "telephone": "[+1-555-555-5555]",
  "priceRange": "$$",
  "address": {
    "@type": "PostalAddress",
    "streetAddress": "[456 Oak Ave]",
    "addressLocality": "Carmel",
    "addressRegion": "IN",
    "postalCode": "[46032]",
    "addressCountry": "US"
  },
  "geo": {
    "@type": "GeoCoordinates",
    "latitude": [39.9784],
    "longitude": [-86.1180]
  },
  "openingHoursSpecification": [
    {
      "@type": "OpeningHoursSpecification",
      "dayOfWeek": ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"],
      "opens": "08:00",
      "closes": "17:00"
    }
  ],
  "parentOrganization": {
    "@type": "Organization",
    "name": "[Parent Business Name]",
    "url": "https://www.example.com/"
  }
}
</script>
```

## Template 4: Dental Practice

```json
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "Dentist",
  "@id": "https://www.example.com/#dentist",
  "name": "[Practice Name]",
  "image": "https://www.example.com/images/office.jpg",
  "url": "https://www.example.com/",
  "telephone": "[+1-555-555-5555]",
  "priceRange": "$$$",
  "address": {
    "@type": "PostalAddress",
    "streetAddress": "[789 Elm St]",
    "addressLocality": "[City]",
    "addressRegion": "[ST]",
    "postalCode": "[12345]",
    "addressCountry": "US"
  },
  "geo": {
    "@type": "GeoCoordinates",
    "latitude": [40.0000],
    "longitude": [-86.0000]
  },
  "openingHoursSpecification": [
    {
      "@type": "OpeningHoursSpecification",
      "dayOfWeek": ["Monday", "Tuesday", "Wednesday", "Thursday"],
      "opens": "08:00",
      "closes": "17:00"
    },
    {
      "@type": "OpeningHoursSpecification",
      "dayOfWeek": "Friday",
      "opens": "08:00",
      "closes": "13:00"
    }
  ],
  "medicalSpecialty": "Dentistry",
  "availableService": [
    {
      "@type": "MedicalProcedure",
      "name": "General Dentistry"
    },
    {
      "@type": "MedicalProcedure",
      "name": "Cosmetic Dentistry"
    },
    {
      "@type": "MedicalProcedure",
      "name": "Pediatric Dentistry"
    }
  ]
}
</script>
```

## Template 5: Restaurant

```json
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "Restaurant",
  "@id": "https://www.example.com/#restaurant",
  "name": "[Restaurant Name]",
  "image": "https://www.example.com/images/exterior.jpg",
  "url": "https://www.example.com/",
  "telephone": "[+1-555-555-5555]",
  "priceRange": "$$",
  "servesCuisine": ["[Cuisine 1]", "[Cuisine 2]"],
  "menu": "https://www.example.com/menu/",
  "acceptsReservations": "True",
  "address": {
    "@type": "PostalAddress",
    "streetAddress": "[321 Pine St]",
    "addressLocality": "[City]",
    "addressRegion": "[ST]",
    "postalCode": "[12345]",
    "addressCountry": "US"
  },
  "geo": {
    "@type": "GeoCoordinates",
    "latitude": [40.0000],
    "longitude": [-86.0000]
  },
  "openingHoursSpecification": [
    {
      "@type": "OpeningHoursSpecification",
      "dayOfWeek": ["Tuesday", "Wednesday", "Thursday"],
      "opens": "17:00",
      "closes": "22:00"
    },
    {
      "@type": "OpeningHoursSpecification",
      "dayOfWeek": ["Friday", "Saturday"],
      "opens": "17:00",
      "closes": "23:00"
    },
    {
      "@type": "OpeningHoursSpecification",
      "dayOfWeek": "Sunday",
      "opens": "10:00",
      "closes": "14:00"
    }
  ]
}
</script>
```

## Template 6: Aggregate Rating (Optional Add-on)

If the business has reviews on a third-party platform worth citing in schema, add an `aggregateRating` field to the LocalBusiness schema. Source the data from a legitimate, citable source (Google reviews count, Yelp count, etc.). Do not fabricate.

```json
"aggregateRating": {
  "@type": "AggregateRating",
  "ratingValue": "4.8",
  "reviewCount": "127",
  "bestRating": "5",
  "worstRating": "1"
}
```

Add this as a property inside the main LocalBusiness schema object.

## Template 7: BreadcrumbList (Sitewide, Recommended)

Helps Google understand site hierarchy and may show breadcrumbs in SERPs. Implement on every page except the homepage.

```json
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "BreadcrumbList",
  "itemListElement": [
    {
      "@type": "ListItem",
      "position": 1,
      "name": "Home",
      "item": "https://www.example.com/"
    },
    {
      "@type": "ListItem",
      "position": 2,
      "name": "Services",
      "item": "https://www.example.com/services/"
    },
    {
      "@type": "ListItem",
      "position": 3,
      "name": "Roof Replacement",
      "item": "https://www.example.com/services/roof-replacement/"
    }
  ]
}
</script>
```

## Subtype Reference

Pick the most specific LocalBusiness subtype available. A non-exhaustive list:

- `RoofingContractor`
- `Plumber`
- `Electrician`
- `HVACBusiness`
- `Locksmith`
- `MovingCompany`
- `PestControl`
- `HousePainter`
- `GeneralContractor`
- `Dentist`
- `MedicalClinic`
- `Physician`
- `Optician`
- `Chiropractor`
- `PhysicalTherapist`
- `VeterinaryCare`
- `LegalService`
- `Attorney`
- `AccountingService`
- `RealEstateAgent`
- `InsuranceAgency`
- `FinancialService`
- `BankOrCreditUnion`
- `Restaurant`
- `BarOrPub`
- `CafeOrCoffeeShop`
- `FastFoodRestaurant`
- `Bakery`
- `HairSalon`
- `BeautySalon`
- `NailSalon`
- `DaySpa`
- `HealthClub`
- `Hotel`
- `BedAndBreakfast`
- `Campground`
- `AutoRepair`
- `AutoDealer`
- `AutoBodyShop`
- `GasStation`
- `ChildCare`
- `Preschool`
- `TutoringSchool`

If none of the subtypes fit cleanly, use `LocalBusiness` and rely on the `category` field to specify.

## Validation

Always validate before deploying.

- **Google Rich Results Test:** https://search.google.com/test/rich-results
- **Schema.org Validator:** https://validator.schema.org/

Errors and warnings both worth reviewing. Errors block the schema from rendering as rich results; warnings indicate missing recommended fields that should be added when possible.

## Common Mistakes

- **Schema contradicts visible content.** The address in schema must match the address on the page. Phone number same. Hours same. Mismatches are detected.
- **Multiple LocalBusiness schemas on one page.** Use one per page.
- **Fake aggregateRating.** Detected. Penalty risk.
- **Schema deployed but the page does not visibly contain the same information.** Schema is meant to mark up what is already on the page, not replace it.
- **Address format inconsistency between schema and citations.** Pick one canonical format and use it everywhere.
