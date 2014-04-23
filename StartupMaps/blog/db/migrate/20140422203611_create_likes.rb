class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.string :liker
      t.belongs_to :startup
      t.belongs_to :likable, :polymorphic => true

      t.timestamps
    end
  end
end
