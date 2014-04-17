class StartupHasGroups < ActiveRecord::Base
	has_many :startups
	has_many :groups

  # Defintion: This checks if the startup is a member
  # of the opened group and returns the record containing 
  # both the startup_id and group_id.
  # Input: startup_id, group_id
  # Output: record containing startup_id and group_id
  # Author: Yomn El-Mistikawy

  def self.check_membership(startup, group)
    StartupHasGroups.where(:startup_id => startup.id, :group_id => group.id)
  end
end
