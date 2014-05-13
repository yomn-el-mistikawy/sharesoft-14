class FriendshipsController < ApplicationController
  before_filter :setup_friends

  def new
    @friendship = Friendship.new 
  end 

  def accept
    if @entity.requested_friends.include?(@friend)
      Friendship.accept(@entity, @friend)
      flash[:notice] = "Friendship Accepted"
    else
      flash[:notice] = "No Friendship request"
    end
    redirect_to root_url
  end

  def reject
    if @entity.requested_friends.include?(@friend)
      Friendship.breakup(@entity, @friend)
      flash[:notice] = "Friendship Declined"
    else
      flash[:notice] = "No Friendship request"
    end
    redirect_to root_url
  end

  def cancel
    if @entity.pending_friends.include?(@friend)
      Friendship.breakup(@entity, @friend)
      flash[:notice] = "Friendship Canceled"
    else 
      flash[:notice] = "No Friendship request"
    end
    redirect_to root_url
  end

  def delete
    if @entity.friends.include?(@friend)
      Friendship.breakup(@entity, @friend)
      flash[:notice] = "Friendship Deleted"
    else
      flash[:notice] = "No Friendship request"
    end
    redirect_to root_url
  end

  def index
    @entities = Entity.all
  end

  #Send a friendship request
  def create
    @friendship = Friendship.new(setup_friends)
    @friendship.sender = @entity
    @friendship.receiver = @friend
    @friendship.save
    redirect_to @friendship
   #  if @friendship.save
   # redirect_to(:action => 'index')
   #  else
   # render'new'
   #  end
  end

  def friendship_params 
    params.require(:friendship).permit(:response, :receiver)
  end

  private
    def setup_friends
      @entity = current_entity
      @friend = Entity.find_by_email(params[:email])
    end
end

