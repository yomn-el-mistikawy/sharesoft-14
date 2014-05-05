class CreateEntityStatuses < ActiveRecord::Migration
  def change
    create_table :entity_statuses do |t|
      t.string :status
      t.belongs_to :entity
      t.timestamps
    end
  end
end
