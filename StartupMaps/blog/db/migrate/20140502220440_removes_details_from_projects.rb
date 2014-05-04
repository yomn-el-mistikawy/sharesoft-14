class RemovesDetailsFromProjects < ActiveRecord::Migration
  def self.up
  	remove_column :projects, :requirements
  	remove_column :projects, :goals
  	remove_column :projects, :milestones
  end

  def self.down
  	add_column :projects, :requirements, :string
  	add_column :projects, :goals, :string
  	add_column :projects, :milestones, :string
  end	
end
