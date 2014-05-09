class CreateProjectTargets < ActiveRecord::Migration
  def self.up
    create_table :project_targets do |t|
      t.string :description
      t.boolean :reached
      t.belongs_to :project
      t.timestamps
    end
  end

  def self.down
  	drop_table :project_targets
  end
end
