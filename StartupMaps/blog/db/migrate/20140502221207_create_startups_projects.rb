class CreateStartupsProjects < ActiveRecord::Migration
  def self.up
    create_table :startups_projects do |t|
      t.belongs_to :startup
      t.belongs_to :project
      t.timestamps
    end
  end

  def self.down
		drop_table :startups_projects
	end
end
