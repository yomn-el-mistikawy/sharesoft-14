class EntitiesController < ApplicationController
	
  # Definition: The user writes the status in the text box and click the button.
  # Input: Status.
  # Output: Updated Status.
  # Author: Ola Enaba.
  
  def  update
    @post = Post.find(params[1])
    if @post.update(params[:post].permit(:title, :text))
      redirect_to @post
    else
      render 'edit'
    end
  end


  # Definition: Finds the status that should be updated.
  # Input: Status.
  # Output: Updated Status.
  # Author: Ola Enaba.
 
  def  editStatus
		  @entity = Entity.find(1)
	end


  # Definition: Redirects to the new updated status.
  # Input: Status.
  # Output: Updated Status.
  # Author: Ola Enaba.

	def  updateStatus
		 @entity = Entity.find(1) 
  		 @entity.update(params[:entity].permit(:work_status))
  		 redirect_to entity_editStatus_path
	end
end

