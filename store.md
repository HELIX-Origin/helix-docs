---
layout: store
title: Package & Add-on Store
summary: A digital distribution hub layout for releases, installers, tools, and downloadable packages.
nav_order: 3
featured:
  title: Example Package Spotlight
  description: This is a placeholder spotlight demonstrating how a featured release, platform requirements, and download buttons render.
  version: v1.0.0-example
  license: Demo License
  platform: Example OS (x64 / ARM64)
  download_url: "#"
  docs_url: /docs/

categories:
  - Example Category A
  - Example Category B

packages:
  - title: Example Package Alpha
    category: Example Category A
    version: v1.0.0-example
    license: Demo
    platform: Cross-Platform
    size: 12.0 MB
    description: Sample package card demonstrating thumbnail icon, version chips, and action buttons.
    features:
      - Example feature bullet 1
      - Example feature bullet 2
    download_url: "#"
    docs_url: /docs/

  - title: Example Package Beta
    category: Example Category B
    version: v1.0.0-example
    license: Open Source
    platform: Web / Desktop
    size: 5.4 MB
    description: Another example entry demonstrating filter switching and card styling.
    features:
      - Example capability A
      - Example capability B
    download_url: "#"
    docs_url: /docs/
---

## 📦 Store Layout

This page demonstrates the `store` layout structure with clearly labeled placeholder packages.

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
