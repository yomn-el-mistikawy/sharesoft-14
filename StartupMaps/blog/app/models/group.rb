class Group < ActiveRecord::Base
	has_one :entity
	def self.get_group_members(group)
		Startup.where(:id => (StartupHasGroups.where(:group_id => group.id)))
	end	
end
