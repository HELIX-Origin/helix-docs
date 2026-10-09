---
layout: default
title: HELIX Docs Theme
eyebrow: Modern Multi-Layout GitHub Pages Theme
heading: The universal Jekyll theme for documentation, wikis, and project portals.
lead: helix-docs provides clean responsive layouts, deep navigation trees, integrated Google Translate, and Mermaid diagrams for GitHub Pages sites across the HELIX Origin organization.
notice: "<strong>Zero-Install Remote Theme:</strong> Use directly on GitHub Pages by adding <code>remote_theme: HELIX-Origin/helix-docs</code> to your <code>_config.yml</code>."
header_actions:
  - title: View on GitHub ↗
    url: https://github.com/HELIX-Origin/helix-docs
    class: button--primary
---

<section id="features" class="doc-section">
  <div class="section-heading">
    <span class="section-number">01</span>
    <div>
      <p class="eyebrow">Architecture</p>
      <h2>Theme Capabilities</h2>
    </div>
  </div>
  <p>
    Built to eliminate layout duplication and provide a cohesive, dark-themed experience across all organization projects:
  </p>
  <div class="features-grid">
    <div class="feature-card">
      <h3>Multi-Layout System</h3>
      <p>Switch between portal landing pages, sequential documentation guides, and deep technical wiki trees using simple frontmatter.</p>
    </div>
    <div class="feature-card">
      <h3>Remote Theme Compatible</h3>
      <p>Works natively on GitHub Pages via <code>jekyll-remote-theme</code> without requiring local gem compilation or Ruby installations.</p>
    </div>
    <div class="feature-card">
      <h3>18-Language Translation</h3>
      <p>Zero-configuration multilingual support with persistent cookie storage and graceful offline fallback.</p>
    </div>
    <div class="feature-card">
      <h3>Native Diagram Support</h3>
      <p>Automatically renders standard GFM mermaid blocks into beautiful dark-themed architectural diagrams.</p>
    </div>
  </div>
</section>

<section id="layouts" class="doc-section">
  <div class="section-heading">
    <span class="section-number">02</span>
    <div>
      <p class="eyebrow">Layout Reference</p>
      <h2>Supported Layouts</h2>
    </div>
  </div>
  <p>
    Declare the desired layout in your page's YAML frontmatter using <code>layout: &lt;name&gt;</code>:
  </p>

| Layout | Purpose | Content Wrapper | Navigation Support |
| :--- | :--- | :--- | :--- |
| `default` | Portals, landing pages, and standalone pages | Full shell + dynamic hero header | Sidebar navigation groups |
| `docs` | Sequential documentation guides & reading books | Breadcrumbs + sequential pager | Pager (prev/next) & wiki banner |
| `wiki` | In-depth technical catalogs & reference trees | Filterable tree + deep breadcrumbs | Live filter search box |
| `catalogue` | Grid-based project/theme showcases | Catalog cards grid | Category filterable (reserved) |
{: .surfaces-table}

</section>

<section id="installation" class="doc-section">
  <div class="section-heading">
    <span class="section-number">03</span>
    <div>
      <p class="eyebrow">Setup</p>
      <h2>Using in Your Repository</h2>
    </div>
  </div>
  <p>
    To use this theme in any project's GitHub Pages site (e.g. in the <code>docs/</code> folder or root):
  </p>

  <p><strong>1. Add to <code>_config.yml</code>:</strong></p>

```yaml
remote_theme: HELIX-Origin/helix-docs
plugins:
  - jekyll-remote-theme
```

  <p><strong>2. Create your site's <code>index.md</code>:</strong></p>

```markdown
---
layout: default
title: My Project
eyebrow: Project Category
heading: My Project Title
lead: Description of the project...
---

## Overview
Your markdown content here...
```

</section>
