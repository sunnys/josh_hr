class CreateLoans < ActiveRecord::Migration[5.2]
  def change
    create_table :loans do |t|
      t.string :loan_type
      t.float :amount
      t.float :emi
      t.integer :duration
      t.date :loan_sanction_date
      t.integer :personel_detail_id

      t.timestamps
    end
  end
end
