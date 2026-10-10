---
layout: docs
title: Working with Layouts
eyebrow: User Guides
heading: Working with Layouts
lead: Explore the four built-in layouts and learn how to declare them in your page frontmatter.
---

## 🎨 Supported Layouts

`helix-docs` supports four layouts designed for developer documentation, knowledge bases, and project portals:

| Layout | Frontmatter | Primary Use Case |
| :--- | :--- | :--- |
| **Default** | `layout: default` | Portal home pages (`index.md`), landing pages, standalone articles |
| **Docs** | `layout: docs` | Sequential user guides, tutorials, reading manuals in `_docs/` |
| **Wiki** | `layout: wiki` | Deep technical knowledge bases, API catalogs, topic trees in `_wiki/` |
| **Catalogue** | `layout: catalogue` | Grid-based showcases for projects, plugins, or theme variants |

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

The `catalogue` layout is reserved for card grids displaying project collections, theme previews, or downloadable packages.
