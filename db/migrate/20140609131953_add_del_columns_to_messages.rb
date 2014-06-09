class AddDelColumnsToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :remove_from_inbox, :boolean, default: false
    add_column :messages, :remove_from_sent, :boolean, default: false
  end
end
