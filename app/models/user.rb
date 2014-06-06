class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :lockable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :timeoutable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :last_name, :image, :paid
  # attr_accessible :title, :body

  has_one :profile
  has_many :views, foreign_key: 'viewer_id'
  has_many :sent_messages, class_name: "Message", foreign_key: 'sender_id'
  has_many :received_messages, class_name: "Message", foreign_key: 'recipient_id'

end
