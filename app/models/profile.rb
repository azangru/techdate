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

  after_update :update_user_role

  RELATIONSHIP_STATUS = ["Single", "In a relationship", "It's complicated", "In an open relationship", "Engaged", "In a civil union", "In a domestic partnership", "Married", "Divorced", "Widowed", "Separated"]
  PROFILE_STEPS = 13 # Profile attributes, plus image, excluding non user inputted fields

  # validates :age, presence: true, numericality: true
  # validates :children, numericality: true
  # validates :gender, presence: true
  # validates :interested_in, presence: true
  # validates :city, presence: true

  def update_user_role
    if user.present? && user.role != "admin"
      role = attributes.values.any? {|a|a.blank?}? "basic_user" : "premium_user"
      user.update_attribute(:role, role)
    end
  end

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
      progress = []
      if user.present? 
        attributes.values.each do |n|
          if n == nil || ""
            progress << 1
          end
        end
        progress = progress.reduce(:+)
        if user.image?
          progress +=1
        end
        progress -= 6 # removing non-user filled in profile steps
      end
    end
  end
  
  def latest_views # working method, which Michael says is rubbish, because it contains an ugly SQL statement; research how to do this with Active Record finders (when have time)
    View.find_by_sql "SELECT viewer_id, seen, MAX(created_at) as created_at FROM views WHERE profile_id = #{id} GROUP BY viewer_id, seen"
  end

  def latest_unseen_views_count # working method with an ugly SQL statement; research how to do this with Active Record finders (later)
    results = View.find_by_sql("SELECT count(*) as record_count FROM views WHERE profile_id = #{id} and seen = false GROUP BY viewer_id, seen")
    results.first.try(:record_count).to_i
  end


end
