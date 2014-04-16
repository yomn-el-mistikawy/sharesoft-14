class GroupMembersController < ApplicationController
  before_action :search_group_member, only: [:show, :edit, :update, :destroy]
  
    
  def index
    @group_members = GroupMember.all
  end
  

  # Definition: takes the input from the user
  # Input: user_name, group_name
  # Output: none
  # Author: Essam Azzam

  def new
    @group_member = GroupMember.new
  end

  
  # Definition: Creates a new record in the database with the input given
  # Input: group_member
  # Output: void
  # Author: Essam Azzam

  def create
    @group_member = GroupMember.new(group_member_params)
    respond_to do |format|
      if @group_member.save
        format.html { redirect_to @group_member, notice: 'Group member was successfully created.' }
        format.json { render action: 'show', status: :created, location: @group_member }
      else
        format.html { render action: 'new' }
        format.json { render json: @group_member.errors, status: :unprocessable_entity }
      end
    end
  end
  

  # Definition: Edits the chosen group member
  # Input: @group_member
  # Output: void
  # Author: Essam Azzam
  

  def update
    respond_to do |format|
      if @group_member.update(group_member_params)
        format.html { redirect_to @group_member, notice: 'Group member was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @group_member.errors, status: :unprocessable_entity }
      end
    end
  end


  # Definition: deletes the group_members record chosen by the user
  # Input: group_member
  # Output: void
  # Author: Essam Azzam


  def destroy
    @group_member.destroy
    respond_to do |format|
      format.html { redirect_to group_members_url }
      format.json { head :no_content }
    end
  end


  private
    
    # Definition: returns the pressed group member
    # Input: id
    # Output: group_member

    def search_group_member
      @group_member = GroupMember.find(params[:id])
    end
     
    # Definition: gets the parameters of the group member controller
    # Input: 
    # Output:
    # Author: Essam Azzam
    
    def group_member_params
      params.require(:group_member).permit(:UserName, :GroupName)
    end

end

