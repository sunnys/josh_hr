class CreateInvestments < ActiveRecord::Migration[5.2]
  def change
    create_table :investments do |t|
      t.string :investment_type
      t.float :amount
      t.float :premium
      t.integer :period
      t.date :date_of_maturity
      t.integer :personal_detail_id

      t.timestamps
    end
  end
end
