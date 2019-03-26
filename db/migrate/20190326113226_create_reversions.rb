class CreateReversions < ActiveRecord::Migration[5.2]
  def change
    create_table :reversions do |t|

      t.timestamps
    end
  end
end
