module ProfilesHelper

  def interested_in(profile)
    if profile.interested_in_gender == "male"
      "men"
    else
      "women"
    end
  end
  
end
