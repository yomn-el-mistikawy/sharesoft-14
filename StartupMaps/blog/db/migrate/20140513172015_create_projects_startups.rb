class CreateProjectsStartups < ActiveRecord::Migration
  def self.up
    create_table :projects_startups do |t|
      t.belongs_to :startup
      t.belongs_to :project
      t.timestamps
    end
  end

  def self.down
		drop_table :projects_startups
	end
end
