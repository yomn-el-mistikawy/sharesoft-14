class CreateEntityJobs < ActiveRecord::Migration
  def change
    create_table :entity_jobs do |t|
      t.string :jobs
			t.belongs_to :entity
      t.timestamps
    end
  end
end
