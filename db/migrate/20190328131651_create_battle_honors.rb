class CreateBattleHonors < ActiveRecord::Migration[5.2]
  def change
    create_table :battle_honors do |t|
      t.integer :unit_id
      t.string :photo
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
