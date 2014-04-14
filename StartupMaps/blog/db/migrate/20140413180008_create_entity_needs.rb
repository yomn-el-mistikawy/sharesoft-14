class CreateEntityNeeds < ActiveRecord::Migration
  def self.up
    create_table :entity_needs do |t|
      t.string :needs
	    t.belongs_to :entity
      t.timestamps
    end
  end
  def self.down
		drop_table :startup_needs
	end
end
