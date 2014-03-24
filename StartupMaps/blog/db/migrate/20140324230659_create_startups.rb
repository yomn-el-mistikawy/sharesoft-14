class CreateStartups < ActiveRecord::Migration
  def change
    create_table :startups do |t|

      t.timestamps
    end
  end
end
