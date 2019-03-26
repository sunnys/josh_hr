class CreateFamilyDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :family_details do |t|
      t.string :type, null: false
      t.string :name
      t.string :relation_type
      t.text :address
      t.string :phone_number
      t.date :date_of_birth
      t.integer :personel_detail_id
      t.string :photo
      t.timestamps
    end
  end
end
