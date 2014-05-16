class FriendshipsController < ApplicationController
def index
    @entity = current_entity
    @Friendships = Friendship.order("created_at desc")
    respond_to do |format|
      format.html
      format.json { render json: @Friendships }
    end
  end

  def show 
    @Friendship = Friendship.find(params[:id])
    @entity = current_entity
    if (@entity.email == @Friendship.sender) || (@entity.email == @Friendship.recepient)
    else
      respond_to do |format|
        format.html { redirect_to :action => :index, notice: 'No Friendship found' }
        format.json { render json: @Friendship.errors, status: :unprocessable_entity }
      end
    end
  end

  def new
    @Friendship = Friendship.new
  end

  def create
    @Friendship = Friendship.new(params[:Friendship])
    @Friendship.sender = current_entity.email
    @Friendship.savess
    ss
    respond_to do |format|
      if @Friendship.save
        format.html { redirect_to :action => :index, notice: 'Friendship has been sent.' }
        format.json { render json: @Friendships }
      else
        format.html { redirect_to :action => :new, notice: 'Error: Please try again.' }
        format.json { render json: @Friendship.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @Friendship = Friendship.find(params[:id])
    @Friendship.destroy
    respond_to do |format|
      format.html { redirect_to :back }
      format.json { head :no_content }
    end
  end
end

