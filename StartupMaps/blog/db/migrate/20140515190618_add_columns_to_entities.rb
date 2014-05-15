class AddColumnsToEntities < ActiveRecord::Migration
  def change
  	add_column :entities, :lng, :float
    add_column :entities, :lat, :float
  end
end
