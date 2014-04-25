class StartupHaveProject < ActiveRecord::Base
  has_and_belongs_to_many :projects
  has_and_belongs_to_many :startups

  # Defintion: This method takes the project_id and session id
  # as input and checks the database for whether the startup owns
  # the stated project or not.
  # Input: project_id, entity_id
  # Output: a record containing startup_id, project_id
  # Author: Yomn El-Mistikawy

  def self.check_ownership(project, startup)
    StartupHaveProject.where(:startup_id => startup.id, :project_id => project.id)
  end	
end
