class UsersController < Devise::RegistrationsController

  def index
    @users = User.all
  end

  def create 
    super
    @user.role = "free_user"
    @user.save!
  end

end