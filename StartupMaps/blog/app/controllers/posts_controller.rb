class PostsController < ApplicationController


# Definition: this method puts all posts under each other.
# Input: void
# Output: all posts
# Author: Nardeen Milad 

	def index
		@all = Post.find(:all)
	end


# Definition: this method creates post in a group, it takes title and body as an input
# and returns the post created. it redirects to the method index and then to the page
# posts index in the views as each post should have an index.
# Input: title - body 
# Output: post
# Author: Nardeen Milad 

	def create
		@new = Post.new
		@new.title = params[:title]
		@new.text = params[:text]
		@new.save
		redirect_to :action => 'index', :controller=>"posts"
	end


# Definition: this method updates the post posted in a group , it takes id of the post and delete 
# that post and craetes a new one so it is updating that post.  
# Input: id of the post
# Output: post is updated
# Author: Nardeen Milad

	def update
	    @new = Post.new
		@old = Post.find( params[:id] )
		@new.id = @old.id
		@new.text = params[:text]
		@new.title = params[:title]
		@old.destroy
		@new.save
		redirect_to :action => 'index', :controller=>"posts"
	end


# Definition: this method deletes the post in a group ,it takes post id and then destroy it.
# then redirect to the method index which is linked to the index.posts in the views.
# Input: id if the post.
# Output: post is removed.
# Author: Nardeen Milad

	def delete
		Post.find( params[:id] ).destroy
		redirect_to :action => 'index', :controller=>"posts"
	end


# Definition: this method update the input.
# Input: id of the post
# Output: void
# Author: Nardeen Milad

	def input_update
		@new = Post.find( params[:id] )
	end


# Definition: this method creates the input.
# Input: void
# Output: void 
# Author: Nardeen Milad

	def input_create
	end


# Definition: this method redirect to index method which are in post controller 
# Input: void
# Output: void
# Author: Nardeen Milad

	def red
		redirect_to :action => 'index', :controller=>"posts"
	end

end