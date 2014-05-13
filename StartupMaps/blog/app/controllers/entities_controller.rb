class EntitiesController < ApplicationController

  before_action :authenticate_entity!

  # Definition: This method takes from the user the extra information needed according to the entity type. This is done only once.
  # Input: Entity id.
  # Output: Startup, investor, service params.
  # Author: Omar El Menawy.


  def show
    @entity = Entity.find(params[:id])
  end


  # Definition: This method takes is the startup_params and creates a startup that has the current user entity id. It then sets completed to 1
  # which shows that the entity has completed its profile and a record has been created according to its type.
  # Input: Startup_params.
  # Output: Void.
  # Author: Omar El Menawy.

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
  # Input: Investor_params.
  # Output: Void.
  # Author: Omar El Menawy.

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
  # Input: Service_params.
  # Output: Void.
  # Author: Omar El Menawy.

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
  # Input: Startup.
  # Output: Startup_params.
  # Author: Omar El Menawy.

  def startup_params
    params.require(:startup).permit(:number_of_working_years, :sector)
  end
   

  # Definition: This method takes is used to permit the usage of the parameters entered by the users.
  # Input: Investor.
  # Output: Investor_params.
  # Author: Omar El Menawy.
  
  def investor_params
    params.require(:investor).permit(:contact_information, :sector)
  end
   

  # Definition: This method takes is used to permit the usage of the parameters entered by the users.
  # Input: Service.
  # Output: Service_params.
  # Author: Omar El Menawy.
  
  def service_params
    params.require(:service).permit(:sector)
  end
end


  # Definition: Knows the user ID from the params and finds its last work status.
  # Input: Group ID.
  # Output: Changes to online or offline.
  # Author: Ola Enaba.

  def change_company_status
    @startup = Startup.find(params[:startup_id])
    @new = Startup.new
    @new.id =  @startup.id
    @new.longitude =  @startup.longitude
    @new.latitude = @startup.latitude
    @new.initiatior_name = @startup.initiatior_name
    @new.milestones = @startup.milestones
    @new.entity_id = @startup.entity_id
    @new.location = @startup.location
    @new.name = @startup.name
    @new.online_status = @startup.online_status
    @new.launch_status = @startup.launch_status
    @new.joint_ventures = @startup.joint_ventures
    @new.sector = @startup.sector
    @new.number_of_working_years = @startup.number_of_working_years
    @new.created_at = @startup.created_at
    @new.updated_at = @startup.updated_at
    @new.company_status = ! @startup.company_status
    @startup.delete
    if @new.save
      notice = 'successful edit'
    else
      render 'edit'
    end
  end