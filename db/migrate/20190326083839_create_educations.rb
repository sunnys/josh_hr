class CreateEducations < ActiveRecord::Migration[5.2]
  def change
    create_table :educations do |t|
      t.string :degree_name
      t.date :from
      t.date :to
      t.string :institute_name
      t.string :degree_type
      t.integer :personal_detail_id
      t.timestamps
    end
  end
end
