---
layout: default
title: HELIX Docs Theme
eyebrow: Modern Multi-Layout GitHub Pages Theme
heading: The universal Jekyll theme for documentation, wikis, and project portals.
lead: helix-docs provides clean responsive layouts, deep navigation trees, integrated Google Translate, and Mermaid diagrams for GitHub Pages sites across the HELIX Origin organization.
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
| `default` | Portals, landing pages, and standalone pages | Full shell + dynamic hero header | Sidebar navigation groups |
| `docs` | Sequential documentation guides & reading books | Breadcrumbs + sequential pager | Pager (prev/next) & wiki banner |
| `wiki` | In-depth technical catalogs & reference trees | Filterable tree + deep breadcrumbs | Live filter search box |
| `catalogue` | Grid-based project/theme showcases | Catalog cards grid | Category filterable (reserved) |

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
eyebrow: Project Category
heading: My Project Title
lead: Description of the project...
---

## Overview
Your markdown content here...
```
