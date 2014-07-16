class GroupsController < ApplicationController
 before_action :authenticate_entity!
 before_action :set_group, only: [:show, :edit, :update, :destroy]
  
# Defintion: This method takes the session id
 # and group id, then checks if the logged in
 # entity is a group member. If it is a group member
 # then it calls get_group_members function to get a list
 # of group members and shows it in list_group_members view,
 # else a message appears stating that the
 # entity isn't a group member.
 # Input: entity_id, group_id
 # Output: list of group members
 # Author: Yomn El-Mistikawy
 # Modified By: Mina Ashraf

  def list_group_members
    @startup = Startup.find_by_entity_id(current_entity.id)
    if (GroupsStartup.check_membership(Startup.find_by_entity_id(current_entity.id), Group.find(params[:group_id])).size != 0)
      @group_members = Group.get_group_members(Group.find(params[:group_id]))
    end
  end
  
  def index
    @groups = Group.all
    @groups = @groups.paginate(:page => params[:page])
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
    if group.save
      redirect_to group
    end  
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
