source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.0"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.0.6"

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem "sprockets-rails"

# Use postgresql as the database for Active Record
gem "pg", "~> 1.1"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", "~> 5.0"

# Bundle and transpile JavaScript [https://github.com/rails/jsbundling-rails]
gem "jsbundling-rails"

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails"

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails"

# Bundle and process CSS [https://github.com/rails/cssbundling-rails]
gem "cssbundling-rails"

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder"

# Use Redis adapter to run Action Cable in production
# gem "redis", "~> 4.0"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"


gem "kredis", "~> 1.5"

gem "geocoder", "~> 1.8"

gem "browser", "~> 5.3"

gem "groupdate", "~> 6.3"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use Sass to process CSS
# gem "sassc-rails"

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
gem "image_processing", "~> 1.2"

gem "aasm", "~> 5.2"
gem "devise"
gem "devise_invitable", "~> 2.0"
gem "omniauth-rails_csrf_protection"
gem "omniauth", "~> 2.0"
gem "acts-as-taggable-on", "~> 9.0"
gem "aws-sdk-rails"
gem "aws-sdk-s3", "~> 1.48"
gem "friendly_id", "~> 5.4"
gem "standardrb", "~> 1.0"
gem "active_storage_validations", "~> 0.9.8"
gem "socialization", "~> 2.0"
gem "kaminari"
gem "store_attribute", "~> 1.0"
gem 'omniauth-discord'
gem "rqrcode", "~> 2.0"
# gem 'omniauth-zoom'
# gem "omniauth-github"
# gem 'omniauth-twitter'
# gem 'omniauth-stripe'
gem 'omniauth-twitch'
gem 'dotenv-rails', groups: [:development, :test]




group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end



group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console"

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem "rack-mini-profiler"

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
  gem 'shoulda-matchers', '~> 5.0'
  gem 'faker'
end

# Or, run against the main branch
# (requires main-branch versions of all related RSpec libraries)
group :development, :test do
  gem "factory_bot_rails"
  %w[rspec-core rspec-expectations rspec-mocks rspec-rails rspec-support].each do |lib|
    gem lib, git: "https://github.com/rspec/#{lib}.git", branch: 'main'
  end
end

gem "rails_autolink", "~> 1.1"

gem "transbank-sdk", "~> 3.0"
gem "stripe", "~> 8.6"
gem "mercadopago", "~> 2.3"

gem "meta-tags", "~> 2.18"
