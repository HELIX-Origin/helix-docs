---
layout: changelog
title: Release Changelog
eyebrow: Version History
heading: Project Changelog & Releases
lead: Comprehensive record of version milestones, feature enhancements, and bug fixes across the ecosystem.
releases:
  - version: v1.1.0
    date: 2026-10-09
    tag: Major Upgrade
    summary: Added modular SCSS architecture, in-page Table of Contents for documentation guides, and four specialized layouts (Catalogue, Store, Changelog, FAQ).
    features:
      - Migrated entire CSS architecture to 9 modular SCSS partials with automated compilation.
      - Introduced in-page Table of Contents with automatic heading anchor generation in `docs` layout.
      - Created new `catalogue` layout with live search and category pills.
      - Created new `store` layout with spotlight featured item and software download cards.
      - Created new `changelog` layout with vertical milestone timeline.
      - Created new `faq` layout with accessible native accordion and live search.
    fixes:
      - Fixed Kramdown HTML block table parsing by configuring `parse_block_html: true` and removing raw section wrappers.
      - Fixed sidebar navigation disappearing by implementing resilient collection document matching.
    release_url: https://github.com/HELIX-Origin/helix-docs/releases

  - version: v1.0.0
    date: 2026-10-09
    tag: Initial Release
    summary: Initial release of the standalone HELIX Docs GitHub Pages Jekyll theme repository.
    features:
      - Complete decoupling from specific organization projects.
      - Support for `remote_theme: HELIX-Origin/helix-docs` on GitHub Pages.
      - Responsive dual-sidebar shell with 18-language translation system.
      - Mermaid diagram support and dark cyber-slate design tokens.
    release_url: https://github.com/HELIX-Origin/helix-docs/releases
---
