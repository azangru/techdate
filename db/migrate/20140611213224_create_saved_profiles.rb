class CreateSavedProfiles < ActiveRecord::Migration
  def change
    create_table :saved_profiles do |t|
      t.integer :saver_id
      t.integer :profile_id

      t.timestamps
    end
    add_index :saved_profiles, :saver_id
    add_index :saved_profiles, :profile_id
  end
end
