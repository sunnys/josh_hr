class CreateRulePeriods < ActiveRecord::Migration[5.2]
  def change
    create_table :rule_periods do |t|
      t.date :from
      t.date :to
      t.string :rule
      t.boolean :embodied
      t.boolean :disembodied
      t.integer :total_embodied_day
      t.integer :total_disembodied_day
      t.integer :professional_detail_id

      t.timestamps
    end
  end
end
