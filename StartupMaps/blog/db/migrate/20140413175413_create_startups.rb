class CreateStartups < ActiveRecord::Migration
  def self.up
    create_table :startups do |t|
      t.float :longitude
      t.float :latitude
      t.string :initiatior_name
      t.integer :milestones
			t.integer :entities_id
      t.timestamps
    end
  end
  	def self.down
				drop_table :startups
		end
end
