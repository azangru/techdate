class SavedProfile < ActiveRecord::Base
  attr_accessible :profile_id, :saver_id

  belongs_to :saver, class_name: "User"
  belongs_to :profile
end
