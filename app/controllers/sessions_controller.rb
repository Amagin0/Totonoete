class SessionsController < ApplicationController
  before_action :require_login, only: [:destroy]
  
  def new
  end
  
  def create
    user = User.find_by(email: params[:email].downcase)
    if user && user.authenticate(params[:password])
      log_in(user)
      redirect_to root_path, notice: 'ログインしました'
    else
      render :new
    end
  end
  
  def destroy
    log_out
    redirect_to root_path, notice: 'ログアウトしました'
  end
end
