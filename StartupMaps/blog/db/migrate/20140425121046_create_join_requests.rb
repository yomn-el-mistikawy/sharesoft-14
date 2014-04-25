class CreateJoinRequests < ActiveRecord::Migration
  def change
    create_table :join_requests do |t|
    	    t.belongs_to :sender
      t.belongs_to :group
      t.timestamps
    end
  end
end
