class AddColumnAlAndClToLeaveRecords < ActiveRecord::Migration[5.2]
  def change
    add_column :leave_records, :al, :boolean
    add_column :leave_records, :cl, :boolean
  end
end
