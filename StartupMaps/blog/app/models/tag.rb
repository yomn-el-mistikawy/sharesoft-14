class Tag < ActiveRecord::Base
	has_many :entities

	def self.update_pref (other, prefs)
		prefs.to_a.each do |prefer|
			if ((Tag.find_by tags: prefer) == nil)
				Tag.create(:entity_id => 1, :tags => prefer)
			end







			# if ((Tag.find_by tags: prefer) != 'nil' && (Tag.find_by)
			# 	p 'false'
			# end
			# if (((Tag.find_by tags: prefer) != prefer) && (Tag.find_by tags: prefer) == 1)
			# 	p "Hey!"
				# Tag.create(:entity_id => 1, :tags => prefer)
		end
		# if other != ""
		# 	if (((Tag.find_by tags: other).tags != other) && (Tag.find_by tags: other).entity_id != 1)
		# 		Tag.create(:entity_id => 1, :tags => other)
		# 	end
		# end
	end
	
end
