class UsersController < Devise::RegistrationsController

  before_filter :authenticate_user!, only: [:index]

  def index
    @users = User.all
    unless user_signed_in?
      @user = User.new
      render :new
    end
  end

  def create 
    super
    @user.role = "free_user"
    @user.save!
  end

end