class CreateGroups < ActiveRecord::Migration   def change     create_table
:groups do |t|       t.String :name       t.String :location       t.datetime
:dateCreated       t.String :description       t.integer :numberOfMembers
t.integer :groupCreatorId

      t.timestamps
    end
  end
end
