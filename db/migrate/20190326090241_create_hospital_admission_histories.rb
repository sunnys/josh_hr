class CreateHospitalAdmissionHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :hospital_admission_histories do |t|
      t.date :date
      t.datetime :time
      t.string :nature_of_casuality
      t.string :name_of_hospital
      t.date :date_of_discharge
      t.boolean :transferred
      t.integer :medical_cat_id

      t.timestamps
    end
  end
end
