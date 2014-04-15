class CommentsController < ApplicationController

  def  like_comment
      @commentliked = Comments.find(params[:commentID])
      @userid = GroupMembers.find(params[:memberID])
      user = LikesOfComments.create(liker:userid, commentID: commentliked)

  end
end
