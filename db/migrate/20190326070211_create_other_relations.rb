class CreateOtherRelations < ActiveRecord::Migration[5.2]
  def change
    create_table :other_relations do |t|

      t.timestamps
    end
  end
end
