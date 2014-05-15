class CommentsController < ApplicationController

  # Definition: This method instantiates a comment on a specific post 
  #using the association between posts and comments. 
  # Input: none.
  # Output: Void.
  # Author: Maha Salah Eldin.

  def new
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new
  end


  # Definition: This method creates a new comment on a specific post using the association between 
  #posts model and comments model. It sets the startup id to the id of the startup currently using the system,
  # as well as the commenter name. It then redirects to the group page where this comment was added.
  # Input: comment parameters: comment, the specific post id, id of the current user.
  # Output: Void.
  # Author: Maha Salah Eldin.

  def create
    @post = Post.find(params[:post_id])
    @group = Group.find(@post.group_id)
    @startup = Entity.find(current_entity.id)
    @comment = @post.comments.new(comment_params)
    @comment.commenter = @startup.name
    @comment.startup_id = current_entity.id

    if @comment.save
      redirect_to @group
    else
      flash[:error] = 'Your comment could not be posted, please try again.'
      redirect_to @group
     
     end
  end


  # Definition: This method deletes a comment.
  # Input: comment id.
  # Output: Void.
  # Author: Maha Salah Eldin.

  def destroy
    @post = Post.find(params[:post_id])
    @group = Group.find(@post.group_id)
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to @group
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
