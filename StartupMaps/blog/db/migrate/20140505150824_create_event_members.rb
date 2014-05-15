class CreateEventMembers < ActiveRecord::Migration
  def change
    create_table :event_members do |t|
      t.belongs_to :receiver
      t.references :sender
      t.references :event
      t.timestamps
    end
  end
  def self.down
    drop_table :event_members
  end
end
