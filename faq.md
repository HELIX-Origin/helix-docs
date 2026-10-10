---
layout: faq
title: Frequently Asked Questions
eyebrow: Help & Troubleshooting
heading: Frequently Asked Questions
lead: Answers to common questions regarding theme setup, remote consumption, custom layouts, and markdown rendering.
categories:
  - Getting Started
  - Remote Theme
  - Markdown & Formatting
  - Layouts & Collections

faqs:
  - q: How do I use helix-docs in my GitHub Pages repository?
    category: Getting Started
    a: |
      Simply add the theme to your `_config.yml`:
      ```yaml
      remote_theme: HELIX-Origin/helix-docs
      plugins:
        - jekyll-remote-theme
      ```
      GitHub Pages will automatically pull all layouts, stylesheets, and scripts directly from `HELIX-Origin/helix-docs`.

  - q: Do I need to keep _layouts or assets/css in my client repository?
    category: Remote Theme
    a: |
      **No.** When using `remote_theme`, your client repository only needs your content pages (`index.md`, `_docs/`, `_wiki/`) and site configuration (`_config.yml`). All boilerplate layouts and theme CSS are handled centrally by `helix-docs`.

  - q: Why did my Markdown table previously show as raw text instead of a table?
    category: Markdown & Formatting
    a: |
      In Kramdown, wrapping Markdown inside raw HTML block tags like `<section>` or `<div>` disables Markdown parsing inside that block unless `parse_block_html: true` is configured in `_config.yml` or pure GitHub Flavored Markdown is used without raw HTML containers.

  - q: What layouts are available in helix-docs?
    category: Layouts & Collections
    a: |
      `helix-docs` includes seven specialized layouts:
      - `default`: Portal landing pages and organization overviews
      - `docs`: Reading guides with an automatic in-page Table of Contents
      - `wiki`: Technical reference knowledge bases with interactive search sidebar
      - `catalogue`: Visual theme, mod, and UI component galleries with live search
      - `store`: Application and installer distribution marketplace
      - `changelog`: Milestone release notes with vertical timeline
      - `faq`: Accessible collapsible accordion question base
---

## 💡 Need More Help?

Can't find what you're looking for? Feel free to open an issue or start a discussion on our GitHub repository.
