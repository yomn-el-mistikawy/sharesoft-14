class Project < ActiveRecord::Base
	

	# Defintion: This method takes a project as input
	# and searches the projects table for projects of
	# same geographical location and category and sends
	# the results to the suggest function in the project
	# controller.
	# Input: project
	# Output: a list of suggested projects
	# Author: Yomn El-Mistikawy
	# End 

	def  self.get_suggest(project, startup)
		@projects_owned_by_startup_id = StartupHaveProject.where(:startup_id => startup.id)
		@projects_owned_by_startup_id.each do |p|
			@temp = @projects_owned_by_startup
			@projects_owned_by_startup = Project.where(:id => p.project_id)
			@projects_owned_by_startup.merge(@temp)
		end
		#@projects_owned_by_startup.each do |p|
			#@project_not_owned_by_startup = Project.where.not(:id => p.project_id)
			#project = Project.find(projects_owned_by_startup.id)
			#@suggested_projects = project_not_owned_by_startup.where(:location => project.location, :category => project.category).where.not(:id => project.id)
		#end
	#	return @suggested_projects
	return @projects_owned_by_startup
	end	
end