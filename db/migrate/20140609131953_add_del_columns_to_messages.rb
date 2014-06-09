class AddDelColumnsToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :remove_from_inbox, :boolean
    add_column :messages, :remove_from_sent, :boolean
  end
end
