class CreateKids < ActiveRecord::Migration[5.2]
  def change
    create_table :kids do |t|
      t.string :sex
      t.date :place_of_birth

      t.timestamps
    end
  end
end
