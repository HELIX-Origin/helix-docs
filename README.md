# helix-docs

> Modern, multi-layout GitHub Pages Jekyll theme engineered for developer documentation, technical knowledge base wikis, and project portals. Built for the **HELIX Origin** ecosystem.

---

## Features

- 🎨 **Multi-Layout System**: Seamlessly switch between portal landing pages (`layout: default`), sequential documentation guides (`layout: docs`), Just-the-docs style technical wikis (`layout: wiki`), and catalogues (`layout: catalogue`).
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

### 4. Catalogue Layout (`layout: catalogue`)
Reserved for grid-based project or theme showcases (`.catalogue-grid`).

---

## Navigation Configuration

Configure your sidebar navigation sections and links in `_data/navigation.yml`:

```yaml
- section: Overview
  pages:
    - title: Home
      path: index.md
    - title: Documentation
      path: _docs/index.md

- section: Guides
  pages:
    - title: Getting Started
      path: _docs/Getting-Started.md

- section: Community Wiki
  pages:
    - title: Wiki Home
      path: _wiki/index.md
```

---

## Repository Structure

```text
helix-docs/
├── _data/
│   └── languages.yml          # Supported languages for translation
├── _includes/
│   ├── head.html              # Main head tags & assets
│   ├── head_custom.html       # Custom head extension hook
│   ├── header_custom.html     # Custom header extension hook
│   ├── footer_custom.html     # Custom footer extension hook
│   └── translate-control.html # Language selector dropdown
├── _layouts/
│   ├── default.html           # Portal / default layout
│   ├── docs.html              # Documentation reading layout
│   ├── wiki.html              # Technical wiki layout
│   └── catalogue.html         # Project / theme catalogue layout
├── assets/
│   ├── css/
│   │   └── site.css           # Complete design system & classes
│   └── js/
│       ├── mermaid-init.js    # Mermaid diagrams & table auto-wrapper
│       └── translate.js       # Google translate cookie engine
├── _config.yml                # Theme preview configuration
├── 404.html                   # Styled 404 error page
├── index.md                   # Live theme documentation page
├── Gemfile                    # Dependency specification
├── helix-docs.gemspec         # Ruby gem specification
└── LICENSE                    # MIT License
```

---

## License

MIT © [HELIX Origin](https://github.com/HELIX-Origin)
