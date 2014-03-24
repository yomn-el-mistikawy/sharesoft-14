class CreateGroupCreators < ActiveRecord::Migration
  def change
    create_table :group_creators do |t|

      t.timestamps
    end
  end
end
