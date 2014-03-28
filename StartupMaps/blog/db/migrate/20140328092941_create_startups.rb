class CreateStartups < ActiveRecord::Migration
  def change
    create_table :startups do |t|
      t.integerresources :entity_id
      t.integer :milestones
      t.String :needs

      t.timestamps
    end
  end
end
