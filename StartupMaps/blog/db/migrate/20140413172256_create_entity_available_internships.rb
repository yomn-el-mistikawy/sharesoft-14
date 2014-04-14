class CreateEntityAvailableInternships < ActiveRecord::Migration
  def self.up
    create_table :entity_available_internships do |t|
      t.string :name
      t.string :description
      t.boolean :available
	  	t.belongs_to :entity
      t.timestamps
    end
  end
  def self.down
		drop_table :entity_available_internships
	end
end
