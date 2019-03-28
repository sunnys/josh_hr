class ChangeColumnNameFromBattleHonor < ActiveRecord::Migration[5.2]
  def change
    rename_column :battle_honors, :name, :title
  end
end
