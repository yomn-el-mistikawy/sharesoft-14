class Project < ActiveRecord::Base
  has_many :startups, :through => :startup_have_project
	
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

  # Definition: VAlidation for unique name and presence of all values
  # Input: No inpput
  # output: No output
  # Author: Amr Gamal
  validates_uniqueness_of :name
  validates_presence_of :name
  validates_presence_of :location
  validates_presence_of :category
  validates_presence_of :description
end

