class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :auth_user
  

  def auth_user
    redirect_to new_user_registration_path
  end
end
