class Tag < ActiveRecord::Base
	has_many :entities

	def self.update_pref (other, prefs)
		prefs.to_a.each do |prefer|
			if (((Tag.find_by tags: prefer) == nil) || (((Tag.find_by tags: prefer).tags == prefer) && (Tag.find_by entity_id: 1).entity_id != 1))
				Tag.create(:entity_id => 1, :tags => prefer)
			end
		end
		if other != ""
			if (((Tag.find_by tags: other) == nil) || (((Tag.find_by tags: other).tags != other) && (Tag.find_by tags: other).entity_id != 1))
				Tag.create(:entity_id => 1, :tags => other)
			end
		end
	end

	def self.delete_pref (deleted)
		if Tag.find_by(tags: deleted, entity_id: 1) != nil
			Tag.find_by(tags: deleted, entity_id: 1).destroy
		end
	end
	
end
