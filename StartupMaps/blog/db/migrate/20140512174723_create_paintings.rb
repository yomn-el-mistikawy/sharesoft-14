class CreatePaintings < ActiveRecord::Migration
  def change
    create_table :paintings do |t|
      t.references :gallery, index: true
      t.string :name
      t.string :image
      t.timestamps
    end
  end
end
