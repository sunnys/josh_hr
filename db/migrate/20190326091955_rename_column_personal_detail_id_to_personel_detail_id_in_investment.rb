class RenameColumnPersonalDetailIdToPersonelDetailIdInInvestment < ActiveRecord::Migration[5.2]
  def change
    rename_column :investments, :personal_detail_id, :personel_detail_id
    rename_column :educations, :personal_detail_id, :personel_detail_id
  end
end
