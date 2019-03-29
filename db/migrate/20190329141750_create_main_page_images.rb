class CreateMainPageImages < ActiveRecord::Migration[5.2]
  def change
    create_table :main_page_images do |t|
      t.string :pic1
      t.string :pic2

      t.timestamps
    end
  end
end
