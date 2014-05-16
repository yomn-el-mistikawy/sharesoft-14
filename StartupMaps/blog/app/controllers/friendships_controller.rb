class FriendshipsController < ApplicationController
before_action :authenticate_entity!

  def index
    @friendships = Friendship.all
  end

  def show
    @friendship = Friendship.find(params[:id])
  end

  def new
    @friendship = Friendship.new
  end


 def create
    @friendship = Friendship.new(friendship_params)
    @friendship.sender = current_entity.email
      if @friendship.save
        flash[:success] = "Friend request sent."
        redirect_to root_url
      else
        render 'new'
      end
  end

  def destroy
    Friendship.find(params[:id]).destroy
    flash[:success] = "Friend deleted."
    redirect_to friendships_url
  end

  def edit
    @friendship = Friendship.find(params[:id])
  end

    def friendship_params
      params.require(:friendship).permit(:receiver, :sender, :response)
    end

  #    def accept_friend
  #   @friendship = Friendship.find(params[:id])
  #   @friendship.response = true
  #   redirect_to root_url
  # end

  # def reject_friend
  #   @friendship = Friendship.find(params[:id])
  #   @friendship.response = false
  #   redirect_to root_url
  # end
end
