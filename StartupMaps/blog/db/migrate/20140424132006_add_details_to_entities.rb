class AddDetailsToEntities < ActiveRecord::Migration
  def change
  	t.string :auth_token
	t.string :password_reset
	t.datetime :sent_at
  end
end
