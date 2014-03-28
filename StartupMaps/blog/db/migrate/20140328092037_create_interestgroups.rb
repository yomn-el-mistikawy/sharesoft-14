class CreateInterestgroups < ActiveRecord::Migration
  def change
    create_table :interestgroups do |t|
      t.integer :group_id
      t.string :creatorName
      t.string :typeOfInterest
      t.boolean :private

      t.timestamps
    end
  end
end
