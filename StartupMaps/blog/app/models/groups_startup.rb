class GroupsStartup < ActiveRecord::Base
  belongs_to :group
  belongs_to :startup
  
  # Defintion: This checks if the startup is a member
  # of the opened group and returns the record containing 
  # Both the startup_id and group_id.
  # Input: Startup_id, group_id
  # Output: Record containing startup_id and group_id
  # Author: Yomn El-Mistikawy
  # MOdified by: maha Salah Eldin.

  def self.check_membership(startup_id, group_id)
    GroupsStartup.where(:startup_id => startup_id, :group_id => group_id)
  end
end
