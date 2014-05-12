class PostsController < ApplicationController
  
	def create
    @post = Post.new(params[:post])

    respond_to do |format|
      if @post.save
        if @post.notification then
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

  def update
    respond_to do |format|

      if @post.update(post_params)
        if @post.notification then
        UserMailer.post_email(@post).deliver
        end
        format.html { redirect_to @post, notice: 'Group was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end
end
