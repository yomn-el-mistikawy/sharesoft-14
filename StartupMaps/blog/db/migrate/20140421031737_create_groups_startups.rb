class CreateGroupsStartups < ActiveRecord::Migration
  def change
    create_table :groups_startups do |t|
      t.belongs_to :group
      t.belongs_to :startup

      t.timestamps
    end
  end
end
