class SecretsController < ApplicationController
  before_action :require_logged_in

  def show
  end

  def new
  end

  def create
    @secret = params[:secret]
    redirect_to controller: 'secrets', action: 'show'
  end
end
