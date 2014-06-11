class Profile < ActiveRecord::Base
  belongs_to :user
  attr_accessible :user_id, :age, :bio, :children, :city, :current_occupation, :gender, :interested_in, :interests, :native_human_language, :other_human_languages, :programming_languages, :relationship_status, :user

  has_many :views

  RELATIONSHIP_STATUS = ["Single", "In a relationship", "It's complicated", "In an open relationship", "Engaged", "In a civil union", "In a domestic partnership", "Married", "Divorced", "Widowed", "Separated"]

  # validates :age, presence: true, numericality: true
  # validates :children, numericality: true
  # validates :gender, presence: true
  # validates :interested_in, presence: true
  # validates :city, presence: true

  def latest_views(profile_id)
    View.find_by_sql "SELECT viewer_id, seen, MAX(created_at) as created_at FROM views WHERE profile_id = #{profile_id} GROUP BY viewer_id, seen"
    #ActiveRecord::Base.connection.execute(query)
    # views.where("created_at > ?", 30.days.ago) #.group_by(&:viewer_id).values #.order('created_at DESC')
  end

  def unseen_view_count
    views.where(seen: false).count
  end

end
