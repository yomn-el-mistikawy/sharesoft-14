class ProjectsController < ApplicationController
	  
#update the project by id, then enters table "projects" along with goals,milestone & requirements
#and gets edited, Also redirected  to edit (which is a blank page)
def update
	@project = Project.find(params[:id])
  if @project.update(params[:projects].permit(:goals, :milestones, :requiements))
    
    redirect_to @project
  else
    render 'edit'
  end
end

#edits the project, to the 
#the link "localhost:3000/projects/1/edit"
def edit
  @project = Project.find(1)
end


#The view can not acess the methods under private 
private
  def project_params
    params.require(:projects).permit(:goals, :milestones, :requiements)
  #This makes the goals,milestones and requirements accessable by/ visable to the method update"
  end
end
