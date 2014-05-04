class CreateMessages < ActiveRecord::Migration
  def self.up
    create_table :messages do |t|
      t.belongs_to :entity
      t.belongs_to :receiver
      t.string :tittle
      t.string :message
      t.timestamps
    end
  end

  def self.down
  	drop_table :messages
  end
end
