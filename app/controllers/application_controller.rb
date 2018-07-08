class ApplicationController < ActionController::Base

def current_user
  #'returns the name of the current user'
  if session[:name]
    session[:name]
  elsif session[:name] == nil
    nil
  end
  #'returns nil if nobody is logged in'
end

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
