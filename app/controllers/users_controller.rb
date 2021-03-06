class UsersController < Devise::RegistrationsController
  before_filter :authenticate_user!, only: [:index]

  def index
    unless user_signed_in?
      @user = User.new
      render :new, layout: "home_layout"
    else
      # unless params[:q].nil?
      #   params[:q][:profile_interested_in_age_end_lteq] = params[:q][:profile_interested_in_age_start_gteq]
      # end
      unless params[:q].nil?
        if params[:search_match_type] == "1"
          searcher_gender = current_user.profile.gender 
          searcher_age = current_user.profile.age
          params[:q][:profile_interested_in_gender_eq] = searcher_gender
          params[:q][:profile_interested_in_age_start_lteq] = searcher_age
          params[:q][:profile_interested_in_age_end_gteq] = searcher_age
        end
      end
      @search = User.where("role NOT IN (?)", "admin").where("users.id NOT IN (?)", current_user.id).search(params[:q])  # the bit between User and .search is written by Andrey to exclude admins and current users from search results. I think it should be properly done by scoping, but I can't figure out how.
      # @search = User.where("role NOT IN (?)", "admin").search(params[:q])
      @users = @search.result.includes(:profile)
    end
  end

  def search
    index
    render :index
  end

  # def create 
  #   super
  #   # make sure nested attributes for form are used
  #   @user.update_attributes(params[:user].merge(role: "basic_user"))
  # end

end