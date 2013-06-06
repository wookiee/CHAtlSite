source 'https://rubygems.org'

gem 'rails', '3.2.13'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'

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
