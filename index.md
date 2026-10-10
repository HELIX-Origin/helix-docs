---
layout: default
title: HELIX Docs Theme
summary: The universal Jekyll theme for documentation, wikis, and project portals across the HELIX Origin organization.
nav_order: 1
notice: "<strong>Zero-Install Remote Theme:</strong> Use directly on GitHub Pages by adding <code>remote_theme: HELIX-Origin/helix-docs</code> to your <code>_config.yml</code>."
header_actions:
  - title: View on GitHub ↗
    url: https://github.com/HELIX-Origin/helix-docs
    class: button--primary
  - title: Read Documentation
    url: /docs/
    class: button--secondary
---

## 01 Theme Capabilities

Built to eliminate layout duplication and provide a cohesive, dark-themed experience across all organization projects:

- **Multi-Layout System**: Seamlessly switch between portal landing pages (`layout: default`), sequential documentation guides (`layout: docs`), deep technical wiki trees (`layout: wiki`), and catalogues (`layout: catalogue`) using simple frontmatter.
- **Remote Theme Compatible**: Works natively on GitHub Pages via `jekyll-remote-theme` without requiring local gem compilation or Ruby installations.
- **18-Language Translation**: Zero-configuration multilingual support with persistent cookie storage and graceful offline fallback.
- **Native Diagram Support**: Automatically renders standard GFM mermaid blocks into dark-themed architectural diagrams.
- **Responsive Navigation**: Dual sticky sidebar architecture, breadcrumbs, reading navigation pager, and responsive table wrappers.

---

## 02 Supported Layouts

Declare the desired layout in your page's YAML frontmatter using `layout: <name>`:

| Layout | Purpose | Content Wrapper | Navigation Support |
| :--- | :--- | :--- | :--- |
| `default` | Portals, landing pages, and standalone pages | Full shell + hero header | Header navigation & sidebar |
| `docs` | Focused reading guides & documentation | In-page Table of Contents | Sequential pager & breadcrumbs |
| `wiki` | In-depth technical catalogs & reference trees | Filterable tree + deep breadcrumbs | Live filter search box |
| `catalogue` | Grid showcase for assets, themes & tools | Responsive showcase cards | Live search & category pills |
| `catalogue-item` | Dedicated landing page for individual catalogue items | Media preview & specification header | Back to catalogue & breadcrumbs |
| `store` | Package marketplace & digital release center | Featured hero spotlight & app cards | Live search, pills & downloads |
| `store-item` | Dedicated product page for individual store items | App icon, version chip & download CTA | Back to store & breadcrumbs |
| `changelog` | Release milestones & version history | Glowing nodes along vertical timeline | Category tags (Feat, Fix, Break) |
| `faq` | Collapsible question & answer troubleshooting | Native accessible `<details>` accordions | Live Q&A search & category pills |

---

## 03 Using in Your Repository

To use this theme in any project's GitHub Pages site (e.g. in the `docs/` folder or root):

### 1. Add to `_config.yml`:

```yaml
remote_theme: HELIX-Origin/helix-docs
plugins:
  - jekyll-remote-theme
```

### 2. Create your site's `index.md`:

```markdown
---
layout: default
title: My Project
summary: Description of the project...
parent: Parent Page (optional)
grand_parent: Grand Parent Page (optional)
nav_order: 1
---

## Overview
Your markdown content here...
```
