class CreateEntityVideoLinks < ActiveRecord::Migration
  def change
    create_table :entity_video_links do |t|
      t.string :url
	    t.belongs_to :entity
      t.timestamps
    end
  end
end
