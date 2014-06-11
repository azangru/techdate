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
    binding.pry
    # make sure nested attributes for form are used
    @user.update_attributes(params[:user].merge(role: "free_user"))
  end

end