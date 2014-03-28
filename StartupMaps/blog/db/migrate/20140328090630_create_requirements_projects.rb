class CreateRequirementsProjects < ActiveRecord::Migration
  def change
    create_table :requirements_projects do |t|
      t.integer :project_id
      t.String :requirements

      t.timestamps
    end
  end
end
