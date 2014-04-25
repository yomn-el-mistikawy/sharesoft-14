class LikesController < ApplicationController
  
# Defintion: This method enables a group member to like 
# a post or a comment. It takes as input the likable id
# and type and the liker id and the current location to
# redirect back to it and it puts the like in the database.
# Input: likable, id, type, currentaction, currentcontrol.
# Output: None.
# Author: Samar Fikri.

  def like

    @likeableid = params[:likable]
    @liker = params[:id]#cookies[:user_id]
    @type = params[:type]
    @currentAction = params[:currentaction]
    @currentontrol = params[:currentcontrol]

    @new = Like.new
    @new.likable_id = @likeableid
    @new.liker_id = @liker
    @new.likable_type = @type
    @new.save

     redirect_to :action=> @currentAction , :controller => @currentontrol
     return
#<a href="../likes/like?currentcontrol=comment&currentaction=index&type=comment&likable=<%= comment.id%> >dasdsa</a>
#localhost:3000/likes/like?currentcontrol=projects&currentaction=new&type=comment&likable=1&id=2
  end


# Definition: This method just gets the contents of the 
# likes database and groups the similar objects together.
# Inputs: none.
# Outputs: all likes in the database, grouped by the id.
# of the post or comment.
# Author: Samar Fikri.

  def showposts
           @lik = Like.find(:all).group_by(&:likable_id)
  end

end