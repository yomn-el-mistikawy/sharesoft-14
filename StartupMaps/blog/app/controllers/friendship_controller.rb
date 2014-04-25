class FriendshipController < ApplicationController
  

  # Definition: searches for the desired user id, and saves it. The method also calls the method request 
  # from the model friend ship to update the database.
  # Input: user id (seesion id), friend id. 
  # Output: void.
  # Author: Sarah Fathallah.

  def create
    @user = Entity.find(params[:friendship][:friend_id])
    Friendship.request(current_user, @user)
    respond_to do |format|
      format.html { redirect_to @user }
      format.js
    end
  end
  

  # Definition: checks if there is a request and calls the accept method from the model if the accept button is 
  # clicked. 
  # Input: user id (seesion id), friend id. 
  # Output: void.
  # Author: Sarah Fathallah.

  def update
    @user = Friendship.find_by_id(params[:id]).friend
    if current_user.requested_friends.include?(@user)
      Friendship.accept(current_user, @user)
    end
    respond_to do |format|
      format.html { redirect_to @user }
      format.js
    end
  end


  # Definition: checks if there is a request and calls the breakup method from the model to remove the friendship if 
  # it is pending, requested or already done.
  # Input: user id (seesion id), friend id. 
  # Output: void.
  # Author: Sarah Fathallah.

  def destroy
    @user = Friendship.find_by_id(params[:id]).friend
    if current_user.requested_friends.include?(@user)
      Friendship.breakup(current_user, @user)
    elsif current_user.pending_friends.include?(@user)
      Friendship.breakup(current_user, @user)
    elsif current_user.friends.include?(@user)
      Friendship.breakup(current_user, @user)
    end
    respond_to do |format|
      format.html { redirect_to @user }
      format.js
    end
  end
end
