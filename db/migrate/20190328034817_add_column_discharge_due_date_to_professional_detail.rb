class AddColumnDischargeDueDateToProfessionalDetail < ActiveRecord::Migration[5.2]
  def change
    add_column :professional_details, :discharge_due_date, :date
  end
end
