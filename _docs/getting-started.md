---
layout: docs
title: Getting Started
eyebrow: User Guides
heading: Getting Started with helix-docs
lead: Learn how to connect helix-docs to any GitHub repository in less than two minutes.
---

## 🚀 Quick Setup (Remote Theme)

The easiest and recommended way to use `helix-docs` is via `jekyll-remote-theme`. This requires no Ruby installations or build dependencies.

### Step 1: Add Theme to `_config.yml`

In your repository root or `docs/` folder, add the following to `_config.yml`:

```yaml
remote_theme: HELIX-Origin/helix-docs

plugins:
  - jekyll-remote-theme
```

### Step 2: Create `index.md`

Create an `index.md` file using standard GitHub Flavored Markdown:

```markdown
---
layout: default
title: My Project
eyebrow: Documentation Portal
heading: Welcome to My Project
lead: A clean and fast open-source library.
---

## Overview

Welcome to the documentation for my project!
```

### Step 3: Enable GitHub Pages

In your GitHub repository settings:
1. Navigate to **Settings** → **Pages**.
2. Under **Build and deployment**, select **Deploy from a branch**.
3. Choose the branch (`main` or `gh-pages`) and folder (`/` or `/docs`).
4. Click **Save**.

Your documentation site will be compiled by Jekyll using `helix-docs` automatically!
