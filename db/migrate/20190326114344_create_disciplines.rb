class CreateDisciplines < ActiveRecord::Migration[5.2]
  def change
    create_table :disciplines do |t|
      t.string :place
      t.date :date_of_offence
      t.string :rank
      t.text :offence
      t.boolean :punishment_awarded
      t.date :date_of_award_of_order
      t.integer :professional_detail_id

      t.timestamps
    end
  end
end
