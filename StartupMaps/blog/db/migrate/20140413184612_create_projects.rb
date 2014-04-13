class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
      t.string :location
      t.string :goals
      t.string :name
      t.integer :milestones
      t.string :category
      t.datetime :launch
      t.string :description
      t.string :requirements

      t.timestamps
    end
  end
   def self.down
    drop_table :projects
  end
end
