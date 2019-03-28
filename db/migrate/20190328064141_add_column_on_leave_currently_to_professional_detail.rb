class AddColumnOnLeaveCurrentlyToProfessionalDetail < ActiveRecord::Migration[5.2]
  def change
    add_column :professional_details, :on_leave_currently, :boolean
    add_column :professional_details, :on_field_currently, :boolean
  end
end
