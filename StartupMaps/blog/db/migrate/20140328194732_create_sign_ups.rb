class CreateSignUps < ActiveRecord::Migration
  def change
    create_table :sign_ups do |t|
      t.string :username
      t.string :password
      t.string :email

      t.timestamps
    end
  end
end
