class StartupsController < ApplicationController
  before_action :set_startup, only: [:show, :edit, :update, :destroy]

# Please note that any code code that is 
# not written above it a comment and "Author: Maha Salah Eldin" is not part of my user story 
# and is just added for testing purposes in order to get my code reviewed by scenario reviwers.
# This is due to the delay in merging the user stories my user story is depenedent on.

  def index
    @startups = Startup.all
  end

  def show
  end

  def new
    @startup = Startup.new
  end

  def edit
  end

  def create
    @startup = Startup.new(startup_params)
    # The following line calls mthod create_geo_group from the application helper 
    #in order to create a geographic group for the inserted location, if it doesn't already exist.
    # Author: Maha Salah Eldin.
    @newgeo_id = create_geo_group(startup_params[:location])

    respond_to do |format|
      if @startup.save
        format.html { redirect_to @startup, notice: 'Startup was successfully created.' }
        format.json { render action: 'show', status: :created, location: @startup }
      else
        format.html { render action: 'new' }
        format.json { render json: @startup.errors, status: :unprocessable_entity }
      end
    end
    # The following line calls method create_groups_startups from the application controller
    # in order to add the startup to the corresponding geographic group.
    # Author: Maha Salah Eldin.
    create_groups_startups(startup_params[:name], @newgeo_id)
  end

  
  def update
    respond_to do |format|
    # The following if block checks if the user updated his location, if yes then create_geo_groups method and 
    # create_groups_startups are called,  thus, creating a group for the new location if it doesn't exist, 
    # and adding the startup to it.
    # Author: Maha Salah Eldin.
      if @startup.update_attribute(:location, @startup.location)
        @newgeo_id = create_geo_group(startup_params[:location])
        create_groups_startups(startup_params[:name], @newgeo_id)
      end

      if @startup.update(startup_params)
        format.html { redirect_to @startup, notice: 'Startup was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @startup.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    # The following 2 lines line save the location and the id of the startup before it is destroyed.
    # Author: Maha Salah Eldin.
    @location = @startup.location
    @id = @startup.id
    @startup.destroy 
    # The following 2 lines call methods destroy_groups_startups and destroy_geo_group 
    # from the apllication helper in order to destroy remove the destryed startup from all groups,
    # and destroy the geograohic group the destryed startup belongs to 
    # in case it was the only startup in this group.
    # Author : Maha Salah Eldin.
    destroy_groups_startups(@id)
    destroy_geo_group(@location)

    respond_to do |format|
      format.html { redirect_to startups_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_startup
      @startup = Startup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def startup_params
      params.require(:startup).permit(:name, :location)
    end
end

