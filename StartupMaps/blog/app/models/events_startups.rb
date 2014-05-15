class EventsStartups < ActiveRecord::Base
  belongs_to :event
  belongs_to :startup
  
  # Defintion: This checks if the startup is a member
  # of the opened group and returns the record containing 
  # both the startup_id and group_id.
  # Input: startup_id, group_id
  # Output: record containing startup_id and group_id
  # Author: Yomn El-Mistikawy

  def self.check_membership(startup, event)
    EventsStartup.where(:startup_id => startup.id, :event_id => event.id)
  end
end
