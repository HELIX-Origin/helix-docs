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
