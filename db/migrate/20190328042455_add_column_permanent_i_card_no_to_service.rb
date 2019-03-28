class AddColumnPermanentICardNoToService < ActiveRecord::Migration[5.2]
  def change
    add_column :services, :permanent_i_card_no, :string
    add_column :services, :temp_i_card_no, :string
  end
end
