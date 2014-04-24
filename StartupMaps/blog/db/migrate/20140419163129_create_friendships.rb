class CreateFriendships < ActiveRecord::Migration
  def change
    create_table :friendships do |t|
      t.belongs_to :sender_id
      t.belongs_to :receiver_id
      t.timestamps
    end
  end
end
