class Profile < ActiveRecord::Base
  belongs_to :user
  attr_accessible :user_id, :age, :bio, :children, :city, :current_occupation, :gender, :interested_in, :interests, :native_human_language, :other_human_languages, :programming_languages, :relationship_status, :user

  has_many :views

  # validates :age, presence: true, numericality: true
  # validates :children, numericality: true
  # validates :gender, presence: true
  # validates :interested_in, presence: true
  # validates :city, presence: true

end
