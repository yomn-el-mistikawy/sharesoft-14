class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :social_account
      t.timestamps
    end
  end
end
