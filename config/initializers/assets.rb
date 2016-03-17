# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
Rails.application.config.assets.precompile += %w( bootstrap.min.css )
Rails.application.config.assets.precompile += %w( AdminLTE.min.css )
Rails.application.config.assets.precompile += %w( skins/skin-blue.min )

Rails.application.config.assets.precompile += %w( plugins/jQuery/jQuery-2.1.4.min )
Rails.application.config.assets.precompile += %w( bootstrap.min )
Rails.application.config.assets.precompile += %w( app.min )
Rails.application.config.assets.precompile += %w( plugins/dataTables/jquery.dataTables.min.css )
Rails.application.config.assets.precompile += %w( plugins/dataTables/jquery.dataTables.min.js )