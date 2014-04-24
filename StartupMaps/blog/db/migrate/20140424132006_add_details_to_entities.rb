class AddDetailsToEntities < ActiveRecord::Migration
  def change
  	add_column :entities, :auth_token, :string
    add_column :entities, :password_reset, :string
    add_column :entities, :sent_at, :datetime
  end
end
