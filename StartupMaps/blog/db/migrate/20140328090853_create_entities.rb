class CreateEntities < ActiveRecord::Migration
  def change
    create_table :entities do |t|
      t.string :name
      t.string :description
      t.string :location
      t.string :industry
      t.string :headquarters

      t.timestamps
    end
  end
end
