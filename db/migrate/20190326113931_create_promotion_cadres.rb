class CreatePromotionCadres < ActiveRecord::Migration[5.2]
  def change
    create_table :promotion_cadres do |t|
      t.string :rank
      t.date :date
      t.integer :promotion_id

      t.timestamps
    end
  end
end
