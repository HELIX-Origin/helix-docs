---
layout: docs
title: Home Pages & the vCard Pattern
summary: How to compose a polished home page (index.md) with layout default plus the theme's vCard-style HTML sections.
parent: Theme Documentation Directory
nav_order: 5
---

## 🏠 The vCard Home Pattern

A **home page** in this theme is not a dedicated layout — it is a root `index.md`
that keeps `layout: default`. The theme detects the home page automatically and
renders it as a landing page:

- the `<body>` receives the `page--home` class and the body is wrapped in `.landing-content`;
- the sidebar renders the **vCard profile card** (squircle `logo`, brand title, and tagline);
- the **hero header** above the content is built entirely from front matter;
- the body is free-form HTML assembled from the theme's landing section classes.

> **Note:** Do **not** invent a `layout: vcard` (or `layout: home`). Always keep
> `layout: default` and compose the page from the sections below. The "vCard" look
> comes from the sidebar profile card plus the hero and the section blocks.

---

## 1. Front matter (the hero header)

The title, lead, notice, and buttons are all driven by front matter — no HTML is
required for the hero:

```yaml
---
layout: default              # required — always the default layout
title: My Project            # page <title> + default hero <h1> + sidebar brand
heading: A bolder headline   # optional: overrides only the hero <h1>
eyebrow: Developer Tool      # optional: small label above the <h1>
summary: One-line pitch.     # hero lead paragraph (alias: lead)
notice: "<strong>Heads up:</strong> Optional callout under the hero."
nav_order: 1
header_actions:              # hero button row
  - title: Read the docs
    url: /docs/
    class: button--primary
  - title: GitHub ↗
    url: https://github.com/HELIX-Origin/my-project
    class: button--secondary
---
```

| Key | Renders | Notes |
| :--- | :--- | :--- |
| `title` | `<title>` tag, fallback hero `<h1>`, sidebar brand | **Required** |
| `heading` | hero `<h1>` | Use when the display headline differs from the browser title. |
| `eyebrow` | small label above the `<h1>` | Falls back to `tagline` / `parent` / `category` / site tagline. |
| `summary` | hero lead paragraph | Alias `lead`; also fills `<meta description>`. |
| `notice` | callout box under the hero | Inline HTML is allowed (e.g. `<strong>`, `<code>`). |
| `header_actions` | hero button row | Array of `{ title, url, class }`; `class` is `button--primary` or `button--secondary`. |

### Tuning the vCard profile card

The sidebar card can be adjusted per page without touching `_config.yml`:

| Front matter | Default | Purpose |
| :--- | :--- | :--- |
| `logo` | `site.logo` | Squircle mark shown in the card |
| `brand_title` | `site.title` | Card title |
| `brand_tagline` | `site.tagline` | Card subtitle |
| `summary` / `sidebar_summary` | `site.description` | Paragraph rendered beneath the card on the home page |

---

## 2. Body sections

Each block is a `<section class="doc-section">` with a numbered heading. The
`.section-number` is a decorative boxed counter and `.eyebrow` is the small
uppercase label:

```html
<section id="about" class="doc-section">
<div class="section-heading">
<span class="section-number">01</span>
<div>
<p class="eyebrow">Overview</p>
<h2>What it does</h2>
</div>
</div>
<p>Introductory paragraph for this section.</p>
</section>
```

### Feature cards

```html
<div class="features-grid">
<div class="feature-card">
<span class="feature-card__icon" aria-hidden="true">⚡</span>
<h3>Fast</h3>
<p>One short supporting sentence.</p>
</div>
</div>
```

Both `features-grid` and `feature-grid` are styled — use whichever reads best.
The emoji marker is optional but recommended for visual scanning.

### Project / repository cards

```html
{% raw %}<div class="project-grid">
<div class="project-card">
<a href="https://example.github.io/thing/" class="project-img">
<img src="{{ '/assets/images/thing.svg' | relative_url }}" alt="Thing icon and project name" loading="lazy" decoding="async">
</a>
<div class="project-body">
<h3>Thing</h3>
<p>One-line description of the project.</p>
<div class="project-actions">
<a class="project-action" href="https://example.github.io/thing/">Project page ↗</a>
<a class="source-link" href="https://github.com/HELIX-Origin/thing">Source on GitHub ↗</a>
</div>
</div>
</div>
</div>{% endraw %}
```

Card images use a fixed `16 / 9` aspect ratio, so keep a 16:9 source and retain
`loading="lazy"` and `decoding="async"`.

### Documentation directory (auto-listing)

This grid renders a card per column and can list your collections automatically:

```html
{% raw %}<div class="documentation-directory">
<div>
<h3>User Guides</h3>
<ul>
{%- assign guide_pages = site.docs | sort: "nav_order" %}
{%- for doc in guide_pages %}
<li><a href="{{ doc.url | relative_url }}">{{ doc.title | escape }}</a></li>
{%- endfor %}
</ul>
</div>
<div>
<h3>Technical Wiki</h3>
<ul>
{%- assign wiki_pages = site.wiki | sort: "nav_order" %}
{%- for doc in wiki_pages %}
<li><a href="{{ doc.url | relative_url }}">{{ doc.title | escape }}</a></li>
{%- endfor %}
</ul>
</div>
</div>{% endraw %}
```

### Screenshot previews

```html
<div class="features-grid">
<div class="preview-box">
<img src="https://raw.githubusercontent.com/HELIX-Origin/my-project/main/images/preview-1.png" alt="Screenshot of the app" loading="lazy">
</div>
</div>
```

### Step timeline

```html
<ol class="timeline">
<li>
<strong>Install</strong> <span class="item-badge">Step 1</span>
<p>What this step does.</p>
<pre><code>./install.sh</code></pre>
</li>
</ol>
```

### Closing action row

A trailing button row is handy for a final call to action (the hero buttons come
from `header_actions` instead):

```html
{% raw %}<div class="header-actions">
<a class="button button--primary" href="{{ '/docs/' | relative_url }}">Read the docs</a>
<a class="button button--secondary" href="https://github.com/HELIX-Origin/my-project">GitHub ↗</a>
</div>{% endraw %}
```

---

## 3. Full skeleton (copy & paste)

```markdown
{% raw %}---
layout: default
title: My Project
summary: One-line pitch for the project.
eyebrow: Developer Tool
nav_order: 1
header_actions:
  - title: Read the docs
    url: /docs/
    class: button--primary
  - title: GitHub ↗
    url: https://github.com/HELIX-Origin/my-project
    class: button--secondary
---

<section id="about" class="doc-section">
<div class="section-heading">
<span class="section-number">01</span>
<div>
<p class="eyebrow">Overview</p>
<h2>What it does</h2>
</div>
</div>
<p>Introductory paragraph.</p>
<div class="features-grid">
<div class="feature-card">
<span class="feature-card__icon" aria-hidden="true">⚡</span>
<h3>Feature</h3>
<p>Short supporting sentence.</p>
</div>
</div>
</section>

<section id="docs" class="doc-section">
<div class="section-heading">
<span class="section-number">02</span>
<div>
<p class="eyebrow">Reference</p>
<h2>Documentation</h2>
</div>
</div>
<div class="documentation-directory">
<div>
<h3>User Guides</h3>
<ul>
{%- assign guide_pages = site.docs | sort: "nav_order" %}
{%- for doc in guide_pages %}
<li><a href="{{ doc.url | relative_url }}">{{ doc.title | escape }}</a></li>
{%- endfor %}
</ul>
</div>
</div>
<div class="header-actions">
<a class="button button--primary" href="{{ '/docs/' | relative_url }}">Read the docs</a>
</div>
</section>{% endraw %}
```

---

## 4. Rules & gotchas

- **Always `layout: default`.** Home pages are the root `index.md`; do not create a
  `vcard`/`home` layout. If the site publishes from `docs/`, the home file is
  `docs/index.md` (served at `/`).
- **Home is auto-detected** via `page.url == '/'`, `page.path == 'index.md'`,
  `page_class: page--home`, or `layout: home` — you normally set nothing extra.
- **Raw HTML needs `kramdown.parse_block_html: true`** (already in the recommended
  config). Without it, the `<section>` blocks are escaped and shown as text.
- **Escape ampersands** as `&amp;` inside HTML headings and strong text
  (e.g. `<h2>Search &amp; filter</h2>`).
- **Use `{{ '/path/' | relative_url }}`** for every internal link and asset so a
  configured `baseurl` is honored. External URLs pass through untouched.
- **Number sections sequentially** (`01`, `02`, `03`, …) to match the boxed
  counters.
- **Keep card images 16:9** and always include `loading="lazy"` and
  `decoding="async"`.
