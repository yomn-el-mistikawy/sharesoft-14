class CreateEntities < ActiveRecord::Migration
  def change
    create_table :entities do |t|
      t.String :name
      t.String :description
      t.String :location
      t.String :industry
      t.String :headquarters

      t.timestamps
    end
  end
end
