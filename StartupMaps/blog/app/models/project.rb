class Project < ActiveRecord::Base

	 has_many :startups, :through => :startup_have_project


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


  # Defintion: This method takes a project as input
  # and searches the projects table for projects of
  # same geographical location and category and sends
  # the results to the suggest function in the project
  # controller.
  # Input: project
  # Output: a list of suggested projects
  # Author: Yomn El-Mistikawy

  def  self.get_suggest(project, startup)
    @projects_owned_by_startup_ids = StartupHaveProject.select(:project_id).where(:startup_id => startup.id)
    @suggested_projects = Project.where(:location => project.location, :category => project.category).where.not(:id => project.id, :id => @projects_owned_by_startup_ids)
  end	

end

