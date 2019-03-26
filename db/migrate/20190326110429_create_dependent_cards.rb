class CreateDependentCards < ActiveRecord::Migration[5.2]
  def change
    create_table :dependent_cards do |t|
      t.string :name_of_dependent
      t.string :dependent_type
      t.date :date_of_birth
      t.date :date_of_issue
      t.integer :personel_detail_id

      t.timestamps
    end
  end
end
