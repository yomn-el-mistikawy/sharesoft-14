class CommentsController < ApplicationController


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
    @startup = Startup.find(current_entity.id)
    @comment = @post.comments.new(comment_params)
    @comment.commenter = @startup.name
    @comment.startup_id = current_entity.id

 respond_to do |format|
    if @comment.save
      format.html { redirect_to @comment, notice: 'Comment was successfully created.' }
      format.js   {}
      format.json { render json: @comment, status: :created, location: @comment }
    else
      format.html { render action: "new" }
      format.json { render json: @comment.errors, status: :unprocessable_entity }
    end
  end
    # if @comment.save
    #   redirect_to @group
    # else
    #   flash[:error] = 'Your comment could not be posted, please try again.'
    #   redirect_to @group
     
    #  end
  end

  def show
      @comment = Comment.find(params[:id])
  end

  def edit
   
  @comment = Comment.find(params[:id])
  @post = Post.find(params[:post_id])
  end

  def update
    @post = Post.find(params[:post_id])
    @group = Group.find(@post.group_id)
    @comment = @post.comments.find(params[:id])
      if @comment.update(comment_params)
        redirect_to @group
      else
        flash[:error] = 'Your comment could not be updated, please try again.'
        render 'edit'
      end
  end

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
