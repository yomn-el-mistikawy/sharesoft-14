class CreatePortfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      t.string :name
      t.string :descripton
      t.datetime :date

      t.timestamps
    end
  end
end
