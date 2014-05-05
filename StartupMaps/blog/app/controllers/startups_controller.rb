class StartupsController < ApplicationController
	def update_company_status
      @startup = Startup.find(params[:startup_id])
      @new = Startup.new
      @new.id = @startup.id
      @new.longitude = @startup.longitude
      @new.latitude = @startup.latitude
      @new.initiatior_name = @startup..initiatior_name
      @new.milestones = @startup.milestones
      @new.entity_id = @startup.entity_id
      @new.location = @startup.location
      @new.name = @startup.name
      @new.online_status = params[:online_status]
      @new.launch_status = @startup.launch_status
      @new.joint_ventures = @startup.joint_ventures
      @new.sector = @startup.sector
      @new.number_of_working_years = @startup.number_of_working_years
      @new.created_at = @startup.created_at
      @new.updated_at = @startup.updated_at
      @entity.delete
      if
        @new.save
        @notice = 'successful edit'
      else
        render 'edit'
      end
    end
end
