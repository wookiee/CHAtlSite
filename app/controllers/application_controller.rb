class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user

  # Cancan ensure authorization
  # check_authorization

  # Cancan rescue from authorization exception
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end

  private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end
