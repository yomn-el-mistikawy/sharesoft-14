class EntityAvailableInternship < ActiveRecord::Base
  belongs_to :entity

  def self.change_internship(entity_status, entity)
      if entity_status.update_attribute(:available, !entity_status.available)
        puts "Successfully changed!"
      else
        puts "Sorry, couldn't change the status."
      end
  end
end
