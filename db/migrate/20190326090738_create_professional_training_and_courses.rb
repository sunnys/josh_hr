class CreateProfessionalTrainingAndCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :professional_training_and_courses do |t|
      t.string :name
      t.string :type
      t.date :from
      t.date :to
      t.integer :personel_detail_id

      t.timestamps
    end
  end
end
