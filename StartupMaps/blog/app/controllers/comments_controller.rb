class CommentsController < ApplicationController
	def create
    @comment = Comment.new(params[:post])

    respond_to do |format|
      if @comment.save
        if @comment.Notification then
        UserMailer.comment_email(@comment).deliver
        end
        format.html { redirect_to @comment, :notice => 'Comment was successfully created.' }
        format.json { render :json => @comment, :status => :created, :location => @comment }
      else
        format.html { render :action => "new" }
        format.json { render :json => @comment.errors, :status => :unprocessable_entity }
      end
    end
  end
end
