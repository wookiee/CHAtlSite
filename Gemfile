source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.6'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

#
# App specific gems
#

# Use SettingsLogic for YAML private config settings
gem 'settingslogic'

# Use OmniAuth for authentication
gem 'omniauth-openid'
gem 'omniauth-twitter'
gem 'omniauth-google-oauth2'
gem 'omniauth-github'

# Use CanCanCommunity for authorization
gem 'cancancan', '~> 1.8'

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
  gem 'spring-commands-rspec', '~> 1.0.2'
  gem 'rspec-rails', '~> 3.0.0'
  gem 'rspec-activemodel-mocks'
  gem "capybara"
  gem 'factory_girl_rails'

  # Use Jasmine
  gem 'jasmine'

  # Use pry as irb replaement
  gem 'pry-rails'
  gem 'pry-doc'
end
