class ChangeInterestedInColumnsToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :interested_in_gender, :string
    add_column :profiles, :interested_in_age_start, :integer
    add_column :profiles, :interested_in_age_end, :integer
    remove_column :users, :interested_in_gender
    remove_column :users, :interested_in_age_start
    remove_column :users, :interested_in_age_end
  end
end
