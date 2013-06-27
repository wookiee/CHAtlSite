source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'

# Use sqlite3 as the database for Active Record
gem 'sqlite3'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

#
# App specific gems
#

# Use Phusion Passenger as the web server
gem 'passenger'

# Use SettingsLogic for YAML private config settings
gem 'settingslogic'

# Use OmniAuth for authentication
gem 'omniauth-openid'
gem 'omniauth-twitter'
gem 'omniauth-google-oauth2'
gem 'omniauth-github'

# Use CanCan for authorization
gem 'cancan'

# Use Gravtastic for globally recongnized avatars (http://en.gravatar.com/)
gem 'gravtastic'

# For automatic unit test execution
group :development do
  gem 'guard-rspec'
  gem 'rb-fsevent', :require => false
  gem 'terminal-notifier-guard'
end

# For use in test and development only
group :test, :development do
  # Use RSpec
  gem "rspec-rails", "~> 2.6"
  gem "capybara"
  gem 'factory_girl_rails'

  # Use Jasmine
  gem 'jasmine'

  # Use pry as irb replaement
  gem 'pry-rails'
  gem 'pry-doc'
end
