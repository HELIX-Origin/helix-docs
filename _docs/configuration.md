---
layout: docs
title: Theme Configuration Reference
summary: A complete reference for configuring _config.yml, registering collections, and setting defaults.
parent: Theme Documentation Directory
nav_order: 3
---

## ⚙️ Configuration Schema

A typical `_config.yml` using `helix-docs` includes identity settings, collection definitions, and cascade defaults:

```yaml
# Site Identity & Canonical URLs
title: My Docs
tagline: Developer Documentation
description: "Documentation and reference wiki for my project."
url: "https://my-org.github.io"
baseurl: "/my-project"
repository: "my-org/my-project"
github_username: "my-org"

# Theme Declaration
remote_theme: HELIX-Origin/helix-docs

# Markdown Engine
markdown: kramdown
kramdown:
  input: GFM
  hard_wrap: false
  auto_ids: true
  parse_block_html: true
  syntax_highlighter: rouge

# Collections
collections:
  docs:
    output: true
    permalink: /docs/:path/
  wiki:
    output: true
    permalink: /wiki/:path/

# Plugins
plugins:
  - jekyll-remote-theme
  - jekyll-relative-links
  - jekyll-optional-front-matter
  - jekyll-titles-from-headings
  - jekyll-default-layout
  - jekyll-sitemap

# Cascade Defaults
defaults:
  - scope:
      path: ""
    values:
      layout: default

  - scope:
      path: "index.md"
    values:
      layout: default
      page_class: page--home

  - scope:
      type: docs
    values:
      layout: docs
      page_class: page--doc

  - scope:
      type: wiki
    values:
      layout: wiki
      page_class: page--wiki
```

---

## 🎨 Custom SCSS Styling (`custom.scss`)

`helix-docs` supports non-destructive custom style overrides without modifying theme core files:

- **Custom Styles (`custom.scss`)**: Create `_sass/custom/custom.scss` (or `_scss/custom/custom.scss`) in your repository to inject custom CSS classes, layout tweaks, and element overrides. This file is imported at the end of the stylesheet cascade.
- **Variable Setup (`setup.scss`)**: Create `_sass/custom/setup.scss` (or `_scss/custom/setup.scss`) to override SCSS variables (such as brand colors and font stacks) before component styles compile.

When Jekyll builds on GitHub Pages, your custom SCSS files are automatically resolved and compiled directly into `assets/css/site.css`.
