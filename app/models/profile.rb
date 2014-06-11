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

  RELATIONSHIP_STATUS = ["Single", "In a relationship", "It's complicated", "In an open relationship", "Engaged", "In a civil union", "In a domestic partnership", "Married", "Divorced", "Widowed", "Separated"]

  # validates :age, presence: true, numericality: true
  # validates :children, numericality: true
  # validates :gender, presence: true
  # validates :interested_in, presence: true
  # validates :city, presence: true

  def latest_views
    views.where("created_at > ?", 30.days.ago).order('created_at DESC')
  end

  def unseen_view_count
    views.where(seen: false).count
  end

end
