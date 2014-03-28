class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :group_id
      t.datetime :date
      t.integer :numofLikes

      t.timestamps
    end
  end
end
