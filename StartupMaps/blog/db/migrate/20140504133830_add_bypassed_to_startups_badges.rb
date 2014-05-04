class AddBypassedToStartupsBadges < ActiveRecord::Migration
  def self.up
  	add_column :startups_badges, :bypassed, :boolean
  end

  def self.down
  	remove_column :startups_badges, :bypassed, :boolean
  end
end
