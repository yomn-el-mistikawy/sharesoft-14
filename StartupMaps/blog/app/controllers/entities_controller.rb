class EntitiesController < ApplicationController
	
  #The user writes the status in the text box and clicks on the button "enter" then the status is updated in the above header
  #Author: Ola Enaba
  #Inpput: Status
  #Output: Updated Status
  def update
    @post = Post.find(params[1])
   
    if @post.update(params[:post].permit(:title, :text))
      redirect_to @post
    else
      render 'edit'
    end
  end


  def editStatus
		  @entity = Entity.find(1)
	end
	def updateStatus
		 @entity = Entity.find(1) 
  		 @entity.update(params[:entity].permit(:work_status))
  		 redirect_to entity_editStatus_path
	end
end

