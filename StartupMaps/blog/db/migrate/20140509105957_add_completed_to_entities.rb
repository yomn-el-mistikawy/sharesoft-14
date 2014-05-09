class AddCompletedToEntities < ActiveRecord::Migration
  def self.up
    add_column :entities, :completed, :boolean
  end
  def self.down
  	remove_column :entities, :completed
  end	
end
