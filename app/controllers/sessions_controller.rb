class SessionsController < ApplicationController

  def new
    @user = User.find_by(name: session[:user_id])
  end


  def show
    @user = User.find(params[:session[:user_id]])
  end

  def create
    if(params[:name] != nil && params[:name] != "")
      session[:name] = params[:name]
      redirect_to secret_path
    else
      redirect_to '/'
    end
  end

  def destroy
    session[:name] = nil
    redirect_to '/login'
  end


end
