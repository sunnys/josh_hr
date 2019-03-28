class ChangeColumnNameFromNotablePeople < ActiveRecord::Migration[5.2]
  def change
    rename_column :notable_people, :name, :person_name
  end
end
