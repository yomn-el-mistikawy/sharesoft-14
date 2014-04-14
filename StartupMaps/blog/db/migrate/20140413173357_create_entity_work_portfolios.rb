class CreateEntityWorkPortfolios < ActiveRecord::Migration
  def self.up
    create_table :entity_work_portfolios do |t|
      t.string :name
      t.string :description
      t.datetime :launch
			t.belongs_to :entity
      t.timestamps
    end
  end
  def self.down
		drop_table :entity_work_portfolios
	end
end
