class ApplicationController < ActionController::Base
  helper_method :current_user, :signed_in?
  include SessionsHelper

  private

  def signed_in?
    current_user
  end

end
