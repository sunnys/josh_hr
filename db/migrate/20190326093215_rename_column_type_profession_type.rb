class RenameColumnTypeProfessionType < ActiveRecord::Migration[5.2]
  def change
    rename_column :professional_training_and_courses, :type, :profession_type
  end
end
