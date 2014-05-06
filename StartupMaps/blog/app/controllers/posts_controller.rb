class PostsController < ApplicationController
  
	def create
    @post = Post.new(params[:post])

    respond_to do |format|
      if @post.save
        if @post.Notification then
        UserMailer.post_email(@post).deliver
        end
        format.html { redirect_to @post, :notice => 'Post was successfully created.' }
        format.json { render :json => @post, :status => :created, :location => @post }
      else
        format.html { render :action => "new" }
        format.json { render :json => @post.errors, :status => :unprocessable_entity }
      end
    end
  end
end
