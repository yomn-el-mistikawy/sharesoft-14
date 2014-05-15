class Project < ActiveRecord::Base
  
  has_many :startups, through: :startups_projects
  belongs_to :startup

  # Definition: "A startup can launch its project"
  # Changes the status of a project and redirects to the project's 
  # page (show project) on success or error
  # update the status of launch project from unlaunch to launched and vice versa.
  # Input: project_id/Void.
  # Output: project_id/Void "it's an action" returns the success 
  # of the changeable button of launch upon of it's previous status. 
  # Author: Hana Magdy.

  def launched?
    @launch ? "Yes" : "No"
  end 
end

