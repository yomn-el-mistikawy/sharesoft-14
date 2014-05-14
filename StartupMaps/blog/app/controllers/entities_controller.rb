class EntitiesController < ApplicationController
  before_action :authenticate_entity!


  # Definition: The show method initializes the variables @entity and @avail, which are both used in the 
  # view. Displays the internship availability in the view. Green square denotes available == true, 
  # and red light denotes available == false. Also updates the database based on the value that is 
  # currently in the table. If it is true, then the column value is changed to false, and vice versa.
  # Input: Entity and EntityAvailableInternship tuples.
  # Output: Variables @entity and @available which are based on the session.
  # Author: Adel Zee Badawy.

  def internship_status
    @entity = Entity.find(current_entity)
    @avail = EntityAvailableInternship.find_by_entity_id(@entity.id)
    if @avail.update_attribute(:available, !@avail.available)
        redirect_to entity_path
        flash.alert = "Successfully changed!"
      else
        flash.alert = "Sorry, couldn't change the status."
      end
  end


  # Definition: The show method initializes the variables @entity and @avail, which are both used in the 
  # view. The parameter (current_entity.id) is being used since the session has not been implemented. Updates the 
  # database based on the value that is currently in the table. If it is true, then the column value
  # is changed to false, and vice versa.

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
