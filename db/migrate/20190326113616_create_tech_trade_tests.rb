class CreateTechTradeTests < ActiveRecord::Migration[5.2]
  def change
    create_table :tech_trade_tests do |t|
      t.string :hindi
      t.string :mr
      t.string :grade
      t.date :date
      t.integer :promotion_id

      t.timestamps
    end
  end
end
