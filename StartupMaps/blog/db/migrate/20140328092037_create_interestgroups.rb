class CreateInterestgroups < ActiveRecord::Migration
  def change
    create_table :interestgroups do |t|
      t.o=integer :group_id
      t.String :creatorName
      t.String :typeOfInterest
      t.boolean :private

      t.timestamps
    end
  end
end
