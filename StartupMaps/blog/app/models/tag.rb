class Tag < ActiveRecord::Base
	has_many :entities

	def self.update_pref (other, prefs)
		# prefs.each do
		# 	Tag.create(:entity_id => 1, :tags => prefs.params)
		# end
		if other != ""
			Tag.create(:entity_id => 1, :tags => other)
		end
	end
	
end
