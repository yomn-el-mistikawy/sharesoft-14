class StartupHaveProject < ActiveRecord::Base

  #Definition: to include actions happen in the model to the public activity.
  #Input: Void.
  #output: Voud.
  #Author: Amr Gamal.

  include PublicActivity::Model  
  tracked 
   

  attr_accessible :project_id, :startup_id 

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
