class StartupNeeds < ActiveRecord::Base
	belongs_to :Startup, foreign_key: "startups_id"
end
