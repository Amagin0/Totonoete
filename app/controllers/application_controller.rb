class ApplicationController < ActionController::Base
  helper_method :current_user, :signed_in?
  include SessionsHelper

  private

  def signed_in?
    current_user
  end

  def authenticate_user
    if current_user == nil
      flash[:notice] = "ログインが必要です"
      redirect_to("/login")
    end
  end

end
