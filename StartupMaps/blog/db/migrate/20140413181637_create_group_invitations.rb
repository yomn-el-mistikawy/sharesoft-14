class CreateGroupInvitations < ActiveRecord::Migration
  def change
    create_table :group_invitations do |t|
			t.belongs_to :receiver
			t.belongs_to :sender
			t.belongs_to :group
      t.timestamps
    end
  end
  def self.down
		drop_table :group_invitations
	end
end
