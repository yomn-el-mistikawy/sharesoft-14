class CreateStartupNeeds < ActiveRecord::Migration
  def self.up
    create_table :startup_needs do |t|
      t.string :needs
	    t.integer :startup_id
      t.timestamps
    end
  end
  def self.down
		drop_table :startup_needs
	end
end
