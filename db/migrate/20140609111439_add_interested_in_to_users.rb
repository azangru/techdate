class AddInterestedInToUsers < ActiveRecord::Migration
  def change
    add_column :users, :interested_in_gender, :string
    add_column :users, :interested_in_age_start, :integer
    add_column :users, :interested_in_age_end, :integer
  end
end
