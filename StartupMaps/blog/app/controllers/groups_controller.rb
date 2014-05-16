class GroupsController < ApplicationController
  #before_action :set_group, only: [:show, :edit, :update, :destroy]
  
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

  def list_group_members 
    @startup = Startup.find(session[:entity_id])
    if (GroupsStartup.check_membership(Startup.find(session[:entity_id]), Group.find(params[:group_id])).size != 0)
      @group_members = Group.get_group_members(Group.find(params[:group_id]))
    else
      render text: "You are not a group member" 
    end
  end


    # GET /groups
  # GET /groups.json
  def index
    @groups = Group.all
  end

  # GET /groups/1
  # GET /groups/1.json
  def show
    @group = Group.find(params[:id])
  end
  

  # Definition: This method adds join requests in the database.
  # input: group_id and session.
  # output: void.
  # Author: Sherouk A.Said.

  def join_request
    startup = Startup.find_by_entity_id(current_entity.id)
    if JoinRequest.create(:group_id => params[:group_id], :sender_id => startup.id)
      render text: "Request Sent"
    end  
  end

  
  # Definition: This method lists the join requests.
  # input: group_id.
  # output: void.
  # Authour: Sherouk A.Said.

  def list_join_request
    @requester = JoinRequest.get_startups(Group.find(params[:group_id]))
  end 

  
  # Definition: This method accepts join request
  # inserts in table groups_startup the request
  # deletes the request from join request table after the acceptance
  # and checks if the user is the creator.
  # input: group_id requester_id session.
  # output: void.
  # Author: Sherouk A.Said.

  def accept_join_request
    if session[:entity_id] != Group.find(params[:group_id]).creator_id
      render text: "You aren't the creator"
    else  
      GroupsStartup.create(:startup_id => params[:requester], :group_id => params[:group_id])
      if JoinRequest.where(:sender_id => params[:requester], :group_id => params[:group_id]).delete_all
        render text: "request accepted" 
      end
    end  
  end

  
  # Definition: This method rejects join request
  # deletes the request from join request table after the acceptance
  # and checks if the user is the creator.
  # input: group_id requester_id session.
  # output: void.
  # Author: Sherouk A.Said.

  def reject_join_request
    if session[:entity_id] != Group.find(params[:group_id]).creator_id
      render text: "You aren't the creator"
    else  
      if JoinRequest.where(:sender_id => params[:requester], :group_id => params[:group_id]).delete_all
        render text: "request rejected"
      end 
    end       
  end 

  # GET /groups/new
  def new
    @group = Group.new
  end

  # GET /groups/1/edit
  def edit
  end

  # POST /groups
  # POST /groups.json
  def create
    @group = Group.new(group_params)

    respond_to do |format|
      if @group.save
        format.html { redirect_to @group, notice: 'Description Added.' }
        format.json { render action: 'show', status: :created, location: @group }
      else
        format.html { render action: 'new' }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /groups/1
  # PATCH/PUT /groups/1.json
  def update
    respond_to do |format|
      if @group.update(group_params)
        format.html { redirect_to @group, notice: 'Group was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /groups/1
  # DELETE /groups/1.json
  def destroy
    @group.destroy
    respond_to do |format|
      format.html { redirect_to groups_url }
      format.json { head :no_content }
    end
  end 

  end
