class CreateProfessionalDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :professional_details do |t|
      t.string :army_no
      t.string :local_course
      t.string :pri_cadre
      t.string :army_course
      t.string :rules
      t.string :posting
      t.integer :user_id

      t.timestamps
    end
  end
end
