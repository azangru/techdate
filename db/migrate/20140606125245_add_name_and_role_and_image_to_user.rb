class AddNameAndRoleAndImageToUser < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :role, :string, default: "basic_user"
    add_column :users, :image, :string
    add_column :users, :paid, :boolean
  end
end
