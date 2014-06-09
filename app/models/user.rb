class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :lockable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :timeoutable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :last_name, :image, :paid, :role, :remote_image_url, :interested_in_gender, :interested_in_age_start, :interested_in_age_end
  # attr_accessible :title, :body

  has_one :profile
  has_many :views, foreign_key: 'viewer_id'
  has_many :sent_messages, class_name: "Message", foreign_key: 'sender_id'
  has_many :received_messages, class_name: "Message", foreign_key: 'recipient_id'

  mount_uploader :image, ImageUploader

  validates :first_name, presence: true
  validates :last_name, presence: true


######### FOR BUILDING A PROFILE ###########

  after_create :build_profile

  def build_profile
    Profile.create(user: self)
  end
############################################

  def full_name
    [first_name, last_name].join(" ")
  end

  def self.recreate_versions!
  User.find_in_batches do |batch|
    batch.each do |user|
      user.image.recreate_versions! if user.image?
      end
    end
  end

end
