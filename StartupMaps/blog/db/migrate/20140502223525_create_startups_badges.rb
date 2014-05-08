class CreateStartupsBadges < ActiveRecord::Migration
  def self.up
    create_table :startups_badges do |t|
      t.belongs_to :badge	
      t.belongs_to :startup
      t.timestamps
    end
  end

  def self.down
  	drop_table :startups_badges
  end	
end
