class CreateAbsenses < ActiveRecord::Migration[5.2]
  def change
    create_table :absenses do |t|
      t.date :date
      t.string :nature_of_casualty
      t.string :professional_detail_id

      t.timestamps
    end
  end
end
