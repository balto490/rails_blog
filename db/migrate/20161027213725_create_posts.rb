class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string 		:title
      t.text		:blog_post
      t.integer		:user_id
      t.timestamps	:created_at
    end
  end
end
