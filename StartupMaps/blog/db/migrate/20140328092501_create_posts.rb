class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :group_id
      t.datetime :date
      t.integer :numofLikes
      t.integer :numofComments

      t.timestamps
    end
  end
end
