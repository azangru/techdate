class RemoveInterestedInFromProfiles < ActiveRecord::Migration
  def change
    remove_column :profiles, :interested_in
  end
end
