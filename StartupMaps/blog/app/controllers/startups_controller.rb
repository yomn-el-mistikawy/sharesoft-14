class StartupsController < ApplicationController

	def create
		@newgeo_id = create_geo_group(startup_params[:location])
		create_groups_startups(startup_params[:name], @newgeo_id)
 	end

    def update
    	if @startup.update_attribute(:location, @startup.location)
      		@newgeo_id = create_geo_group(startup_params[:location])
      		create_groups_startups(startup_params[:name], @newgeo_id)
    	end
	end

	def destroy 
    	@location = @startup.location
    	@id = @startup.id
    	destroy_groups_startups(@id)
    	destroy_geo_group(@location)
 	end

end
