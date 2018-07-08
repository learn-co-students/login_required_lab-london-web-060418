class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name] == nil
      redirect_to '/login'
    elsif params[:name]==""
      redirect_to '/login'
    elsif params[:name]
      session[:name]=params[:name]
    #redirects you to the login page if :name is nil
    #redirects you to the login page if :name is empty
    #sets session[:name] if :name was given

    end
  end

  def destroy
    # leaves session[:name] nil if it was not set
     session[:name] = nil
    # clears session[:name] if it was set
  end

  def current_user
  end
end
