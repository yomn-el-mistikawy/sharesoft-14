class GroupsController < ApplicationController
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

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group
      @group = Group.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def group_params
      params.require(:group).permit(:name, :group_name, :description)
    end 
end
