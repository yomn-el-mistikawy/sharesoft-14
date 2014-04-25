class Project < ActiveRecord::Base

	 has_many :startups, :through => :startup_have_project
   

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

