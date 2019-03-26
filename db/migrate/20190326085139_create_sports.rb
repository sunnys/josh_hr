class CreateSports < ActiveRecord::Migration[5.2]
  def change
    create_table :sports do |t|
      t.string :sport_name
      t.string :level
      t.date :from
      t.date :to
      t.boolean :playing_currently
      t.boolean :represented_country
      t.integer :personel_detail_id

      t.timestamps
    end
  end
end
