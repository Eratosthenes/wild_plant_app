# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path
Rails.application.config.assets.precompile += %w( multistep.js )
Rails.application.config.assets.precompile += %w( light_greenery.jpg )
Rails.application.config.assets.precompile += %w( leaf_simple.jpg )
Rails.application.config.assets.precompile += %w( leaf_compound.jpg )
Rails.application.config.assets.precompile += %w( leaf_needle.jpg )
Rails.application.config.assets.precompile += %w( leaf_scale.jpg )

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
