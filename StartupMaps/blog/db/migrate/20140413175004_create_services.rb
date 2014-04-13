class CreateServices < ActiveRecord::Migration
	def self.up
		create_table :services do |t|
			t.float :longitude
			t.float :latitude 
			t.integer :entities_id 
			t.timestamps
		end
	end
		def self.down
				drop_table :services
		end
end
