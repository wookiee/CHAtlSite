require 'spec_helper'

AUTH_HASHES = {
  twitter: {
    provider: "twitter",
    uid: "1001",
    info: {
      name: "First Last",
      nickname: "username",
      image: "http://example.com/avatar.jpg"
    }
  },
  google: {
    provider: "google_oauth2",
    uid: "1001",
    info: {
      name: "",
      email: "username@gmail.com",
      first_name: "First",
      last_name: "Last",
      image: "https://example.com/avatar.jpg"
    }
  },
  github: {
    provider: "github",
    uid: "1001",
    info: {
      name: "First Last",
      nickname: "username",
      email: "",
      image: "https://example.com/avatar.png"
    }
  },
  verisign: {
    provider: "verisign",
    uid: "http://username.pip.verisignlabs.com/",
    info: {
      name: "First Last",
      email: "username@example.com"
    }
  }
}

describe User, :type => :model do
  describe "self.create_with_omniauth" do
    describe "using Twitter" do
      it "should set provider" do
        auth_hash = AUTH_HASHES[:twitter]
        user = User.create_with_omniauth(auth_hash)
        expect(user.provider).to eq("twitter")
      end

      it "should set uid" do
        auth_hash = AUTH_HASHES[:twitter]
        user = User.create_with_omniauth(auth_hash)
        expect(user.uid).to eq("1001")
      end

      it "should set twitter_handle" do
        auth_hash = AUTH_HASHES[:twitter]
        user = User.create_with_omniauth(auth_hash)
        expect(user.twitter_handle).to eq("username")
      end

      it "should set first_name" do
        auth_hash = AUTH_HASHES[:twitter]
        user = User.create_with_omniauth(auth_hash)
        expect(user.first_name).to eq("First")
      end

      it "should set last_name" do
        auth_hash = AUTH_HASHES[:twitter]
        user = User.create_with_omniauth(auth_hash)
        expect(user.last_name).to eq("Last")
      end

      it "should set profile image URI" do
        auth_hash = AUTH_HASHES[:twitter]
        user = User.create_with_omniauth(auth_hash)
        expect(user.profile_image_uri).to eq("http://example.com/avatar.jpg")
      end
    end

    describe "using Google" do
      it "should set provider" do
        auth_hash = AUTH_HASHES[:google]
        user = User.create_with_omniauth(auth_hash)
        expect(user.provider).to eq("google_oauth2")
      end

      it "should set uid" do
        auth_hash = AUTH_HASHES[:google]
        user = User.create_with_omniauth(auth_hash)
        expect(user.uid).to eq("1001")
      end

      it "should set email" do
        auth_hash = AUTH_HASHES[:google]
        user = User.create_with_omniauth(auth_hash)
        expect(user.email).to eq("username@gmail.com")
      end

      it "should set first_name" do
        auth_hash = AUTH_HASHES[:google]
        user = User.create_with_omniauth(auth_hash)
        expect(user.first_name).to eq("First")
      end

      it "should set last_name" do
        auth_hash = AUTH_HASHES[:google]
        user = User.create_with_omniauth(auth_hash)
        expect(user.last_name).to eq("Last")
      end

      it "should set profile image URI" do
        auth_hash = AUTH_HASHES[:google]
        user = User.create_with_omniauth(auth_hash)
        expect(user.profile_image_uri).to eq("https://example.com/avatar.jpg")
      end
    end

    describe "using GitHub" do
      it "should set provider" do
        auth_hash = AUTH_HASHES[:github]
        user = User.create_with_omniauth(auth_hash)
        expect(user.provider).to eq("github")
      end

      it "should set uid" do
        auth_hash = AUTH_HASHES[:github]
        user = User.create_with_omniauth(auth_hash)
        expect(user.uid).to eq("1001")
      end

      it "should set profile image URI" do
        auth_hash = AUTH_HASHES[:github]
        user = User.create_with_omniauth(auth_hash)
        expect(user.profile_image_uri).to eq("https://example.com/avatar.png")
      end
    end

    describe "using VeriSign" do
      it "should set provider" do
        auth_hash = AUTH_HASHES[:verisign]
        user = User.create_with_omniauth(auth_hash)
        expect(user.provider).to eq("verisign")
      end

      it "should set uid" do
        auth_hash = AUTH_HASHES[:verisign]
        user = User.create_with_omniauth(auth_hash)
        expect(user.uid).to eq("http://username.pip.verisignlabs.com/")
      end

      it "should set email" do
        auth_hash = AUTH_HASHES[:verisign]
        user = User.create_with_omniauth(auth_hash)
        expect(user.email).to eq("username@example.com")
      end
    end
  end

  it "should respond to gravatar_url" do
    user = FactoryGirl.build(:user)
    expect(user).to respond_to(:gravatar_url)
  end

  it "should provide profile_image convenience from provider" do
    user = FactoryGirl.build(:bob)
    expect(user.profile_image).to eq("MyString")
  end

  it "should provide profile_image convenience from gravatar" do
    user = User.new
    allow(user).to receive(:gravatar_url).and_return("MyString")
    expect(user.profile_image).to eq("MyString")
  end
end
