class FriendshipController < ApplicationController
	class FriendshipController < ApplicationController

  before_filter :setup_friends

  def accept
    if @user.requested_friends.include?(@friend)
      Friendship.accept(@user, @friend)
      flash[:notice] = "Friendship Accepted"
    else
      flash[:notice] = "No Friendship request"
    end
    redirect_to root_url
  end

  def reject
    if @user.requested_friends.include?(@friend)
      Friendship.breakup(@user, @friend)
      flash[:notice] = "Friendship Declined"
    else
      flash[:notice] = "No Friendship request"
    end
    redirect_to root_url
  end

  # def cancel
  #   if @user.pending_friends.include?(@friend)
  #     Friendship.breakup(@user, @friend)
  #     flash[:notice] = "Friendship Canceled"
  #   elserequested
  #     flash[:notice] = "No Friendship request"
  #   end
  #   redirect_to root_url
  # end

  # def delete
  #   if @user.friends.include?(@friend)
  #     Friendship.breakup(@user, @friend)
  #     flash[:notice] = "Friendship Deleted"
  #   else
  #     flash[:notice] = "No Friendship request"
  #   end
  #   redirect_to root_url
  # end

  def index
    @users = User.all
  end

  #Send a friendship request
  def create
    @friendship = Friendship.new(friendship_params)
    if @friendship.save
   redirect_to(:action => 'index')
    else
   render'new'
    end
  end

  def new
    @friendship = Friendship.new 
  end 



  def friendship_params 
    params.require(:friendship).permit(:response, :receiver)
  end

  private
    def setup_friends
      @user = current_user
      @friend = User.find_by_email(params[:email])
    end
  end


end
