class StartupHaveProject < ActiveRecord::Base
	has_and_belongs_to_many :project, foreign_key: "projects_id"
	has_and_belongs_to_many :startup, foreign_key: "startup_id"
end
