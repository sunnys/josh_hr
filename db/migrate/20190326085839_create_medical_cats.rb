class CreateMedicalCats < ActiveRecord::Migration[5.2]
  def change
    create_table :medical_cats do |t|
      t.date :date
      t.string :nature_of_emergency
      t.boolean :permanent
      t.integer :period_year
      t.integer :period_month
      t.boolean :hospitalized
      t.integer :personel_detail_id

      t.timestamps
    end
  end
end
