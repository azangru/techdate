class Message < ActiveRecord::Base
  attr_accessible :body, :read, :recipient_id, :sender_id, :title

  belongs_to :sender, class_name: "User"
  belongs_to :recipient, class_name: "User"

  validates :title, presence: true
  validates :body, presence: true

end
