class PostsController < ApplicationController
	# Definition: show the posts in ascending order accroding to date
# Input: no input
# Output: posts records  
# Author: Amr Gamal
	def sort_asc
		@posts = Post.order("date ASC").all
	end

# Definition: show the posts in descending order accroding to date
# Input: no input
# Output: posts records  
# Author: Amr Gamal
	def sort_desc
		@posts = Post.order("date DESC").all
	end

# Definition: direct to a view containing bottuns to select how posts are ordered
# Input: no input
# Output: no output 
# Author: Amr Gamal
	def choose_order
	end
end
