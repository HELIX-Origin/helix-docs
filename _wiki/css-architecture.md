---
layout: wiki
title: CSS Design Architecture
eyebrow: Technical Reference
heading: CSS Design Architecture & Tokens
lead: Architectural design tokens, layout grid parameters, and dark mode palette variables.
---

## 🎨 Theme Tokens (`:root`)

The theme is built around a dark cyber-slate palette defined with CSS Custom Properties:

| Variable | Default Value | Usage |
| :--- | :--- | :--- |
| `--bg` | `#07111f` | Root viewport background |
| `--panel` | `#0d1b2d` | Standard card and container surface |
| `--panel-raised` | `#12243a` | Elevated headers and active controls |
| `--line` | `#203750` | Structural dividers and container borders |
| `--text` | `#edf5ff` | High-contrast body and heading foreground |
| `--muted` | `#a6b8ce` | Secondary descriptions and metadata labels |
| `--accent` | `#48d8f2` | Primary cyan highlight and links |
| `--accent-strong` | `#b06cff` | Secondary purple focus accent |
| `--radius` | `16px` | Container border radius |

---

## 📐 Layout Grid Parameters

The site shell uses an adaptable CSS Grid layout with responsive breakout:

```css
.site-shell {
  display: grid;
  grid-template-columns: minmax(230px, 280px) minmax(0, 1fr);
  gap: clamp(1rem, 3vw, 2.75rem);
  width: min(1440px, 100%);
  margin: 0 auto;
  padding: clamp(1rem, 3vw, 2.5rem);
}
```

---

## 📁 Modular SCSS Architecture

`helix-docs` uses a modular SCSS partial system located in `_sass/`, compiled automatically on GitHub Pages via `jekyll-sass-converter`:

| Partial | Purpose |
| :--- | :--- |
| `_variables.scss` | Sass variables, breakpoints, responsive mixins, and `:root` CSS custom properties |
| `_base.scss` | Reset, typography, skip links, site shell, and layout modifiers |
| `_sidebar.scss` | Dual sticky sidebar, brand badge, nav tree, and live filter input |
| `_header.scss` | Navbar, breadcrumb trails, action buttons, and hero page headers |
| `_markdown.scss` | GFM typography, blockquotes, alert banners, and nested list styles |
| `_tables.scss` | Full-width data tables, sticky headers, cell padding, and responsive wrappers |
| `_code.scss` | Rouge Nord/Cyber syntax highlighter tokens and inline code badges |
| `_components.scss` | Buttons, previous/next reading pager cards, notices, and Mermaid diagram containers |
| `_landing.scss` | Project showcase grid, feature cards, and catalog layout grids |

