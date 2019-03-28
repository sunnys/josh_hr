class CreateCommandingOfficers < ActiveRecord::Migration[5.2]
  def change
    create_table :commanding_officers do |t|
      t.integer :unit_id
      t.string :photo
      t.string :name
      t.string :designation

      t.timestamps
    end
  end
end
