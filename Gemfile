source "https://rubygems.org"
gem "sprockets-rails"
gem 'pwa'
gem "devise"
gem "bootstrap"
gem "sassc-rails"
gem "rails", "~> 8.0.1"
#gem "propshaft"
gem "sqlite3", ">= 2.1"
gem "puma", ">= 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "tzinfo-data", platforms: %i[ windows jruby ]
gem "solid_cache"
gem "solid_queue"
gem "solid_cable"
gem "bootsnap", require: false
gem "kamal", require: false
gem "thruster", require: false
group :development, :test do
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"
  gem "brakeman", require: false
  gem "rubocop-rails-omakase", require: false
end
group :development do
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end
group :production do
  gem 'pg' # PostgreSQL
end

group :development, :test do
  gem "sqlite3", ">= 2.1"
end
group :assets do
  gem 'sass-rails'
  gem 'uglifier'
end
