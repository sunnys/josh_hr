class AddColumnReportingOfficerArmyNoToProfessionalDetail < ActiveRecord::Migration[5.2]
  def change
    add_column :professional_details, :reporting_officer_army_no, :string
  end
end
