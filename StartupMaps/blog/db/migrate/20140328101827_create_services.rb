class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name
	  t.boolean :online_Status
	  t.string :sector
      t.timestamps
    end
  end
end
