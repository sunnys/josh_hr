class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.string :type, null: false
      t.string :rank
      t.string :appointment
      t.date :date
      t.boolean :promoted
      t.integer :professional_detail_id

      t.timestamps
    end
  end
end
