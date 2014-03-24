class CreateGeographicalLocationGroups < ActiveRecord::Migration
  def change
    create_table :geographical_location_groups do |t|

      t.timestamps
    end
  end
end
