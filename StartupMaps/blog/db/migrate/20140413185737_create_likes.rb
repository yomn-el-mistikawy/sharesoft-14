class CreateLikes < ActiveRecord::Migration
  def self.up
    create_table :likes do |t|
    	t.belongs_to :post
    	t.belongs_to :comment
      t.timestamps
    end
  end
  def self.down
		drop_table :likes
	end
end
