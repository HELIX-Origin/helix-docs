---
layout: wiki
title: Client-Side JavaScript Modules
summary: Architecture of translate.js and mermaid-init.js modules.
parent: Community Wiki & Technical Architecture
nav_order: 4
---

## 🌐 Google Translate Module (`translate.js`)

The translation engine operates in a self-executing closure:
1. Reads the `googtrans` cookie or URL query `?lang=<code>`.
2. Suppresses default Google Translate banners and tooltips.
3. Automatically triggers hidden `goog-te-combo` select elements on change.
4. Preserves language selection across page reloads and relative navigation.

---

## 🧜‍♀️ Mermaid Integration (`mermaid-init.js`)

The Mermaid module dynamically enhances pages after DOM content loads:
1. Scans the DOM for `<pre class="language-mermaid">` or `<div class="language-mermaid">`.
2. Extracts raw Mermaid diagram syntax.
3. Initializes Mermaid with custom dark mode variables (`#07111f`, `#48d8f2`).
4. Replaces code blocks with `<pre class="mermaid">` and executes `mermaid.run()`.
5. Automatically wraps bare `<table>` elements in responsive `.table-wrap` divs.
