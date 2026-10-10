---
layout: docs
title: Working with Layouts
eyebrow: User Guides
heading: Working with Layouts
lead: Explore the seven built-in layouts and learn how to declare them in your page frontmatter.
---

## 🎨 Supported Layouts

`helix-docs` supports seven specialized layouts engineered for developer documentation, knowledge bases, distribution stores, and project portals:

| Layout | Frontmatter | Primary Use Case |
| :--- | :--- | :--- |
| **Default** | `layout: default` | Portal home pages (`index.md`), landing pages, standalone articles |
| **Docs** | `layout: docs` | Focused reading guides with automatic in-page Table of Contents |
| **Wiki** | `layout: wiki` | Deep technical knowledge bases with interactive search sidebar |
| **Catalogue** | `layout: catalogue` | Interactive visual theme, mod, and UI component showcase gallery |
| **Store** | `layout: store` | Software release center, application marketplace & downloads |
| **Changelog** | `layout: changelog` | Vertical milestone release timeline with categorization tags |
| **FAQ** | `layout: faq` | Accessible collapsible accordion Q&A troubleshooting base |

---

## 1. Default Layout (`default`)

The `default` layout provides a sticky brand sidebar, a top navigation bar, Google Translate, and a hero header driven by frontmatter variables:

```markdown
---
layout: default
title: Page Title
eyebrow: Category Label
heading: Primary Headline
lead: Explanatory lead paragraph...
header_actions:
  - title: Get Started
    url: /docs/getting-started/
    class: button--primary
---
```

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
eyebrow: User Guides
---
```

---

## 3. Wiki Layout (`wiki`)

The `wiki` layout provides a Just-the-docs style knowledge base experience:
- Interactive live search filter input
- Multi-tier topic hierarchy tree
- Deep breadcrumbs

```markdown
---
layout: wiki
title: CSS Architecture
eyebrow: Technical Reference
---
```

---

## 4. Catalogue Layout (`catalogue`)

The `catalogue` layout creates a visual card grid for themes, components, and mods:
- Real-time client-side search input
- Category filter pills (`All`, etc.)
- 16:9 media preview cards with tag chips and action links

```markdown
---
layout: catalogue
title: Theme Catalogue
categories: [Themes, Icons, Wallpapers]
items:
  - title: Frosted Glass
    category: Themes
    badge: Official
    description: Dark cyber-slate glass aesthetic.
    tags: [Taskbar, Glass]
    preview_url: "#"
---
```

---

## 5. Store Layout (`store`)

The `store` layout is a marketplace and digital download hub:
- Spotlight hero showcase for the latest featured release
- Category filter pills
- Download cards with app icon, version, platform, license, and primary download button

```markdown
---
layout: store
title: Package Store
featured:
  title: Windhawk Themes Suite
  description: Universal framework for Windows 11 shell styling.
  version: v2.4.0
  download_url: https://github.com/...
packages:
  - title: NH Reader
    category: Applications
    version: v1.8.2
    platform: Windows / Linux
    download_url: https://github.com/...
---
```

---

## 6. Changelog Layout (`changelog`)

The `changelog` layout renders milestone releases along a vertical timeline:
- Glowing milestone nodes on a vertical track
- Latest release spotlight pill
- Categorized change tags (`Features`, `Fixes`, `Breaking Changes`)

```markdown
---
layout: changelog
title: Release Notes
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

## 7. FAQ Layout (`faq`)

The `faq` layout creates an accessible accordion troubleshooting center:
- Live question & answer search input (auto-expands matching items)
- Topic filter pills
- Native accessible `<details>` / `<summary>` accordions with smooth chevron rotation

```markdown
---
layout: faq
title: FAQ
categories: [Setup, Configuration, Troubleshooting]
faqs:
  - q: How do I configure remote_theme?
    category: Setup
    a: Add `remote_theme: HELIX-Origin/helix-docs` to `_config.yml`.
---
```
