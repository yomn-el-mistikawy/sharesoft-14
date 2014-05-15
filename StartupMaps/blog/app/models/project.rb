class Project < ActiveRecord::Base

include PublicActivity::Model
attr_accessible :name
tracked owner: ->(controller, model) { controller && controller.current_user }  
   has_many :project_requirements
   has_many :project_targets
   has_many :startups, through: :projects_startups
end

