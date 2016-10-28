class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
		t.text 			:comment_post
    	t.integer		:user_id
    	t.integer		:post_id
      	t.timestamps	:created_at
    end
  end
end
