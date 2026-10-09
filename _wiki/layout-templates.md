---
layout: wiki
title: Liquid Layout Templates
eyebrow: Technical Reference
heading: Liquid Layout Templates & Hooks
lead: Template structure, frontmatter variable resolution, and include hooks.
---

## 🏗️ Template Hierarchy

The four core layouts render content using dedicated wrappers:

```text
_layouts/
├── default.html      # Renders {{ content }} in <article class="doc-section documentation-content">
├── docs.html         # Renders breadcrumbs, reading pager, and docs content
├── wiki.html         # Renders interactive search filter, topic tree, and wiki content
└── catalogue.html    # Extends default.html with .catalogue-layout wrapper
```

---

## 🪝 Include Extension Hooks

The theme provides three placeholder includes allowing users to inject custom elements:

- `_includes/head_custom.html`: Injected right before `</head>` for external CSS or analytics.
- `_includes/header_custom.html`: Injected into the top navbar for extra links or brand marks.
- `_includes/footer_custom.html`: Injected into the footer for copyright or build info.
