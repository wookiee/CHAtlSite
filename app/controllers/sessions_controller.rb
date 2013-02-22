class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_provider_and_uid(auth_hash["provider"], auth_hash["uid"]) || User.create_with_omniauth(auth_hash)
    session[:user_id] = user.id
    redirect_to root_url, notice: "Signed in!"
  end

  def failure
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Signed out!"
  end

  def openid_url
    @provider = params[:provider]
    @template = params[:template]
  end

  protected
  def auth_hash
    request.env['omniauth.auth']
  end
end
