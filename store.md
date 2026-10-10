---
layout: store
title: Store Template
eyebrow: Layout Template
heading: Package & Add-on Store
lead: A digital distribution hub layout for releases, installers, tools, and downloadable packages.
categories: []
packages: []
---

## 📦 Store Layout

This page demonstrates the `store` layout structure. No packages have been published to this store yet.

### How to Add Packages

In your site repository, declare packages in your page frontmatter or in `_data/store.yml`:

```yaml
categories:
  - Tools
  - Extensions

packages:
  - title: Package Name
    category: Tools
    version: v1.0.0
    license: MIT
    platform: Windows / Linux
    size: 10 MB
    description: Package description here...
    features:
      - Feature 1
      - Feature 2
    download_url: https://github.com/.../releases
    docs_url: /docs/...
```
