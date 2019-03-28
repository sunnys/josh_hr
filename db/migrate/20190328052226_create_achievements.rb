class CreateAchievements < ActiveRecord::Migration[5.2]
  def change
    create_table :achievements do |t|
      t.integer :personel_detail_id
      t.string :category
      t.string :title
      t.text :description
      t.string :level

      t.timestamps
    end
  end
end
