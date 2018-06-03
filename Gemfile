source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }
ruby '2.5.1'

gem 'pg', '~> 1.0.0'
gem 'puma', '~> 3.11'
gem 'rails', '~> 5.2.0'

gem 'bootsnap', '>= 1.1.0', require: false  # Reduces boot times through caching; required in config/boot.rb
gem 'mini_magick', '~> 4.8'                 # Use ActiveStorage variant
gem 'mini_racer', '~> 0.1.15', platforms: :ruby
gem 'sass-rails', '~> 5.0'                  # Use SCSS for stylesheets
gem 'uglifier', '>= 1.3.0'                  # Use Uglifier as compressor for JavaScript assets

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'rspec-rails', '~>3.7.2'
end

group :development do
  gem 'listen', '~> 3.1.5'
  gem 'spring', '~> 2.0.2'                  # Spring speeds up development
  gem 'spring-watcher-listen', '~> 2.0.1'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'capybara', '>= 2.15', '< 4.0'        # Adds support for Capybara system testing
  gem 'database_cleaner', '~> 1.7.0'        # Ensures a clean DB state during tests
  gem 'factory_bot_rails', '~> 4.10.0'
  gem 'faker', '~> 1.8.7'
  gem 'shoulda-matchers', '~> 3.1.2'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
