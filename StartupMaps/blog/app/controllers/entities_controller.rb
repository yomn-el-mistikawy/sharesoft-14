class EntitiesController < ApplicationController
	before_action :authenticate_entity!

	def show
		@entity = Entity.find(params[:id])
	end

	def create_startup
		@startup = Startup.create(startup_params)
		@startup.update(:entity_id => params[:entity_id])
		if @startup.save
			current_entity.update(:completed => 1)
			redirect_to root_url
		else 
			redirect_to root_url
		end
    end

       def create_investor
		@investor = Investor.create(investor_params)
		@investor.update(:entity_id => params[:entity_id])
		if @investor.save
			current_entity.update(:completed => 1)
			redirect_to root_url
		else 
			redirect_to root_url
		end
    end	

    def create_service
		@service = Service.create(service_params)
		@service.update(:entity_id => params[:entity_id])
		if @service.save
			current_entity.update(:completed => 1)
			redirect_to root_url
		else 
			redirect_to root_url
		end
    end
   
  
   def startup_params
     params.require(:startup).permit(:number_of_working_years, :sector)
   end

   def investor_params
     params.require(:investor).permit(:contact_information, :sector)
   end

   def service_params
     params.require(:service).permit(:sector)
   end
end
