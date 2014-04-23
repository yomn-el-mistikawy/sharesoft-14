
class CreateStartupsAndGroups < ActiveRecord::Migration
  def change
  create_table :groups do |t|
      t.string :name
      t.string :description, :default => nil
      t.string :location, :default => nil
      t.integer :creator_id, :default => 0
      t.string :interest, :default => nil
      t.boolean :private, :default => false

      t.timestamps
    end
 
     create_table :startups do |t|
      t.string :name
      t.string :location

      t.timestamps
    end
  end
end