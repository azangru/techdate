class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :set_search
  
  def set_search
    @search = User.search(params[:q])
  end

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end

  
end
