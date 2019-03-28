class CreateUnitGalleries < ActiveRecord::Migration[5.2]
  def change
    create_table :unit_galleries do |t|
      t.integer :unit_id
      t.string :photo
      t.string :caption

      t.timestamps
    end
  end
end
