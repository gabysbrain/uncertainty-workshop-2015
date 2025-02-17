require 'lib/vdmu_helpers'

helpers VdmuHelpers

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# standard layouts
page '/*.html', layout: 'page'
page '/index.html', layout: 'news'

# pretty URLs
activate :directory_indexes

# Google analytics
activate :google_analytics do |ga|
  ga.tracking_id = 'UA-64813066-1'
end


# With alternative layout
# page "/path/to/file.html", layout: :otherlayout

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }

###
# Helpers
###

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload, :host => '127.0.0.1'
end

# markdown processor
set :markdown_engine, :redcarpet

# generate thumbnail images
activate :middleman_simple_thumbnailer

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

# Build-specific configuration
configure :build do
  set :relative_links, true
  activate :relative_assets

  # Minify CSS on build
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Minify images
  activate :imageoptim do |options|
    options.manifest = true
    options.nice = true
    options.threads = true

    # compressors not to use
    options.pngout = false
    options.svgo   = false
  end
end

