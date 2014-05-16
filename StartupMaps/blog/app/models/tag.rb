class Tag < ActiveRecord::Base
	has_many :entities


  # Definition: This method checks if the references are already in the database or not, 
  # and if it isn't, then it adds it as a tuple in the table.
  # Input: Other, refs, entity.
  # Output: Void.
  # Author: Adel Badawy.

	def self.update_pref (other, prefs, entity)
		prefs.to_a.each do |prefer|
			if ((Tag.find_by tags: prefer) == nil || (Tag.find_by tags: prefer).tags == prefer || (Tag.find_by tags: prefer).entity_id == nil && ((Tag.find_by tags: entity.id).entity_id != entity.id))
				Tag.create(:entity_id => entity.id, :tags => prefer)
			end
		end
		if other != ""
			if ((Tag.find_by tags: other) == nil || (Tag.find_by tags: other).tags == other || ((Tag.find_by tags: other).tags != other && (Tag.find_by tags: other).entity_id != entity.id))
				Tag.create(:entity_id => entity.id, :tags => other)
			end
		end
	end


  # Definition: This method checks for the values in the dropdownlist, and deletes it.
  # Input: Deleted, entity.
  # Output: Void.
  # Author: Adel Badawy.

	def self.delete_pref (deleted, entity)
		if Tag.find_by(tags: deleted, entity_id: entity.id) != nil
			Tag.find_by(tags: deleted, entity_id: entity.id).destroy
		end
	end
	
end
