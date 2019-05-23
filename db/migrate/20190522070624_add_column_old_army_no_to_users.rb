class AddColumnOldArmyNoToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :old_army_no, :string
  end
end
