class EntitiesController < ApplicationController
  before_action :authenticate_entity!

  # Definition: This method takes from the user the extra information needed according to the entity type. This is done only once.
  # Input: entity id
  # Output: startup, investor, service params
  # Author: Omar El Menawy

  def show
    @entity = Entity.find(params[:id])
  end

  # Definition: This method takes is the startup_params and creates a startup that has the current user entity id. It then sets completed to 1
  # which shows that the entity has completed its profile and a record has been created according to its type.
  # Input: startup_params
  # Output: void
  # Author: Omar El Menawy

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


  # Definition: This method takes is the investor_params and creates an investor that has the current user entity id. It then sets completed to 1
  # which shows that the entity has completed its profile and a record has been created according to its type.
  # Input: investor_params
  # Output: void
  # Author: Omar El Menawy

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


  # Definition: This method takes is the service_params and creates a service that has the current user entity id. It then sets completed to 1
  # which shows that the entity has completed its profile and a record has been created according to its type.
  # Input: service_params
  # Output: void
  # Author: Omar El Menawy

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
   

  # Definition: This method takes is used to permit the usage of the parameters entered by the users.
  # Input: startup
  # Output: startup_params
  # Author: Omar El Menawy

  def startup_params
    params.require(:startup).permit(:number_of_working_years, :sector)
  end
   

  # Definition: This method takes is used to permit the usage of the parameters entered by the users.
  # Input: investor
  # Output: investor_params
  # Author: Omar El Menawy
  
  def investor_params
    params.require(:investor).permit(:contact_information, :sector)
  end
   

  # Definition: This method takes is used to permit the usage of the parameters entered by the users.
  # Input: service
  # Output: service_params
  # Author: Omar El Menawy
  
  def service_params
    params.require(:service).permit(:sector)
  end
end
