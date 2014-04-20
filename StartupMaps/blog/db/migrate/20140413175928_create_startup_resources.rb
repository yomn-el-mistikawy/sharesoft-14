class CreateStartupResources < ActiveRecord::Migration
  def self.up
    create_table :startup_resources do |t|
      t.string :resources
			t.belongs_to :startup
      t.timestamps
    end
  end
  def self.down
		drop_table :startup_resources
	end
end
