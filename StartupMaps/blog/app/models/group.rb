class Group < ActiveRecord::Base
	has_one :entity
	
	# Defintion: This method takes the group id, 
	# returns a list of group members. 
  # Input: group_id
  # Output: group_members
  # Author: Yomn El-Mistikawy

	def self.get_group_members(group)
		Startup.where(:id => (StartupHasGroups.where(:group_id => group.id)))
	end	
end
