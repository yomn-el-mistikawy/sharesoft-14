class ProjectsController < ApplicationController
  # before_action :authenticate_entity!, :only => [:new, :create, :edit, :update, :destroy]


  # Definition: This method creates new project 
  # Project.new = creates new project 
  # and gets linked to create -->new.html.
  # Input: Name, Category, Location and description. 
  # Output: project_id. "on the show page".
  # Author: Hana Magdy.
  def new
    @project = Project.new
  end
  

  # Definition: This method creates a new project
  # Project.new = creates new project and gets 
  # linked to create-->new.html with the project's id
  # .save, saves all the entries. 
  # Input: Name, Category, Location and description. 
  # Output: project_id. "on the show page".
  # Author: Hana Magdy.

  def create
    @project = params[:startup_id].nil? ? 
                Project.new(project_params) : 
                Startup.find(params[:startup_id]).projects.build(project_params)
    respond_to do |format|
      if @project.save
        StartupsProjects.create(:startup_id => Startup.find_by_entity_id(current_entity).id, :project_id => @project.id)
        format.html  { redirect_to @project }
      else
        format.html { render :new }
      end
    end
  end


  # Definition:This method shows all details of a project
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


  # Definition:Allows editing the project's details, 
  # specifically targets and requirements
  # This method allows you to edit a project given its project's id.
  # Input: Project_id.
  # Output: Project_id "specifically goals, milestones and requirements".
  # Author: Hana Magdy.

  def edit
    @project = Project.find(params[:id])
  end


  # Definition:Allows editing the project's details, specifically targets and requirements
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


  # Definition:Allows deleting a certain project.
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
      format.html { redirect_to projects_path }
    end
  end


  # Definition:permit to use the parmeters
  # recirects to 'index' listing the rest of the projects of the user.
  # Input: project_id. "on the show page".
  # Output: project_id "all project description along successfully 
  # edited targets and requirements".
  # Author: Hana Magdy.

  private
  def project_params
    params.require(:project).permit(:name, :category, :location, :description,
      :project_targets_attributes => [:id, :description, :_destroy],
      :project_requirements_attributes => [:id, :description, :_destroy])
  end 
end