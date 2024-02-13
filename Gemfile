source "https://rubygems.org"

ruby '3.2.1'

gem "pg"
gem "puma", ">= 5.0"
gem "rails", "~> 7.1.3"

gem "sprockets-rails" # The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]

# gem "bcrypt", "~> 3.1.7"          # Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "image_processing", "~> 1.2"  # Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "kredis"                      # Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "redis", ">= 4.0.1"           # Use Redis adapter to run Action Cable in production

gem "bootsnap", require: false              # Reduces boot times through caching; required in config/boot.rb
gem "importmap-rails" # Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem "jbuilder"        # Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "stimulus-rails"  # Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "sassc-rails"     # Use Sass to process CSS
gem "turbo-rails"     # Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ] # Windows does not include zoneinfo files, so bundle the tzinfo-data gem


group :development, :test do
  gem "byebug", platforms: %i[mri mingw x64_mingw]
  # gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem "rspec-rails"
end

group :development do
  # gem "rack-mini-profiler" # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  gem "spring" # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  gem "web-console" # Use console on exceptions pages [https://github.com/rails/web-console]
end

group :test do
  gem "capybara"                            # Adds support for Capybara system testing
  gem "database_cleaner", "~> 1.7.0"        # Ensures a clean DB state during tests
  gem "factory_bot_rails", "~> 4.10.0"
  gem "faker", "~> 1.8.7"
  gem "selenium-webdriver"
  gem "shoulda-matchers", "~> 3.1.2"
end
