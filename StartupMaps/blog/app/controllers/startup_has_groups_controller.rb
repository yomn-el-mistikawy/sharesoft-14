class StartupHasGroupsController < ApplicationController
  before_action :set_startup_has_group, only: [:show, :edit, :update, :destroy]
  
  # Definition: On startup shows all the startups and their groups 
  # Input: none
  # Output: List of startups and groups
  # Author: Essam Azzam

  def index
    @startup_has_groups = StartupHasGroup.all
  end


  # Definition: Creates an instance variable of Startup has group
  # Input: startup_id, group_id
  # Output: startup_has_group
  # Author: Essam Azzam
  
  def new
    @startup_has_group = StartupHasGroup.new
  end

  # Definition: Creates a new record in the table StartupHasGroup 
  # Input: startup_has_group
  # Output: void
  # Author: Essam Azzam

  def create
    @startup_has_group = StartupHasGroup.new(startup_has_group_params)
    respond_to do |format|
      if @startup_has_group.save
        format.html { redirect_to @startup_has_group, notice: 'Startup has group was successfully created.' }
        format.json { render action: 'show', status: :created, location: @startup_has_group }
      else
        format.html { render action: 'new' }
        format.json { render json: @startup_has_group.errors, status: :unprocessable_entity }
      end
    end
  end


  # Definition: Updates the record of Start
  # Input: 
  # Output: 
  # Author: Essam Azzam

  def update
    respond_to do |format|
      if @startup_has_group.update(startup_has_group_params)
        format.html { redirect_to @startup_has_group, notice: 'Startup has group was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @startup_has_group.errors, status: :unprocessable_entity }
      end
    end
  end

  
  # Definition: Deletes the chosen record from the table StartupHasGroup
  # Input: startup_has_group
  # Output: void
  # Author: Essam Azzam

  def destroy
    @startup_has_group.destroy
    respond_to do |format|
      format.html { redirect_to startup_has_groups_url }
      format.json { head :no_content }
    end
  end

  private
   
   
  # Definition: finds the id of a given startup
  # Input: id
  # Output: startup_has_group
  # Author: Essam Azzam

  def set_startup_has_group
   @startup_has_group = StartupHasGroup.find(params[:id])
  end

  # Definition: Returns the parameters of the given staruphasgroup
  # Input: startup_has_grou
  # Output: startupID, groupID
  # Author: Essam Azzam

  def startup_has_group_params
   params.require(:startup_has_group).permit(:startupID, :groupID)
  end


end
