class CreateEntityGoals < ActiveRecord::Migration
  def change
    create_table :entity_goals do |t|
      t.string :goals
		t.belongs_to :entity
      t.timestamps
    end
  end
end
