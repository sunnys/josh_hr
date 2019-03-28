class CreateMainGalaries < ActiveRecord::Migration[5.2]
  def change
    create_table :main_galaries do |t|
      t.string :title
      t.string :caption
      t.string :photo

      t.timestamps
    end
  end
end
