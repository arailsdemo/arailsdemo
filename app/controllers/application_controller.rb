class ApplicationController < ActionController::Base
  before_filter :ensure_domain, :authorize

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

  def ensure_domain
    if request.env['HTTP_HOST'] != APP_ADDRESS && ENV["RAILS_ENV"] != 'development'
      redirect_to("http://" + AP_ADDRESS)
    end
  end
end
