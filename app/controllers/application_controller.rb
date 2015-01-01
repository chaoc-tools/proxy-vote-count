class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :authenticate

  helper_method :current_user

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  protected

    def authenticate
      authenticate_or_request_with_http_basic do |username, password|
        username == ENV["HT_USR"] && password == ENV["HT_PWD"]
      end
    end

end
