class AddColumnUnitLogoToUnit < ActiveRecord::Migration[5.2]
  def change
    add_column :units, :unit_logo, :string
  end
end
