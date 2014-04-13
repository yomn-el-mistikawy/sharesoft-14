class CreateStartupHaveProjects < ActiveRecord::Migration
  def change
    create_table :startup_have_projects do |t|
      t.integer :startup_id
      t.integer :project_id

      t.timestamps
    end
  end
end
