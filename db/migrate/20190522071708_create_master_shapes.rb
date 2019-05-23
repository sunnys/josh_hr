class CreateMasterShapes < ActiveRecord::Migration[5.2]
  def change
    create_table :master_shapes do |t|
      t.string :title

      t.timestamps
    end
  end
end
