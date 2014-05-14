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



  # Definition: When a startup opens its profile, if new badges is completed,
  # then a message appears showing the new badges achieved. A button will be available
  # to give the owner the option to view the unachieved badges. Moreover, all the
  # achieved badges with highest level are shown for to users viewing the profile.
  # Input: startup_id, session_id.
  # Output: void.
  # Author: Yomn El-Mistikawy.

  # Definition: This method takes from the user the extra information needed according to the entity type. This is done only once.
  # Input: Entity id.
  # Output: Startup, investor, service params.
  # Author: Omar El Menawy.

  def show
    @entity = Entity.find(params[:id])
    if @entity.type == "Startup"
      impressionist(@entity)
      if @entity == current_entity
        @recently_achieved_badges = StartupsBadges.set_badges(params[:id])
        @all_achieved_badges = StartupsBadges.get_achieved_unachieved_badges(params[:id], 1, 1, 1, 0)
      end 
      @achieved_badges = StartupsBadges.get_achieved_unachieved_badges(params[:id], 1, 0, 1, 0)
    end
  end


  # Definition: This is a pop-up page that shows a list of all the unachieved badges.
  # The button directing to it only appears to the profile owner.
  # Input: startup_id, session_id.
  # Output: void.
  # Author: Yomn El-Mistikawy.

  def show_unachieved_badges
    @unachieved_badges_years = StartupsBadges.get_achieved_unachieved_badges(params[:entity_id], 0, 0, 1, "year")
    @unachieved_badges_views = StartupsBadges.get_achieved_unachieved_badges(params[:entity_id], 0, 0, 1, "view")
    @unachieved_badges_targets = StartupsBadges.get_achieved_unachieved_badges(params[:entity_id], 0, 0, 1, "targets")
    @unachieved_badges_requirements = StartupsBadges.get_achieved_unachieved_badges(params[:entity_id], 0, 0, 1, "requirements")
    @unachieved_badges_launched = StartupsBadges.get_achieved_unachieved_badges(params[:entity_id], 0, 0, 1, "launched")
    @unachieved_badges_subscriptions = StartupsBadges.get_achieved_unachieved_badges(params[:entity_id], 0, 0, 1, "subscribe")
    @unachieved_badges_collector = StartupsBadges.get_achieved_unachieved_badges(params[:entity_id], 0, 0, 1, "collector")
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


  # Defintion: View project of the logged-in startup.
  # Input: Startup id.
  # Output: Projects of the startup.
  # Author: Amr Gamal

  def view_projects
    @startup = Startup.find_by_entity_id(params[:entity_id])
    @projects = Project.where(:id => (ProjectsStartup.select(:project_id).where(:startup_id => @startup)))
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



