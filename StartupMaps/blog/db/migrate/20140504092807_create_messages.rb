class CreateMessages < ActiveRecord::Migration
  def up
    create_table :messages do |t|
      t.string :sender
      t.string :recepient
      t.string :subject
      t.text :body
      t.integer :read

      t.timestamps
    end
  end

  def down
    drop_table :messages
  end
end
