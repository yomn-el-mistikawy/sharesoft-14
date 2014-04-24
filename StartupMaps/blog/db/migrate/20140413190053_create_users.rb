class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :social_account
      t.string :remember_token
      t.timestamps
    end
  end
end
