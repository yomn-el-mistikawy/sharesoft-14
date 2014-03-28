class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.String :groupofInterest

      t.timestamps
    end
  end
end
