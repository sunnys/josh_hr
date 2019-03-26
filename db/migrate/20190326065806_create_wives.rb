class CreateWives < ActiveRecord::Migration[5.2]
  def change
    create_table :wives do |t|
      t.date :date_of_marriage
      t.boolean :status

      t.timestamps
    end
  end
end
