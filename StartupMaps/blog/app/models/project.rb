class Project < ActiveRecord::Base
	def  self.get_suggest(project)
		Project.where(:location => project.location, :category => project.category).where.not(:id => project.id, :startup_id => project.startup_id)
	end	
end