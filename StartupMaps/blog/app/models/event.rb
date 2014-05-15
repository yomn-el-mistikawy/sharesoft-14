class Event < ActiveRecord::Base

  has_and_belongs_to_many :startup

  
  # Defintion: This method takes the group id, 
  # returns a list of group members. 
  # Input: group_id
  # Output: group_members
  # Author: Yomn El-Mistikawy


  def self.get_event_members(entity, event)
    event_members = Startup.where(:id => (EventMember.where(:event_id => event)))
  end
end
