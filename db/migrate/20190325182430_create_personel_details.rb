class CreatePersonelDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :personel_details do |t|
      t.string :army_no
      t.string :father_name
      t.string :rank
      t.string :appointment
      t.string :name
      t.string :religion
      t.string :main_class
      t.string :sub_class
      t.string :med_cat
      t.string :mothertongue
      t.date :date_of_enrolment
      t.date :date_of_birth
      t.float :age_on_enrolment
      t.string :attestation
      t.date :date_of_attestation
      t.string :driving_license_no
      t.string :mobile_no
      t.string :adhar_no
      t.string :pancard_no
      t.string :email
      t.string :photo
      t.string :family_photo
      t.integer :user_id, foreign_key: true
      t.timestamps
    end
  end
end
