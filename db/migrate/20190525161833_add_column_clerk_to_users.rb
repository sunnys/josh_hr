class AddColumnClerkToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :clerk, :boolean
    add_column :users, :officer, :boolean
  end
end
