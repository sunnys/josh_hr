class CreateMasterRules < ActiveRecord::Migration[5.2]
  def change
    create_table :master_rules do |t|
      t.string :rule
      t.integer :period

      t.timestamps
    end
  end
end
