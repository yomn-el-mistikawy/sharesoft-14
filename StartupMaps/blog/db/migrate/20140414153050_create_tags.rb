class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :tags
	  t.belongs_to :entity
      t.timestamps
    end
  end
end
