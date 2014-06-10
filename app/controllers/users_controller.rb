class UsersController < Devise::RegistrationsController

  GENDER = ["Male", "Female"]

  def index
    unless params[:q].nil?
      params[:q][:interested_in_age_end_lteq] = params[:q][:interested_in_age_start_gteq]
    end
    @search = User.search(params[:q])
    @users = @search.result.includes(:profile)
  end

  def search
    binding.pry
    index
    render :index
  end

  def create 
    super
    @user.role = "free_user"
    @user.save!
  end

end