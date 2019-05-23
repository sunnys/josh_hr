class AddColumnAutorityToRulePeriods < ActiveRecord::Migration[5.2]
  def change
    add_column :rule_periods, :authority, :string
  end
end
