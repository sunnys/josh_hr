class AddColumnReturnedOnDateToLeaveRecords < ActiveRecord::Migration[5.2]
  def change
    add_column :leave_records, :not_returned_on_date, :boolean
  end
end
