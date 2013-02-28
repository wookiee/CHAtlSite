class SessionsController < ApplicationController
  # GET /signin
  def new
  end

  # GET|POST /auth/:provider/callback
  def create
    user = User.find_by_provider_and_uid(auth_hash["provider"], auth_hash["uid"])
    if user
      session[:user_id] = user.id
      redirect_to root_url, notice: "Signed in!"
    else
      user = User.create_with_omniauth(auth_hash)
      session[:user_id] = user.id
      redirect_to edit_user_path(user)
    end
  end

  # DELETE /signout
  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Signed out!"
  end

  # GET /auth/failure
  def failure
  end

  # GET /openid_url
  def openid_url
    @provider = params[:provider]
    @template = params[:template]
  end

  protected
  def auth_hash
    request.env['omniauth.auth']
  end
end
