class RenameColumnPersonelDetailIdToProfesssionalDetailIdToMedicalCat < ActiveRecord::Migration[5.2]
  def change
    rename_column :medical_cats, :personel_detail_id, :professional_detail_id
  end
end
