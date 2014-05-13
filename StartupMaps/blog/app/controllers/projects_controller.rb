class ProjectsController < ApplicationController
  before_action :authenticate_entity!, :only => [:new, :create, :edit, :update, :destroy]
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


  # Definition: "As a startup, I can edit and add all projects
  # attributes and specifically targets and requirements"
  # This method shows all details of a project
  # that belong to a specific startup and is linked to the show HTML file
  # which also includes the editing part
  # respond_to --> gives a direct access to the HTML/XML/PDF whatever is it
  # it's reachable and knows what's happening in the file.
  # Input: Project_id.
  # Output: Project_id "all project description (before and after editing".
  # Author: Hana Magdy.

  def show
    @project = Project.find(params[:id])

    respond_to do |format|
      format.html
    end
  end


  # Definition: ""As a startup, I can edit and add all projects
  # attributes and specifically targets and requirements"
  # Allows editing the project's details, specifically targets and requirements
  # This method allows you to edit a project given its project's id.
  # Input: Project_id.
  # Output: Project_id "specifically goals, milestones and requirements".
  # Author: Hana Magdy.

  def edit
    @project = Project.find(params[:id])
  end


  # Definition: "As a startup, I can edit and add all projects
  # attributes and specifically targets and requirements"
  # Allows editing the project's details, specifically targets and requirements
  # Redirects user to project's page (show project) on success
  # Re-renders the edit project page on error and is linked to the edit HTML file
  # update_attribute --> updates the rows
  # respond_to --> gives a direct access to the HTML/XML/PDF whatever is it
  # it's reachable and knows what's happening in the file
  # Also nested form helps editing, removing and specifing whether it is met or not. 
  # Input: project_id. "on the show page".
  # Output: project_id "all project description along successfully 
  # edited targets and requirements".
  # Author: Hana Magdy.

  def update
    @project = Project.find(params[:id])

    respond_to do |format|
      if @project.update_attributes(
          params.require(:project).permit(:name, 
              :category, 
              :location, 
              :description,
              :project_targets_attributes => [:id, :description, :reached, :_destroy],
              :project_requirements_attributes => [:id, :description, :reached, :_destroy])
        )
        format.html { redirect_to @project, notice: "Successfully updated project" }
      else
        format.html { render :edit }
      end
    end
  end


  # Definition: "As a startup, I can edit and add all projects
  # attributes and specifically targets and requirements"
  # Allows deleting a certain project.
  # recirects to 'index' listing the rest of the projects of the user.
  # Input: project_id. "on the show page".
  # Output: project_id "all project description along successfully 
  # edited targets and requirements".
  # Author: Hana Magdy.

  def destroy
    project = Project.find(params[:id])
    respond_to do |format|
      if project.destroy
        flash.notice = "Delete project successfully."
      else
        flash.alert = "Couldn't delete project, please try again."
      end
      format.html { redirect_to projects_path } # this will break, since projects#index doesn't work
    end
  end
  

   def new
    @project = Project.new
  end


  def create
    @project  = params[:startup_id].nil? ? 
                 Project.new(project_params) : 
                 Startup.find(params[:startup_id]).projects.build(project_params)
    respond_to do |format|
      if @project.save
        format.html  { redirect_to @project }
      else
        format.html { render :new }
      end
    end
  end


  private
  def project_params
    params.require(:project).permit(:name, :category, :location, :description,
      :project_targets_attributes => [:id, :description, :_destroy],
      :project_requirements_attributes => [:id, :description, :_destroy])
  end 
end