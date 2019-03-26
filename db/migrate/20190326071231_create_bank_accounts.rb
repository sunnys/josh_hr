class CreateBankAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :bank_accounts do |t|
      t.string :single_bank_account
      t.string :joint_acount_no
      t.string :ifsc_code
      t.string :micr_no
      t.string :bank_code
      t.integer :personel_detail_id

      t.timestamps
    end
  end
end
