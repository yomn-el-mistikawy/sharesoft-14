class CreateInvestors < ActiveRecord::Migration
  def change
    create_table :investors do |t|
      t.integer :entity_id
      t.String :Name
      t.String :description
      t.boolean :online_Status
      t.string :sector

      t.timestamps
    end
  end
end
