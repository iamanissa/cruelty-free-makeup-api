source 'https://rubygems.org'

# =============================================================================
# Each gem is labeled with one of the following:
#   Critical - App functionality, tests or other supported functionality will fail if removed.
#   Expected - Not essential for core functionality or tests, but expected to be used.
#              You may have to do a little cleanup to fully disconnect the gem.
#   Optional - Can be removed if you're the developer and don't use the capability.
#              You may have to do a little cleanup to fully disconnect the gem.
# =============================================================================

git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'pg', '1.1.3'                           # (Critical) Ruby interface to the Postgres database.
gem 'puma', '~> 3.11'                       # (Optional) Make puma available as an app server
gem 'rails', '5.2.1'                        # (Critical) Loads the Ruby on Rails framework.

gem 'bootsnap', '>= 1.1.0', require: false  # (Expected) Reduces boot times through caching; required in config/boot.rb
gem 'mini_racer', '~> 0.2.4', platforms: :ruby
gem 'sassc-rails', '~> 2.0.0'               # (Critical) Use SCSS for stylesheets
gem 'uglifier', '>= 1.3.0'                  # (Critical) Use Uglifier as compressor for JavaScript assets

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'rspec-rails', '~>3.8.0'              # (Critical) Configures Rails to use rspec.
end

group :development do
  gem 'listen', '~> 3.1.5'
  gem 'spring', '~> 2.0.2'                  # (Optional) Spring speeds up development
  gem 'spring-watcher-listen', '~> 2.0.1'
  gem 'web-console', '~> 3.7.0'             # (Optional) Provides a console in the browser when errrors happen.
end

group :test do
  gem 'capybara', '~> 3.11.0'               # (Critical) Adds support for Capybara system testing
  gem 'database_cleaner', '~> 1.7.0'        # (Critical) Ensures a clean DB state during tests
  gem 'factory_bot_rails', '~> 4.11.1'      # (Critical) Generates factories for tests
  gem 'faker', '~> 1.9.1'                   # (Critical) Used by tests to generate random content
  gem 'shoulda-matchers', '~> 3.1.2'        # (Critical) Adds extra matchers for tests
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
