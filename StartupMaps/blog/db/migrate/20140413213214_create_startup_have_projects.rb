class CreateStartupHaveProjects < ActiveRecord::Migration
  def change
    create_table :startup_have_projects do |t|
      t.belongs_to :startup
      t.belongs_to :project

      t.timestamps
    end
  end
end
