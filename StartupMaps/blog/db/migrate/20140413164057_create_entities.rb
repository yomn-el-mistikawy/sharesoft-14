class CreateEntities < ActiveRecord::Migration
  def self.up
    create_table :entities do |t|
      t.string :name
      t.string :username
      t.string :password
      t.string :e_mail
      t.string :verification_code
      t.string :location
      t.string :headquarter
      t.string :description

      t.timestamps
    end
  end
  def self.down
    drop_table :entities
  end
end
