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
