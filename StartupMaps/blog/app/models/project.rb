class Project < ActiveRecord::Base
	belongs_to :entity
	
	def launched?
		launch ? "Yes" : "No"
	end	
	
	# Definition: This method takes a project as input
	# and searches the projects table for projects of
	# the results to the suggest function in the poject 
	# controller 
	# Input: project
	# Output: a list of suggested projects 
	# Author: Yomn El-Mistikawy
	def  self.suggest_projects(project)
		# @startup_ids = startup_have_project.where(:project => project.id)
		Project.where(:location => project.location, :category => project.category).where.not(:id => project.id, :startup_id => project.startup_id)
	end

	
end
