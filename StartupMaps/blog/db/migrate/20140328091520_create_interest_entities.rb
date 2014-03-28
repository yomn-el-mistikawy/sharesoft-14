class CreateInterestEntities < ActiveRecord::Migration
  def change
    create_table :interest_entities do |t|
      t.integer :entity_id
      t.String :interest

      t.timestamps
    end
  end
end
