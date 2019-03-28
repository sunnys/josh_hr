class CreateLeaveRecord < ActiveRecord::Migration[5.2]
  def change
    create_table :leave_records do |t|
      t.string :type_of_leave
      t.datetime :from
      t.datetime :to
      t.integer :total_no_of_days
      t.date :date_of_rejoining
      t.integer :professional_detail_id

      t.timestamps
    end
  end
end
