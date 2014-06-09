class UsersController < Devise::RegistrationsController
  skip_before_filter :auth_user, except: :index

  def index
    @users = User.all
  end

  def create 
    super
    @user.role = "free_user"
    @user.save!
  end

end