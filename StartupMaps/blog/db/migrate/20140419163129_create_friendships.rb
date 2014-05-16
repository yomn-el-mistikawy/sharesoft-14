class CreateFriendships < ActiveRecord::Migration
  def change
    create_table :friendships do |t|
      t.string :sender
      t.string :receiver
      t.boolean :response
      t.timestamps
    end
  end
end
