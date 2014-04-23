class Project < ActiveRecord::Base
	belongs_to :startup

  # Definition: "A project is launched after all requirements are met"
  # Changes the status of a project and redirects to the project's 
  # page (show project) on success or error
  # update the status of launch project from unlaunch to launched and vice versa.
  # Input: Void.
  # Output: Void "it's an action" returns the success 
  # of the changeable button of launch upon of it's previous status. 
  # Author: Hana Magdy.

	def launched?
		launch ? "Yes" : "No"
	end	

  # Definition: "A startup can see a list of his projects" 
  # This method allows you to get a list of projects and 
  # compares the project's id with the startup's id 
  # then start listing all the projects to a specific startup.
  # Input: entity_id, startup_id, project_id.
  # Output: project_id "all project description in a list".
  # Author: Hana Magdy.

  def  self.listing_projects(startup)
    @startups_listing_projects = StartupHaveProject.select(:project_id).where(:startup_id => startup.id)
    Project.where(:id => @startups_listing_projects)
	end

end