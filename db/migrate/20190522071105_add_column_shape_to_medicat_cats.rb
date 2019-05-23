class AddColumnShapeToMedicatCats < ActiveRecord::Migration[5.2]
  def change
    add_column :medical_cats, :shape, :string
  end
end
