---
layout: catalogue
title: Catalogue Template
eyebrow: Layout Template
heading: Catalogue Showcase
lead: An interactive showcase layout for browsing, filtering, and previewing assets, themes, components, and extensions.
categories:
  - Example Category A
  - Example Category B

items:
  - title: Example Item Alpha
    category: Example Category A
    badge: Demo Badge
    version: v1.0.0-example
    description: This is a placeholder item demonstrating card layout, tag badges, and preview action links.
    tags: [Example, Demo Tag, Preview]
    preview_url: "#"
    docs_url: /docs/

  - title: Example Item Beta
    category: Example Category B
    badge: Sample
    version: v1.0.0-example
    description: Another example entry illustrating real-time category filtering and search functionality.
    tags: [Placeholder, Template]
    preview_url: "#"
    docs_url: /docs/
---

## 🎨 Catalogue Layout

This page demonstrates the `catalogue` layout structure with clearly labeled placeholder items.

### How to Add Items

In your site repository, declare items in your page frontmatter or in `_data/catalogue.yml`:

```yaml
categories:
  - Category A
  - Category B

items:
  - title: Item Name
    category: Category A
    badge: Optional Badge
    version: v1.0.0
    description: Item description here...
    tags: [Tag1, Tag2]
    preview_url: https://...
    docs_url: /docs/...
    github_url: https://github.com/...
```
