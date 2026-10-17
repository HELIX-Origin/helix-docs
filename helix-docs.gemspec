# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "helix-docs"
  spec.version       = "0.1.0"
  spec.authors       = ["HELIX Origin"]
  spec.email         = ["helix.origin.dev@gmail.com"]

  spec.summary       = "A modern, multi-layout GitHub Pages Jekyll theme engineered for developer documentation, technical wikis, and project portals."
  spec.description   = "Multi-layout Jekyll theme supporting default portal landings, developer documentation guides, Just-the-docs style technical wikis, and catalogues with integrated multi-language Google Translate and Mermaid diagram support."
  spec.homepage      = "https://github.com/HELIX-Origin/helix-docs"
  spec.license       = "BSD-3-Clause"

  spec.files         = Dir.glob(["_layouts/**/*", "_includes/**/*", "assets/**/*", "_data/**/*", "LICENSE*", "README*"])

  spec.add_runtime_dependency "jekyll", ">= 3.9", "< 5.0"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.8"
  spec.add_runtime_dependency "jekyll-sitemap", "~> 1.4"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
end
