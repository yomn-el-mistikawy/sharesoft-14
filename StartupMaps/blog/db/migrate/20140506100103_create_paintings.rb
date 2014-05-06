class CreatePaintings < ActiveRecord::Migration
  def change
    create_table :paintings do |t|
      t.references :gallery, index: true
      t.string :name

      t.timestamps
    end
  end
end
