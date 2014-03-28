class CreatePortfolioEntities < ActiveRecord::Migration
  def change
    create_table :portfolio_entities do |t|
      t.integer :entity_id
      t.String :name
      t.String :description
      t.datetime :date

      t.timestamps
    end
  end
end
