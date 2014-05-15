class CreateEventStartups < ActiveRecord::Migration
  def change
    create_table :event_startups do |t|
      t.belongs_to :events
      t.belongs_to :startups
      t.timestamps
    end
  end
  def self.down
    drop_table :event_startups
  end
end
