class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :set_search
  
  def after_sign_up_path_for(resource)
      after_sign_in_path_for(resource)
  end
  
  def set_search
    @search = User.search(params[:q])
  end

  rescue_from CanCan::AccessDenied do |exception|
    if params[:controller] == "profiles" && params[:action] == "show"
      redirect_to edit_current_user_profile_path, :alert => "Oops! To view users profiles you first need to completely fill in your own."
    else
      redirect_to root_url, :alert => exception.message
    end
  end

  
end
