class CreateInvestors < ActiveRecord::Migration
  def change
    create_table :investors do |t|
      t.float :longitude
      t.float :latitude
      t.string :contact_information
			t.belongs_to :entity
      t.string :name
      t.string :sector
      t.string :location
      t.timestamps
    end
  end
  	def self.down
				drop_table :investors
		end
end
