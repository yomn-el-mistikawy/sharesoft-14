class CreateGroupMembers < ActiveRecord::Migration
  def change
    create_table :group_members do |t|
      t.integer :enity_id
      t.datetime :dateJoined
      t.boolean :groupCreator

      t.timestamps
    end
  end
end
