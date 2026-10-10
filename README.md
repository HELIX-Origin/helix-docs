# helix-docs

> Modern, multi-layout GitHub Pages Jekyll theme engineered for developer documentation, technical knowledge base wikis, and project portals. Built for the **HELIX Origin** ecosystem.

---

## Features

- 🎨 **Multi-Layout System**: Seamlessly switch between portal landing pages (`layout: default`), sequential documentation guides (`layout: docs`), deep technical wikis (`layout: wiki`), and catalogues (`layout: catalogue`).
- 🚀 **Zero-Install Remote Theme**: Works natively on GitHub Pages via `remote_theme: HELIX-Origin/helix-docs` without requiring Ruby or local gem compilation.
- 🌐 **Integrated 18-Language Translation**: Built-in Google Translate integration with persistent cookies and responsive dropdown.
- 📊 **Native Mermaid Diagrams**: Automatically detects and renders GitHub Flavored Markdown `mermaid` code blocks into dark-themed architectural diagrams.
- 📱 **Fully Responsive**: Dual sticky sidebar architecture, breadcrumbs, reading navigation pager, and responsive table wrappers.
- 🧩 **Modular Include Hooks**: Customize `<head>`, headers, and footers with custom includes (`head_custom.html`, `header_custom.html`, `footer_custom.html`).

---

## Installation

### GitHub Pages (Remote Theme - Recommended)

Add the following to your site's `_config.yml`:

```yaml
remote_theme: HELIX-Origin/helix-docs
plugins:
  - jekyll-remote-theme
```

### Gem-based Approach

Add this line to your Jekyll site's `Gemfile`:

```ruby
gem "helix-docs"
```

And add this line to your Jekyll site's `_config.yml`:

```yaml
theme: helix-docs
```

---

## Supported Layouts

Each content page must be a Markdown file (`.md`) with the layout specified in YAML frontmatter:

### 1. Default Portal Layout (`layout: default`)
Used for portal home pages (`index.md`), landing pages, and general standalone articles.

```markdown
---
layout: default
title: Modern documentation engineered for clarity and performance.
summary: A high-performance framework and multi-layout theme for technical documentation.
parent: Parent Page (optional)
grand_parent: Grand Parent Page (optional)
nav_order: 1
notice: "<strong>Documentation Notice:</strong> This documentation site is powered by helix-docs."
header_actions:
  - title: Read Documentation
    url: /docs/
    class: button--primary
  - title: Explore Wiki ↗
    url: /wiki/
    class: button--secondary
---
```

### 2. Documentation Guide Layout (`layout: docs`)
Used for reading guides, tutorials, and sequential documentation in `_docs/`.
Includes:
- Reading navigation breadcrumbs (auto-linking `parent` & `grand_parent` page titles)
- In-page Table of Contents
- Previous & Next topic pager (`doc-pager`)
- Direct "Edit on GitHub" link

```markdown
---
layout: docs
title: Getting Started
summary: Learn how to connect helix-docs in two minutes.
parent: Theme Documentation Directory
nav_order: 2
---
```

### 3. Technical Wiki Layout (`layout: wiki`)
Used for technical reference catalogs, architectural hierarchies, and schemas in `_wiki/`.
Includes:
- Interactive live search filter input
- Hierarchy navigation tree
- Deep breadcrumbs (linking parent pages)
- Structured schema tables

```markdown
---
layout: wiki
title: System Architecture
summary: Architectural overview and system diagram.
parent: Community Wiki & Technical Architecture
nav_order: 2
---
```

### 4. Showcase, Distribution & Support Layouts
- **Catalogue (`layout: catalogue`)**: Visual showcase gallery with live search and category filter pills.
- **Catalogue Item (`layout: catalogue-item`)**: Dedicated subpages for individual catalogue items.
- **Store (`layout: store`)**: Release distribution portal with featured spotlights and download cards.
- **Store Item (`layout: store-item`)**: Dedicated product page with app icon, version chip, and download button.
- **Changelog (`layout: changelog`)**: Vertical release timeline with categorized milestone tags.
- **FAQ (`layout: faq`)**: Accessible collapsible accordion troubleshooting base with live search.

For comprehensive frontmatter options and code examples for each layout, see [Working with Layouts](_docs/layouts.md).

---

## Navigation Configuration

helix-docs computes **all** navigation — sidebar trees, breadcrumbs, and the previous/next pager —
from page **frontmatter** (the just-the-docs model). There is no `_data/navigation.yml`; consuming
sites do not need any `_data` files for navigation.

Each page participates in the tree through these frontmatter keys:

| Key | Type | Purpose |
| --- | --- | --- |
| `title` | string | Displayed label in trees and pagers; `parent`/`grand_parent` match by exact `title` |
| `parent` | string | Exact `title` of the level-2 page this page nests under |
| `grand_parent` | string | Exact `title` of the level-1 page (optional, for three-level trees) |
| `nav_order` | int | Ascending sort position within its sibling group (default `9999`) |
| `published` | bool | `false` hides the page from all navigation |
| `nav_exclude` | bool | `true` hides the page from the nav tree; the page is still built and reachable |

Example:

```markdown
---
layout: docs
title: Getting Started
summary: Learn how to connect helix-docs to any GitHub repository.
parent: Theme Documentation Directory
nav_order: 2
---
```

Navigation is rendered by components: the sidebar tree by
`_includes/components/nav.html`, breadcrumbs by `_includes/components/breadcrumbs.html`, and the
sequential pager by `_includes/components/children_nav.html`. Level-1 pages (no `parent`) are sorted
by `nav_order`, then their children, then grandchildren — the same composition just-the-docs uses.

---

## Repository Structure

```text
helix-docs/
├── _data/
│   └── languages.yml          # Canonical 18-language list for translation
├── _includes/
│   ├── components/            # Reusable navigation & layout components
│   │   ├── header.html        # Site header (docs/wiki layouts)
│   │   ├── sidebar.html       # Sidebar shell (variant: docs|wiki)
│   │   ├── nav.html           # Frontmatter-driven sidebar tree
│   │   ├── breadcrumbs.html   # Breadcrumb trail (docs|wiki)
│   │   ├── children_nav.html  # Previous/next pager from frontmatter
│   │   ├── toc.html           # In-page table of contents
│   │   ├── footer.html        # Site footer (variant + suffix params)
│   │   └── scripts.html       # Translate host + mermaid + scripts
│   ├── head.html              # Main head tags & assets
│   ├── head_custom.html       # Custom head extension hook
│   ├── header_custom.html     # Custom header extension hook
│   ├── footer_custom.html     # Custom footer extension hook
│   └── translate-control.html # Language selector dropdown (data or fallback)
├── _layouts/
│   ├── default.html           # Portal / default layout
│   ├── docs.html              # Documentation reading layout
│   ├── wiki.html              # Technical wiki layout
│   ├── catalogue.html         # Project / theme catalogue layout
│   ├── catalogue-item.html    # Single catalogue item page
│   ├── store.html             # Package store layout
│   ├── store-item.html        # Single package page
│   ├── changelog.html         # Release timeline layout
│   └── faq.html               # FAQ accordion layout
├── _sass/
│   └── helix-docs.scss        # Design-system entrypoint (dart-sass → site.css)
├── assets/
│   ├── css/
│   │   └── site.css           # Complete design system (precompiled)
│   └── js/
│       ├── mermaid-init.js    # Mermaid diagrams & table auto-wrapper
│       └── translate.js       # Google translate cookie engine
├── _config.yml                # Theme preview configuration
├── 404.md                     # Styled 404 error page (nav_exclude)
├── index.md                   # Live theme documentation page
├── Gemfile                    # Dependency specification
├── helix-docs.gemspec         # Ruby gem specification
└── LICENSE.md                 # MIT License
```

---

## License

MIT © [HELIX Origin](https://github.com/HELIX-Origin)
