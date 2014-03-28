class CreateGeographicalLocationGroups < ActiveRecord::Migration
  def change
    create_table :geographical_location_groups do |t|
      t.integer :group_id
      t.string :location

      t.timestamps
    end
  end
end
