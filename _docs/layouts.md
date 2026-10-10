---
layout: docs
title: Working with Layouts
summary: Explore the seven built-in layouts and learn how to declare them in your page frontmatter.
parent: Theme Documentation Directory
nav_order: 4
---

## 🎨 Supported Layouts

`helix-docs` supports nine specialized layouts engineered for developer documentation, knowledge bases, distribution stores, and project portals:

| Layout | Frontmatter | Primary Use Case |
| :--- | :--- | :--- |
| **Default** | `layout: default` | Portal home pages (`index.md`), landing pages, standalone articles |
| **Docs** | `layout: docs` | Focused reading guides with automatic in-page Table of Contents |
| **Wiki** | `layout: wiki` | Deep technical knowledge bases with interactive search sidebar |
| **Catalogue** | `layout: catalogue` | Interactive visual showcase gallery for assets, themes, and components |
| **Catalogue Item** | `layout: catalogue-item` | Dedicated subpages for individual items/packages inside `_catalogue/` |
| **Store** | `layout: store` | Software release center, package marketplace & download portal |
| **Store Item** | `layout: store-item` | Dedicated subpages for individual products/apps inside `_store/` |
| **Changelog** | `layout: changelog` | Vertical milestone release timeline with categorization tags |
| **FAQ** | `layout: faq` | Accessible collapsible accordion Q&A troubleshooting base |

---

## 1. Default Layout (`default`)

The `default` layout provides a sticky brand sidebar, a top navigation bar, Google Translate, and a hero header driven by frontmatter variables:

```markdown
---
layout: default
title: Page Title
summary: Explanatory summary paragraph...
parent: Parent Page (optional)
grand_parent: Grand Parent Page (optional)
nav_order: 1
header_actions:
  - title: Get Started
    url: /docs/getting-started/
    class: button--primary
---
```

> Home pages (`index.md`) that use this layout follow the **vCard pattern** — see [Home Pages & the vCard Pattern]({{ '/docs/home-page/' | relative_url }}) for the full section-by-section recipe.

---

## 2. Docs Layout (`docs`)

The `docs` layout is an uncluttered, reading-focused layout designed for guides and tutorials:
- **No Left Sidebar**: Clean, full-width single-column reading space without redundant directory sidebars.
- **In-Page Table of Contents**: Automatically scans and generates anchor links for all `h2` and `h3` headings in the article.
- **Top Brand & Navigation Bar**: Integrated brand logo, site navigation, and Google Translate control.
- **Breadcrumb Navigation**: Clear path trail linking back to Home, Docs, and section.
- **Reading Pager Cards**: Interactive **← Previous Guide** and **Next Guide →** cards for sequential reading.
- **Edit on GitHub**: Direct link to edit the source Markdown file.

```markdown
---
layout: docs
title: Getting Started
summary: Learn how to connect helix-docs to any GitHub repository in less than two minutes.
parent: Theme Documentation Directory # Optional: exact case-sensitive title of parent page
nav_order: 2 # Optional: numeric navigation position
---
```

---

## 3. Wiki Layout (`wiki`)

The `wiki` layout provides an in-depth technical knowledge base experience:
- Interactive live search filter input
- Multi-tier topic hierarchy tree
- Deep breadcrumbs

```markdown
---
layout: wiki
title: CSS Architecture
summary: Architectural tokens, layout grids, and dark mode palette variables.
parent: Community Wiki & Technical Architecture # Optional: exact case-sensitive title of parent page
nav_order: 2 # Optional: numeric navigation position
---
```

---

## 4. Catalogue Layout (`catalogue`)

The `catalogue` layout creates a visual card grid for assets, themes, and UI elements:
- Real-time client-side search input
- Category filter pills (`All`, etc.)
- 16:9 media preview cards with tag chips, version badges, and action links

```markdown
---
layout: catalogue
title: Catalogue Showcase
summary: An interactive showcase layout for browsing, filtering, and previewing assets.
categories: [Example Category A, Example Category B]
items:
  - title: Example Item Alpha
    category: Example Category A
    badge: Demo Badge
    version: v1.0.0-example
    description: Placeholder item demonstrating card layout and badges.
    tags: [Example, Demo Tag]
    preview_url: "#"
    docs_url: /docs/
---
```

---

## 5. Catalogue Item Layout (`catalogue-item`)

The `catalogue-item` layout provides a dedicated landing page for an individual item inside the `_catalogue/` collection:
- Rich header block with category eyebrow, badges, version, and author attribution
- Action links to GitHub repository and live preview
- Hierarchical breadcrumbs linking back to `/catalogue/`

```markdown
---
layout: catalogue-item
title: Example Item Alpha
summary: Detailed specification and documentation for Example Item Alpha.
parent: Catalogue Showcase
category: Example Category A
version: v1.0.0-example
badge: Demo Badge
author: Contributor Name
tags: [Example, Demo Tag]
github_url: https://github.com/example/repo
preview_url: "#"
---
```

---

## 6. Store Layout (`store`)

The `store` layout is a digital distribution hub and package marketplace:
- Spotlight hero showcase for the latest featured release
- Category filter pills
- Download cards with app icon, version, platform, license, and primary download button

```markdown
---
layout: store
title: Package & Add-on Store
summary: A digital distribution hub layout for releases, installers, and downloadable packages.
featured:
  title: Example Package Spotlight
  description: Placeholder spotlight release demonstrating featured presentation.
  version: v1.0.0-example
  license: Demo License
  platform: Cross-Platform
  download_url: "#"
  docs_url: /docs/
categories: [Example Category A, Example Category B]
packages:
  - title: Example Package Alpha
    category: Example Category A
    version: v1.0.0-example
    license: Demo License
    platform: Cross-Platform
    size: 12.0 MB
    description: Sample package demonstrating badges, specifications, and download links.
    download_url: "#"
    docs_url: /docs/
---
```

---

## 7. Store Item Layout (`store-item`)

The `store-item` layout provides a dedicated product/package page inside the `_store/` collection:
- App icon, version chip, license tag, and platform pill
- Direct download action button in the header
- Hierarchical breadcrumbs linking back to `/store/`

```markdown
---
layout: store-item
title: Example Package Alpha
summary: Detailed installation specifications, changelogs, and binaries for Example Package Alpha.
parent: Package & Add-on Store
category: Example Category A
icon: https://github.com/HELIX-Origin.png?size=64
version: v1.0.0-example
license: Demo License
platform: Cross-Platform
size: 12.0 MB
download_url: "#"
---
```

---

## 8. Changelog Layout (`changelog`)

The `changelog` layout renders milestone releases along a vertical timeline:
- Glowing milestone nodes on a vertical track
- Latest release spotlight pill
- Categorized change tags (`Features`, `Fixes`, `Breaking Changes`)

```markdown
---
layout: changelog
title: Project Changelog & Releases
summary: Comprehensive record of version milestones, feature enhancements, and bug fixes across the ecosystem.
releases:
  - version: v1.1.0
    date: 2026-10-09
    tag: Major Upgrade
    summary: Added SCSS architecture and new layouts.
    features:
      - Added catalogue, store, changelog, and faq layouts.
    fixes:
      - Resolved markdown table formatting bug.
---
```

---

## 9. FAQ Layout (`faq`)

The `faq` layout creates an accessible accordion troubleshooting center:
- Live question & answer search input (auto-expands matching items)
- Topic filter pills
- Native accessible `<details>` / `<summary>` accordions with smooth chevron rotation

```markdown
---
layout: faq
title: Frequently Asked Questions
summary: Answers to common questions regarding theme setup and markdown rendering.
categories: [Setup, Configuration, Troubleshooting]
faqs:
  - q: How do I configure remote_theme?
    category: Setup
    a: Add `remote_theme: HELIX-Origin/helix-docs` to `_config.yml`.
---
```

---

## 📋 Frontmatter Reference

Each page in your site can configure the following standardized frontmatter properties:

| Key | Type | Requirement | Description |
| :--- | :--- | :--- | :--- |
| `layout` | String | **Required** | The layout template (`default`, `docs`, `wiki`, `catalogue`, `store`, `changelog`, `faq`). |
| `title` | String | **Required** | The headline and document title. Used for page headings and `<title>` tags. |
| `summary` | String | Optional | Concise description paragraph displayed directly below the title. Populates `<meta description>`. |
| `parent` | String | Optional | The exact (case-sensitive) title of the parent page. Automatically generates linked breadcrumbs and nests navigation items. |
| `grand_parent` | String | Optional | The exact (case-sensitive) title of the grandparent page for 3-tier deep navigation hierarchies. |
| `nav_order` | Integer | Optional | Numerical position to order pages inside sidebar navigation trees and sequential reading pagers. |
| `permalink` | String | Optional | Custom output route / URL (e.g. `/guides/setup/`, `/404.html`). Overrides default URL auto-derivation if a custom path is desired. |
| `social_image` | String | Optional | Absolute or root-relative path to a preview image used for social media cards (OpenGraph `og:image` and Twitter Cards). |
| `published` | Boolean | Optional | Set `published: false` to draft or unpublish a page. Unpublished pages are excluded from navigation sidebars, sequential reading pagers, and showcase grids. Defaults to `true`. |
