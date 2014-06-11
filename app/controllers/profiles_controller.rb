class ProfilesController < ApplicationController
  # GET /profiles
  # GET /profiles.json
  def index
    @profiles = Profile.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @profiles }
    end
  end

  # GET /profiles/1
  # GET /profiles/1.json
  def show
    @user = if params[:user_id]
      User.find(params[:user_id])
    else
      current_user
    end

    @profile = @user.profile

    #here is code for creating a "view" event in the Views table
    unless current_user.id == @user.id
      @view = View.new
      @view.profile_id = @profile.user_id
      @view.viewer_id = current_user.id
      @view.save
    end
    #end of code relating to the view

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @profile }
    end
  end

  # # GET /profiles/new
  # # GET /profiles/new.json
  # def new
  #   @profile = Profile.new

  #   respond_to do |format|
  #     format.html # new.html.erb
  #     format.json { render json: @profile }
  #   end
  # end

  # GET /profiles/1/edit
  def edit
    @user = current_user
    @profile = @user.profile
  end

  # POST /profiles
  # POST /profiles.json
  def create
    @profile = Profile.new(params[:profile])

    respond_to do |format|
      if @profile.save
        format.html { redirect_to @profile, notice: 'Profile was successfully created.' }
        format.json { render json: @profile, status: :created, location: @profile }
      else
        format.html { render action: "new" }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /profiles/1
  # PUT /profiles/1.json
  def update
    @profile = Profile.find(params[:id])

    respond_to do |format|
      if @profile.update_attributes(params[:profile])
        format.html { redirect_to @profile, notice: 'Profile was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profiles/1
  # DELETE /profiles/1.json
  def destroy
    @profile = Profile.find(params[:id])
    @profile.destroy

    respond_to do |format|
      format.html { redirect_to profiles_url }
      format.json { head :no_content }
    end
  end

  def views
    @profile = current_user.try(:profile)
    @views = @profile.latest_views
    unseen_ids = @views.select { |v| !v.seen }.map(&:id)
    if unseen_ids.any?
      View.where(id: unseen_ids).update_all(seen: true)
    end
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @views }
    end
  end

end
