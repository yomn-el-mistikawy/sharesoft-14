class CreateGroups < ActiveRecord::Migration
  def self.up
    create_table :groups do |t|
      t.boolean :private
      t.string :description
      t.string :name
      t.string :location
      t.integer :creator_id 
      t.string :interest
      t.timestamps
    end
  end
  def self.down
    drop_table :groups
  end
end
