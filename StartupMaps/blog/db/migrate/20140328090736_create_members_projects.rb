class CreateMembersProjects < ActiveRecord::Migration
  def change
    create_table :members_projects do |t|
      t.integer :project_id
      t.integer :startup_id

      t.timestamps
    end
  end
end
