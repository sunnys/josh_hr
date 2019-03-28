class CreateChampions < ActiveRecord::Migration[5.2]
  def change
    create_table :champions do |t|
      t.integer :unit_id
      t.string :champ_name
      t.string :photo
      t.text :description

      t.timestamps
    end
  end
end
