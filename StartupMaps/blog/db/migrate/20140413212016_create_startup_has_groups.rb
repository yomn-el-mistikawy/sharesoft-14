class CreateStartupHasGroups < ActiveRecord::Migration
  def change
    create_table :startup_has_groups do |t|
      t.integer :startupID
      t.integer :groupID

      t.timestamps
    end
  end
end
