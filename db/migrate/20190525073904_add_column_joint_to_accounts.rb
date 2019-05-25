class AddColumnJointToAccounts < ActiveRecord::Migration[5.2]
  def change
    remove_column :bank_accounts, :single_bank_account
    remove_column :bank_accounts, :joint_acount_no
    add_column :bank_accounts, :joint, :boolean
    add_column :bank_accounts, :account_number, :string
  end
end
