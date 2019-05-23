class CreateServiceParticulars < ActiveRecord::Migration[5.2]
  def change
    create_table :service_particulars do |t|
      t.integer :professional_detail_id
      t.date :date_from
      t.date :date_to
      t.string :type_of_service
      t.integer :days
      t.string :autority

      t.timestamps
    end
  end
end
