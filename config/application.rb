require_relative "boot"
# config/application.rb
#require 'pagy/extras/bootstrap'
require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Vendelo
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
    # available languages
    config.i18n.available_locales = [ :es, :fr, :en]
    # language by default
    config.i18n.default_locale = :fr

    # Allow multiquery
    config.active_record.async_query_executor = :global_thread_pool
    config.assets.precompile += %w( tailwind.css some_other_asset.css another_asset.js )

    # Background job
    config.active_job.queue_adapter = :sidekiq
  end
end
