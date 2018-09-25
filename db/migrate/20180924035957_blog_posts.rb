class BlogPosts < ActiveRecord::Migration[5.1]
  def change
    create_table :blog_posts do |t|
      t.string :title, null: false
      t.string :summary, null: false
      t.text :content
      t.string :title_image_url

      t.timestamps
    end
    add_column :blog_posts, :user_id, :integer, null: true
    add_foreign_key :blog_posts, :users, column: :user_id
    add_index :blog_posts, :user_id
  end
end
