class CreateEntityPortfolios < ActiveRecord::Migration
  def change
    create_table :entity_portfolios do |t|
      t.string :name
      t.text :description
      t.datetime :launch

      t.timestamps
    end
  end
end
