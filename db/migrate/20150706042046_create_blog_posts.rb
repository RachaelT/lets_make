class CreateBlogPosts < ActiveRecord::Migration
  def change
    create_table :blog_posts do |t|
      t.text :body
      t.string :title
      t.references :user, index: true

      t.timestamps
    end
  end
end
