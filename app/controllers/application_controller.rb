class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

     # Make the current_user method available to views, not just controllers!
    helper_method :current_user, :moderator

    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    def moderator
      current_user && current_user.moderator
    end
end

