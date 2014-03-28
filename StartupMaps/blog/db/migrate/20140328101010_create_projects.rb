class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.string :category
      t.string :goal
      t.string :requirements
      t.integer :milestone
      t.integer :startup_id
      t.string :location

      t.timestamps
    end
  end
end
