class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.string :comment
      t.belongs_to :post
      t.belongs_to :startup

      t.timestamps
    end
  end
end
