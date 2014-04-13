class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.string :tittle
      t.string :text
      t.integer :group_id 
      t.integer :entities_id 
      t.timestamps
    end
  end
   def self.down
		drop_table :posts
	end
end
