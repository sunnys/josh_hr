class AddColumnArmyNoToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :army_no, :string
    add_index :users, :army_no
  end
end
