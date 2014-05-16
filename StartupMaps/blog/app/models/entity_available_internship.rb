class EntityAvailableInternship < ActiveRecord::Base
  belongs_to :entity


  # Definition: This method updates the attribute in the table entity_available_internships
  # If it's true, it makes it false, and if it's false, it makes it true.
  # Input: Entity_status, entity.
  # Output: Void.
  # Author: Adel Badawy.

  def self.change_internship(entity_status, entity)
    if entity_status.update_attribute(:available, !entity_status.available)
      puts "Successfully changed!"
    else
      puts "Sorry, couldn't change the status."
    end
  end
end
