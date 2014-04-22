class Project < ActiveRecord::Base
	belongs_to :startup

#UserStory: A project is launched after all requirements are met.
#Definition: This method is a boolean method that changes the projected. 
# from unlaunched to launched and vice versa.
# Action: launched?.
# Author: Hana Magdy.

	def launched?
		launch ? "Yes" : "No"
	end	

#UserStory: A startup can see a list of his projects. 
#Definition: This method takes the startups as input. 
# and views all the projects related to this startup.
# Input: Project_id, startup_id.
# Output: Project_id "all project description". 
# Action: listing_projects.
# Author: Hana Magdy.
	
	def  self.listing_projects(startup)
		@startups_listing_projects = StartupHaveProject.select(:project_id).where(:startup_id => startup.id)
		Project.where(:id => @startups_listing_projects)

	end
	
end
