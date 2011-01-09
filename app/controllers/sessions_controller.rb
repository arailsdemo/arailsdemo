class SessionsController < ApplicationController
  skip_filter :authorize

  def new
  end

  def create
    session[:name] = params[:name]
    session[:pw] = params[:password]
    if admin?
      redirect_to root_url, :notice => "Successfully logged in"
    else
      render 'new'
    end
  end

  def destroy
    reset_session
    flash[:notice] = "Logged out"
    redirect_to root_url
  end
end
