require 'openid/store/filesystem'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, Settings.twitter_key, Settings.twitter_secret
  provider :github, Settings.github_key, Settings.github_secret
  provider :google_oauth2, Settings.google_key, Settings.google_secret
  provider :open_id, :name => 'yahoo', :store => OpenID::Store::Filesystem.new('/tmp'), :identifier => 'https://www.yahoo.com/'
  provider :open_id, :name => 'verisign', :store => OpenID::Store::Filesystem.new('/tmp')
  provider :open_id, :store => OpenID::Store::Filesystem.new('/tmp')
end
