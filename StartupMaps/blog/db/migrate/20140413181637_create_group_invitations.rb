class CreateGroupInvitations < ActiveRecord::Migration
  def change
    create_table :group_invitations do |t|
      t.boolean :accept
			t.integer :receiver_id 
			t.integer :sender_id 
			t.integer :group_id 
      t.timestamps
    end
  end
  def self.down
		drop_table :group_invitations
	end
end
