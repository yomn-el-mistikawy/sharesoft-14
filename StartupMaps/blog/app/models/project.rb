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

	def  self.get_suggest(project)
		# @startup_ids = startup_have_project.where(:project => project.id)
		Project.where(:location => project.location, :category => project.category).where.not(:id => project.id, :startup_id => project.startup_id)
	end	
end