class CreateGoalProjects < ActiveRecord::Migration
  def change
    create_table :goal_projects do |t|
      t.integer :project_id
      t.String :goal

      t.timestamps
    end
  end
end
