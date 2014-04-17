class StartupHasGroups < ActiveRecord::Base
	has_many :startups
	has_many :groups
	def self.check_membership(startup, group)
		StartupHasGroups.where(:startup_id => startup.id, :group_id => group.id)
	end
end
