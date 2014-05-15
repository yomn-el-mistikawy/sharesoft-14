class Project < ActiveRecord::Base
   has_many :project_requirements
   has_many :project_targets
	 has_many :startups, through: :projects_startups
end

