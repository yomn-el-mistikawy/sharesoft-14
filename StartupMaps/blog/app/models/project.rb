class Project < ActiveRecord::Base
	belongs_to :entity
	
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
end
