class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.String :name
      t.String :category
      t.datetime :launch
      t.integer :milestones
      t.String :location

      t.timestamps
    end
  end
end
