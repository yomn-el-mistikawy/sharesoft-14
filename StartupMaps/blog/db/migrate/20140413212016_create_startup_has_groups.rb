class CreateStartupHasGroups < ActiveRecord::Migration
  def change
    create_table :startup_has_groups do |t|
      t.belongs_to :startup
      t.belongs_to :group

      t.timestamps
    end
  end
end
