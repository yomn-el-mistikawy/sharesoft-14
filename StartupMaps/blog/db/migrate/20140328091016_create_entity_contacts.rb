class CreateEntityContacts < ActiveRecord::Migration
  def change
    create_table :entity_contacts do |t|
      t.integer :entity_id
      t.integer :number
      t.string :e_mail

      t.timestamps
    end
  end
end
