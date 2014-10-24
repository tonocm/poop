# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )

Rails.application.config.assets.version = '1.0'
Rails.application.config.assets.precompile += %w( bootstrap.min.css )
Rails.application.config.assets.precompile += %w( font-awesome.min.css )
Rails.application.config.assets.precompile += %w( static_pages.css )
Rails.application.config.assets.precompile += %w( jquery-1.11.0.js )
Rails.application.config.assets.precompile += %w( bootstrap.min.js )
