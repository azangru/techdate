class SavedProfilesController < ApplicationController
  # GET /saved_profiles
  # GET /saved_profiles.json
  def index
    @saved_profiles = SavedProfile.where(saver_id: current_user.id)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @saved_profiles }
    end
  end

  # POST /saved_profiles
  # POST /saved_profiles.json
  def create
    @saved_profile = SavedProfile.new
    @profile = Profile.find(user_id = params[:user_id])
    @saved_profile.profile_id = @profile.id
    @saved_profile.saver_id = current_user.id

    respond_to do |format|
      if @saved_profile.save
        format.html { redirect_to show_user_profile_path(@profile), notice: 'Saved profile was successfully created.' }
        format.json { render json: @saved_profile, status: :created, location: @saved_profile }
      end
    end
  end

  # DELETE /saved_profiles/1
  # DELETE /saved_profiles/1.json
  def destroy
    @saved_profile = SavedProfile.find(params[:id])
    @saved_profile.destroy

    respond_to do |format|
      format.html { redirect_to saved_profiles_url }
      format.json { head :no_content }
    end
  end
end




#####AUTO-GENERATED METHODS THAT I SHOULDN'T NEED#######

  # # GET /saved_profiles/1
  # # GET /saved_profiles/1.json
  # def show
  #   @saved_profile = SavedProfile.find(params[:id])

  #   respond_to do |format|
  #     format.html # show.html.erb
  #     format.json { render json: @saved_profile }
  #   end
  # end

  # # GET /saved_profiles/new
  # # GET /saved_profiles/new.json
  # def new
  #   @saved_profile = SavedProfile.new

  #   respond_to do |format|
  #     format.html # new.html.erb
  #     format.json { render json: @saved_profile }
  #   end
  # end

  # # GET /saved_profiles/1/edit
  # def edit
  #   @saved_profile = SavedProfile.find(params[:id])
  # end

  # # PUT /saved_profiles/1
  # # PUT /saved_profiles/1.json
  # def update
  #   @saved_profile = SavedProfile.find(params[:id])

  #   respond_to do |format|
  #     if @saved_profile.update_attributes(params[:saved_profile])
  #       format.html { redirect_to @saved_profile, notice: 'Saved profile was successfully updated.' }
  #       format.json { head :no_content }
  #     else
  #       format.html { render action: "edit" }
  #       format.json { render json: @saved_profile.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

#######################################################
