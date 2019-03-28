class CreateFaqs < ActiveRecord::Migration[5.2]
  def change
    create_table :faqs do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
