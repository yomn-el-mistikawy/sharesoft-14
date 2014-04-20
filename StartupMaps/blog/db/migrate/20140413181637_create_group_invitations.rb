class CreateGroupInvitations < ActiveRecord::Migration
  def change
    create_table :group_invitations do |t|
			t.belongs_to :receiver
			t.references :sender
			t.references :group
      t.timestamps
    end
  end
  def self.down
		drop_table :group_invitations
	end
end
