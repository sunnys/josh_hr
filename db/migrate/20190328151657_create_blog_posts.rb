class CreateBlogPosts < ActiveRecord::Migration[5.2]
  def change
    create_table :blog_posts do |t|
      t.string :title
      t.string :caption
      t.text :description
      t.string :photo

      t.timestamps
    end
  end
end
