class StartupHasGroups < ActiveRecord::Base
	has_many :startups, foreign_key: "startup_id"
	has_many :groups, foreign_key: "group_id"
end
