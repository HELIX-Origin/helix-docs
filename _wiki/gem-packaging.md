---
layout: wiki
title: Packaging & Distribution
summary: How helix-docs is published, versioned, and consumed via GitHub Pages remote_theme and RubyGems.
parent: Community Wiki & Technical Architecture
nav_order: 5
---

## 📦 Distribution Models

`helix-docs` supports two primary methods of distribution:

| Method | Mechanism | Primary Use Case |
| :--- | :--- | :--- |
| **GitHub Remote Theme** | `remote_theme: HELIX-Origin/helix-docs` | Automated GitHub Pages builds without local gem installation |
| **RubyGem Theme** | `theme: helix-docs` | Self-hosted Jekyll builds, Docker containers, and CI/CD pipelines |

---

## 🚀 Consuming via `remote_theme`

Projects hosted on GitHub Pages can consume the theme directly by specifying the repository in `_config.yml`:

```yaml
remote_theme: HELIX-Origin/helix-docs
plugins:
  - jekyll-remote-theme
```

When using `remote_theme`, GitHub Pages automatically pulls all layouts, includes, stylesheets, and JavaScript assets from the theme repository on every deployment.

---

## 💎 Building the RubyGem

For local development or packaging as a standard RubyGem:

```bash
# Build the gem artifact
gem build helix-docs.gemspec

# Install locally for testing
gem install helix-docs-*.gem
```
