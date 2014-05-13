class Tag < ActiveRecord::Base
	has_many :entities

	def self.update_pref (other, prefs, entity)
		prefs.to_a.each do |prefer|
			if ((Tag.find_by tags: prefer) == nil || (Tag.find_by tags: prefer).tags == prefer || (Tag.find_by tags: prefer).entity_id == nil && ((Tag.find_by tags: entity.id).entity_id != entity.id))
				Tag.create(:entity_id => entity.id, :tags => prefer)
			end
		end
		if other != ""
			if ((Tag.find_by tags: other) == nil || (Tag.find_by tags: prefer).tags == prefer || ((Tag.find_by tags: other).tags != other && (Tag.find_by tags: other).entity_id != entity.id))
				Tag.create(:entity_id => entity.id, :tags => other)
			end
		end
	end

	def self.delete_pref (deleted, entity)
		if Tag.find_by(tags: deleted, entity_id: entity.id) != nil
			Tag.find_by(tags: deleted, entity_id: entity.id).destroy
		end
	end
	
end
