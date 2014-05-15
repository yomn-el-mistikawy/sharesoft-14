class GroupsStartup < ActiveRecord::Base
  #Definition: to include actions happen in the model to the public activity.
  #Input: Void.
  #output: Voud.
  #Author: Amr Gamal.

  include PublicActivity::Model  
  tracked  
  attr_accessible :group_id, :startup_id 
  belongs_to :group
  belongs_to :startup

  
  # Defintion: This checks if the startup is a member
  # of the opened group and returns the record containing 
  # both the startup_id and group_id.
  # Input: startup_id, group_id
  # Output: record containing startup_id and group_id
  # Author: Yomn El-Mistikawy

  def self.check_membership(startup, group)
    GroupsStartup.where(:startup_id => startup.id, :group_id => group.id)
  end
end
