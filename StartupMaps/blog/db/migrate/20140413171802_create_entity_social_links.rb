class CreateEntitySocialLinks < ActiveRecord::Migration
	def self.up
		create_table :entity_social_links do |t|
			t.string :socialLinks
			t.integer :entities_id
			t.timestamps
		end
	end
	def self.down
		drop_table :entity_social_links
	end
end
