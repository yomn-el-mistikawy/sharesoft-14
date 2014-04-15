class CreateStartups < ActiveRecord::Migration
  def self.up
    create_table :startups do |t|
      t.float :longitude
      t.float :latitude
      t.string :initiatior_name
      t.integer :milestones
			t.belongs_to :entity
      t.string :location
      t.string :name
      t.boolean :online_status
      t.boolean :launch_status
      t.string :joint_ventures
      t.string :sector
      t.integer :number_of_working_years
      t.timestamps
    end
  end
  	def self.down
				drop_table :startups
		end
end
