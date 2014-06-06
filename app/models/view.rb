class View < ActiveRecord::Base
  attr_accessible :profile_id, :viewer_id

  belongs_to :viewer, class_name: "User", foreign_key: "viewer_id"
  belongs_to :profile

end
