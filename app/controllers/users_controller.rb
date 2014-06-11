class UsersController < Devise::RegistrationsController
  before_filter :authenticate_user!, only: [:index]

  GENDER = ["Male", "Female"]

  def index
    unless user_signed_in?
      @user = User.new
      render :new, layout: "home_layout"
    else
      unless params[:q].nil?
        params[:q][:interested_in_age_end_lteq] = params[:q][:interested_in_age_start_gteq]
      end
      @search = User.search(params[:q])
      @users = @search.result.includes(:profile)
    end
  end

  def search
    index
    render :index
  end

  def create 
    super
    @user.role = "free_user"
    @user.save!
  end

end