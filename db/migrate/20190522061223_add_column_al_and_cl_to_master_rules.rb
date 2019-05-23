class AddColumnAlAndClToMasterRules < ActiveRecord::Migration[5.2]
  def change
    add_column :master_rules, :al, :integer
    add_column :master_rules, :cl, :integer
  end
end
