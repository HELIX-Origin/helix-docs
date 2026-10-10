---
layout: docs
title: Multilingual Translation Engine
summary: Zero-configuration Google Translate dropdown with persistent cookie state and graceful degradation.
parent: Theme Documentation Directory
nav_order: 7
---

## 🌐 Supported Languages

`helix-docs` supports 18 languages configured out of the box via `_data/languages.yml`:

| Code | Language | Native Label |
| :--- | :--- | :--- |
| `en` | English | English |
| `ja` | Japanese | 日本語 |
| `zh-CN` | Chinese (Simplified) | 简体中文 |
| `zh-TW` | Chinese (Traditional) | 繁體中文 |
| `ko` | Korean | 한국어 |
| `es` | Spanish | Español |
| `fr` | French | Français |
| `de` | German | Deutsch |
| `ru` | Russian | Русский |
| `pt` | Portuguese | Português |
| `it` | Italian | Italiano |
| `th` | Thai | ไทย |
| `vi` | Vietnamese | Tiếng Việt |
| `id` | Indonesian | Bahasa Indonesia |
| `pl` | Polish | Polski |
| `nl` | Dutch | Nederlands |
| `tr` | Turkish | Türkçe |
| `ar` | Arabic | العربية |

---

## 🍪 Persistent Cookie Storage

When a user selects a language from the dropdown, the selection is saved to the `googtrans` cookie, persisting across page loads and sub-paths automatically.
