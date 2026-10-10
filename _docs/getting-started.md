---
layout: docs
title: Getting Started with helix-docs
summary: Learn how to connect helix-docs to any GitHub repository in less than two minutes.
parent: Theme Documentation Directory
nav_order: 2
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
summary: A clean and fast open-source library.
parent: Parent Page (optional)
grand_parent: Grand Parent Page (optional)
nav_order: 1
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
