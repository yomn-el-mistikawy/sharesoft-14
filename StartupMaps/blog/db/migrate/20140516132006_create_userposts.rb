class CreateUserposts < ActiveRecord::Migration
  def change
    create_table :userposts do |t|
      t.string :content
      t.integer :entity_id
      t.timestamps
    end
  end
end
