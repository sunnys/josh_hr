class CreateRankMasters < ActiveRecord::Migration[5.2]
  def change
    create_table :rank_masters do |t|
      t.string :name
      t.integer :level

      t.timestamps
    end
  end
end
