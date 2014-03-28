class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.string :location
      t.datetime :dateCreated
      t.string :description
      t.integer :numberOfMembers
      t.integer :groupCreatorId

      t.timestamps
    end
  end
end
