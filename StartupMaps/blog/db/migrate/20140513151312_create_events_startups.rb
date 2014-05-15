class CreateEventsStartups < ActiveRecord::Migration
  def change
    create_table :events_startups do |t|
      t.belongs_to :event
      t.belongs_to :startup
      t.timestamps
    end
  end
  def self.down
    drop_table :events_startups
  end
end
