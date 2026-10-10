source "https://rubygems.org"

gemspec

group :jekyll_plugins do
  gem "github-pages"
  gem "jekyll-remote-theme"
end

# octokit (via jekyll-github-metadata, bundled with github-pages) registers
# Faraday retry middleware, which moved to this gem in Faraday 2.x.
gem "faraday-retry"
