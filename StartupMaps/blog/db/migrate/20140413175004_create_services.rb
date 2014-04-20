class CreateServices < ActiveRecord::Migration
	def self.up
		create_table :services do |t|
			t.float :longitude
			t.float :latitude 
			t.belongs_to :entity
			t.string :name
      t.string :sector
      t.string :location
      t.timestamps
		end
	end
		def self.down
		 drop_table :services
		end
end
