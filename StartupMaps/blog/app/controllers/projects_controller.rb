class ProjectsController < ApplicationController

  # Defintion: This method takes the project_id and session id
  # as input and calls get_suggested() to show a list of 
  # projects with the same geographical location and
  # category to the startup's opened project.The suggestions 
  # are only shown for project owners. Moreover, if there are no 
  # suggestions, a message is shown stating so.
  # Input: project_id, entity_id
  # Output: project_id, suggested_project
  # Author: Yomn El-Mistikawy

  def suggest
    if (StartupHaveProject.check_ownership(Project.find(params[:project_id]), Startup.find(session[:entity_id])).size != 0)
      @suggested = Project.get_suggest(Project.find(params[:project_id]), Startup.find(session[:entity_id]))
    else
      render text: ""
    end
  end


  # Defintion: This method takes the suggested project id
  # as input and views the project with a button for the startup
  # to send a merge request to the project owner.
  # Input: suggested_project
  # Output: project_id, suggested_project
  # Author: Yomn El-Mistikawy

  def show_suggested
    @project = Project.find(params[:suggested_project])
  end

def new

end

# Definition: Creates a new project and add it to the database.
# Input: Project attributes. name, ctaegory, lcation and description.
# Output: void.
# Author: Amr Gamal.
  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to @project 
    else
        redirect_to( { action: 'new' } )
        flash[:notice] = "Post successfully created"
    end 
  end

# Definition: show the project created.
# Input: no inout.
# Output: the project attributes are listed.
# Author: Amr Gamal.
  def show 
    @project = Project.find(params[:id])
    flash[:error] = "project not found" and return unless @project
  end
  
# Definition: helper method to take the parameters.
# Input: no inout.
# Output: the parameters entered.
# Author: Amr Gamal.
  private  
  def project_params
    params.require(:project).permit(:name, :category, :location, :description)    
  end

end
