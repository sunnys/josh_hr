class CreateNotablePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :notable_people do |t|
      t.integer :unit_id
      t.string :photo
      t.string :name
      t.text :description
      t.string :army_no

      t.timestamps
    end
  end
end
