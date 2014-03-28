class CreateWorkstatusEntities < ActiveRecord::Migration
  def change
    create_table :workstatus_entities do |t|
      t.integer :entity_id
      t.string :workstatus

      t.timestamps
    end
  end
end
