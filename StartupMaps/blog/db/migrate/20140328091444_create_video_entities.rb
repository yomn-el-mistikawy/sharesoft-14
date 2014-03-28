class CreateVideoEntities < ActiveRecord::Migration
  def change
    create_table :video_entities do |t|
      t.integer :entity_id
      t.String :link

      t.timestamps
    end
  end
end
