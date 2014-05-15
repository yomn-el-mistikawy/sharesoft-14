class Project < ActiveRecord::Base
# Definition: Tracks the attributes of the prject to activities.
# Input: Void.
# Output: Void.
# Author: Amr Gamal.

include PublicActivity::Model
attr_accessible :name
tracked owner: ->(controller, model) { controller && controller.current_user }  
   has_many :project_requirements
   has_many :project_targets
   has_many :startups, through: :projects_startups
end

