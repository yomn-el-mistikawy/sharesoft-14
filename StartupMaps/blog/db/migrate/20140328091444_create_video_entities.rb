class CreateVideoEntities < ActiveRecord::Migration
  def change
    create_table :video_entities do |t|
      t.integer :entity_id
      t.string :link

      t.timestamps
    end
  end
end
