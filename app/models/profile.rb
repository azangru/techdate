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

  def latest_views # working method, which Michael says is rubbish, because it contains an ugly SQL statement; research how to do this with Active Record finders (when have time)
    View.find_by_sql "SELECT viewer_id, seen, MAX(created_at) as created_at FROM views WHERE profile_id = #{id} GROUP BY viewer_id, seen"
  end

  def latest_unseen_views_count # working method with an ugly SQL statement; research how to do this with Active Record finders (later)
    results = View.find_by_sql("SELECT count(*) as record_count FROM views WHERE profile_id = #{id} and seen = false GROUP BY viewer_id, seen")
    results.first.try(:record_count).to_i
  end



end
