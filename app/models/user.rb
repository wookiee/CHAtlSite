class User < ActiveRecord::Base
  include Gravtastic
  gravtastic

  ROLES = %w[admin member]

  def admin?
    self.role == 'admin'
  end

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth[:provider]
      user.uid = auth[:uid]
      name = auth[:info][:name]
      user.first_name = auth[:info][:first_name]
      user.last_name = auth[:info][:last_name]
      if name && !user.first_name && !user.last_name
        components = name.split(/\s/)
        user.first_name = components[0]
        user.last_name = components[1] if components.size == 2
      end
      nickname = auth[:info][:nickname]
      user.twitter_handle = nickname if user.provider == "twitter"
      user.profile_image_uri = auth[:info][:image]
      user.email = auth[:info][:email]
    end
  end

  def profile_image
    self.profile_image_uri || self.gravatar_url
  end
end
