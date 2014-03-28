class CreateSocialLinkEntities < ActiveRecord::Migration
  def change
    create_table :social_link_entities do |t|
      t.integer :entity_id
      t.String :social_media_link

      t.timestamps
    end
  end
end
