class BlogPosts < ActiveRecord::Migration[5.1]
  def change
    create_table :blog_posts do |t|
      t.string :title, null: false
      t.string :summary, null: false
      t.text :content
      t.integer :user_id
      t.string :title_image_url

      t.timestamps
    end
  end
end
