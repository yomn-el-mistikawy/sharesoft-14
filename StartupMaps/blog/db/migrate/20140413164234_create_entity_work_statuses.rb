class CreateEntityWorkStatuses < ActiveRecord::Migration
  def self.up
    create_table :entity_work_statuses do |t|
      t.string :workstatus
			t.integer :entities_id
      t.timestamps
   end
  end
  def self.down
    drop_table :entity_work_statuses
  end
end
