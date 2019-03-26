class CreateHomeAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :home_addresses do |t|
      t.integer :personel_detail_id
      t.integer :house_no
      t.string :street
      t.string :town
      t.string :post_office
      t.float :to_and_distance_from
      t.string :police_station
      t.string :tehsil
      t.string :district
      t.string :state
      t.string :nrs_and_distance_from_home

      t.timestamps
    end
  end
end
