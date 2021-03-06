class Profile < ActiveRecord::Base
  belongs_to :user
  attr_accessible :user_id,
                  :age,
                  :bio,
                  :children,
                  :city,
                  :current_occupation,
                  :gender,
                  :interested_in,
                  :interests,
                  :native_human_language,
                  :other_human_languages,
                  :programming_languages,
                  :relationship_status,
                  :user, 
                  :interested_in_gender, 
                  :interested_in_age_start, 
                  :interested_in_age_end

  has_many :views
  has_many :saved_profiles

  # after_update :update_user_role

  RELATIONSHIP_STATUS = ["Single", "In a relationship", "It's complicated", "In an open relationship", "Engaged", "In a civil union", "In a domestic partnership", "Married", "Divorced", "Widowed", "Separated"]
  PROFILE_STEPS = 18 # Profile attributes, plus image, excluding non user inputted fields

  # validates :age, presence: true, numericality: true
  # validates :children, numericality: true
  # validates :gender, presence: true
  # validates :interested_in, presence: true
  # validates :city, presence: true

  def update_user_role
    if user.present? && user.role != "admin"
      if user.image? && attributes.values.all? {|a| !a.blank?}
        user.update_attribute(:role, "premium_user")
      else
        user.update_attribute(:role, "basic_user")
      end
    end
  end

  def profile_progress
    if user.role == "admin"
      progress = Profile::PROFILE_STEPS
    else
      progress = 0
      if user.present? 
        attributes.values.each do |n|
          if n == nil || n == ""
            progress += 1
          end
        end
        unless user.image?
          progress +=1
        end
        progress
      end
    end
  end
  
  def latest_views # working method, which Michael says is rubbish, because it contains an ugly SQL statement; research how to do this with Active Record finders (when have time)
    View.find_by_sql "SELECT viewer_id, seen, MAX(created_at) as created_at FROM views WHERE profile_id = #{id} GROUP BY viewer_id, seen"
  end

  def latest_unseen_views_count # working method with an ugly SQL statement; research how to do this with Active Record finders (later)
    # results = View.find_by_sql("SELECT count(*) as record_count FROM views WHERE profile_id = #{id} and seen = false GROUP BY viewer_id, seen")
    views.where(seen: false).count(:viewer_id, distinct: true)
  end

end
