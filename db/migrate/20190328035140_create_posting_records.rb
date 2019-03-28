class CreatePostingRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :posting_records do |t|
      t.date :from
      t.date :to
      t.boolean :peace_duty
      t.boolean :field_dduty
      t.integer :total_peace_duty_day
      t.integer :total_field_duty_day
      t.integer :professional_detail_id

      t.timestamps
    end
  end
end
