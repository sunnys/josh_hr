class AddColumnTradeToPersonelDetail < ActiveRecord::Migration[5.2]
  def change
    add_column :personel_details, :trade, :string
  end
end
