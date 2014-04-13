class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.string :comment
      t.integer :entities_id 
      t.integer :post_id 
      t.timestamps
    end
  end
  def self.down
		drop_table :comments
	end
end
