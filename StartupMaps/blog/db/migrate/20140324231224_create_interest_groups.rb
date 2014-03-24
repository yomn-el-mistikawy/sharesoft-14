class CreateInterestGroups < ActiveRecord::Migration
  def change
    create_table :interest_groups do |t|

      t.timestamps
    end
  end
end
