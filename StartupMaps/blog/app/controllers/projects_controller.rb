class ProjectsController < ApplicationController

  # == Begin  == 
  # Definition: "A startup can see a list of his projects" 
  # This method allows you to get a list of projects and 
  # moves with a session_id of an entity in order to 
  # list all the project's of the startup
  # that belong to a specific startup and is linked to the index HTML file
  # respond_to --> gives a direct access to the HTML/XML/PDF whatever is it
  # it's reachable and knows what's happening in the file.
  # Input: entity_id, startup_id.
  # Output: project_id "all project description in a list".
  # Author: Hana Magdy.

  def index
    session[:entity_id] = 1
    @projects = Project.listing_projects(Startup.find(session[:entity_id]))
    # @projects = Project.all
    # @startup = Startup.find(session[:entity_id])
    # @projects = @startup.project.find( :all)

    respond_to do |format|
      format.html
    end
  end

=begin
	This methods queries the table project for projects that are in the same category and location as the current project
	Input: selected project id
	Output: @suggested
	Author: Yomn El-Mistikawy
=end
def suggest
	@project= Project.find(1)
    @suggested= Project.where(:location => "cairo", :category => "baking").where.not(:id => "1", :startup_id => "1")
end
=begin
	This method shows the profile of the selected suggested project
	Input: selected project id
	Output: view showing the profile of the project with a merge request button
	Author: Yomn El-Mistikawy
=end
def showSuggested
  @project= Project.find(params[:project])
end


def new
  @project = Project.new
end

def create
	@project = Project.new(project_params)
	@project.save
	redirect_to @project
end

private
def project_params
	params[:project].permit(:name, :category, :location, :description)
end

end
