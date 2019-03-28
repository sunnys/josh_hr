class CreateHierarchies < ActiveRecord::Migration[5.2]
  def change
    create_table :hierarchies do |t|
      t.integer :user_id
      t.integer :ro_id

      t.timestamps
    end
  end
end
