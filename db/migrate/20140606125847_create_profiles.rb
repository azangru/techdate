class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.references :user
      t.text :bio
      t.integer :age
      t.string :gender
      t.string :interested_in
      t.string :city
      t.string :current_occupation
      t.string :programming_languages
      t.string :native_human_language
      t.string :other_human_languages
      t.text :interests
      t.string :relationship_status
      t.integer :children

      t.timestamps
    end
    add_index :profiles, :user_id
  end
end
