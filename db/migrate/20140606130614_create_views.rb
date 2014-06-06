class CreateViews < ActiveRecord::Migration
  def change
    create_table :views do |t|
      t.integer :viewer_id
      t.integer :profile_id

      t.timestamps
    end
    add_index :views, :viewer_id
    add_index :views, :profile_id
  end
end
