class CreatePortfolioEntities < ActiveRecord::Migration
  def change
    create_table :portfolio_entities do |t|
      t.integer :entity_id
      t.string :name
      t.string :description
      t.datetime :date

      t.timestamps
    end
  end
end
