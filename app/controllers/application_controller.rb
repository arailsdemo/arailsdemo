class ApplicationController < ActionController::Base
  before_filter :authorize

  helper_method :admin?

  protect_from_forgery

  protected

  def admin?
    session[:name] == "login" && session[:pw] == "password"
  end

  def authorize
    unless admin?
      redirect_to root_url
      # false   # edited 11/17/10 -- not needed
    end
  end
end
