class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :text
      t.belongs_to :group
      t.belongs_to :startup

      t.timestamps
    end
  end
end
