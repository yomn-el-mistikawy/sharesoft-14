class CreateUserposts < ActiveRecord::Migration
  def change
    create_table :userposts do |t|
      t.integer :entity_id
      t.string :content

      t.timestamps
    end
  end
end
