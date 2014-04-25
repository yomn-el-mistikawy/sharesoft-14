class CommentsController < ApplicationController

  # Definition: This method creates a new comment on a specific post using the association between 
  #posts model and comments model. It sets the startup id to the id of the startup currently using the system,
  # as well as the commenter name. It then redirects to the group page where this comment was added.
  # Input: comment parameters: comment, the specific post id, id of the current user.
  # Output: Void.
  # Author: Maha Salah Eldin.

  def create
    @post = Post.find(params[:post_id])
    @group = Group.find(@post.group_id)
    @startup = Startup.find(session[:entity_ID])
    @comment = @post.comments.new(comment_params)
    @comment.commenter = @startup.name
    @comment.startup_id = session[:entity_ID]
    if @comment.save
      redirect_to group_path(@group)
    end
  end
 
  private

  # Definition: This method specifies what input to be required and permitted from the user.
  # Input: Input entered by the user.
  # Output: comment parameters.
  # Author: Maha Salah Eldin.

  def comment_params
    params.require(:comment).permit(:comment)
  end
end

