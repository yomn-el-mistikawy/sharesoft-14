class GroupsController < ApplicationController
  before_action :set_group, only: [:show, :edit, :update, :destroy]

  
  # Defintion: This method lists all groups.
  # Input: void.
  # Output: 
  # Author: Sherouk A.Said.

  def index
    @groups = Group.all
  end

  
  # Definition: This method shows the group.
  # Input: void.
  # Output: Group.
  # Author: Sherouk A.Said.

  def show
    @group = Group.find(params[:id])
  end


  # Definition: This method creates a group.
  # Input: void.
  # Output: name, description, location, private, interest.
  # Author: Sherouk A.Said.

  def new
  end

  
  # Definition: This method edits a group.
  # Input: void.
  # Output: Group.
  # Author: Sherouk A.Said.

  def edit
    @group = Group.find(params[:id])
  end


  # Definition: This method creates a group.
  # Input: name, description, location, private, interest.
  # Output: void.
  # Author: Sherouk A.Said.

  def create
    group = Group.new
    group.creator_id = current_entity.id
    group.name = params[:name] 
    group.description = params[:description] 
    group.private = params[:private]
    group.interest = params[:interests]
    group.save
  end
  

  # Definition: This method edits a group.
  # Input: name, description.
  # Output: void.
  # Author: Sherouk A.Said.

  def update
    @group = Group.find(params[:id])
    if @group.update(group_params)
      redirect_to @group
    else
      render 'edit'
    end
  end

 
 # Definition: This method deletes a group.
 # Input: void.
 # Output: void.
 # Author: Sherouk A.Said.

  def destroy
    @group = Group.find(params[:id])
    @group.destroy
    respond_to do |format|
      format.html {redirect_to :back}
      format.json {head :no_content}
    end
  end

 
  private
  def group_params
    params.require(:group).permit(:name, :description)
  end

 
  def set_group
  end 
end