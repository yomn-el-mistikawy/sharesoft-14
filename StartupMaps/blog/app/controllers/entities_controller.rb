class EntitiesController < ApplicationController
  before_action :authenticate_entity!

  # Definition: Knows the user ID from the params and finds its last work status.
  # Input: Entity ID.
  # Output: Last updated work status.
  # Author: Ola Enaba.

    def edit_work_status
      @last = EntityWorkStatus.find(:all,:conditions => ['entity_id = ?',params[:entity_id]]).last().workstatus

    end

  
  # Definition: Puts the work status in a vaiable, keeps the entity ID and changes 
  # the work status with the one that the user iserted and puts it in the table.
  # Input: New work status.
  # Output: New work status.
  # Author: Ola Enaba.

    def update_work_status
      @new = EntityWorkStatus.new
      @new.entity_id = params[:entity_id]
      if 
        params[:status] != 'other'
        @new.workstatus = params[:status]
      else
        @new.workstatus = params[:other]
      end
      if 
        @new.save
        @notice = 'successful edit'
      else
        redirect_to :action => 'show'
      end
      redirect_to :action => 'edit_work_status' ,:entity_id => params[:entity_id]
    end


  # Definition: Knows the user ID from the params and finds its last status.
  # Input: Entity ID.
  # Output: Last work status.
  # Author: Ola Enaba.

    def edit_status
      @last = EntityStatus.find(:all,:conditions => ['entity_id = ?',params[:entity_id]]).last().status
    end


  # Definition: Puts the status in a vaiable, keeps the entity ID and changes 
  # the status with the one that the user iserted and puts it in the table.
  # Input: New status.
  # Output: Updated new status.
  # Author: Ola Enaba.
    
    def update_status
      @new = EntityStatus.new
      @new.entity_id = params[:entity_id]
      @new.status = params[:other]    
      if 
        @new.save
        @notice = 'successful edit'
      else
        redirect_to :action => 'show'
      end
    redirect_to :action => 'edit_status',:entity_id => params[:entity_id]
  end


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


  # Definition: Finds the entity that will update the email and password.
  # Input: New email and password.
  # Output: Updated email and password.
  # Author: Ola Enaba.
 
    def edit_email_and_password
      @entity = Entity.find(params[:entity_id])
    end
  

  # Definition: Finds the email and the password of the users who wants to 
  # change them.
  # Input: New email and password.
  # Output: Updated email and password.
  # Author: Ola Enaba.
  
    def update_email_and_password
      @entity = Entity.find(params[:entity_id])
      if 
        @entity.update_attributes(params[:entities].permit(:email, :password)).save
        redirect_to entity_update_email_and_password_path , notice: "Successfully edited"
      else
        render 'edit'
      end
    end


  # Definition: Makes a new entity with the same ID and keep everything that 
  # was in the old entity except the email and password will be updated.
  # Input: New email and password.
  # Output: Updated email and password.
  # Author: Ola Enaba.
    def update_email_and_password
      @entity = Entity.find(params[:entity_id])
      @new = Entity.new
      @new.id = @entity.id
      @new.name = @entity.name
      @new.username = @entity.username
      @new.e_mail = params[:email]
      @new.password = params[:password]
      @new.verification_code = @entity.verification_code
      @new.location = @entity.location
      @new.headquarter = @entity.headquarter
      @new.description = @entity.description
      @new.password_reset = @entity.password_reset
      @new.sent_at = @entity.sent_at
      @new.auth_token = @entity.auth_token
      @new.created_at = @entity.created_at
      @entity.delete
      if
        @new.save
        @notice = 'successful edit'
      else
        render 'edit'
      end
    end


  # Definition: Method to be able to access the show page.
  # Input: Nothing.
  # Output: Nothing.
  # Author: Ola Enaba.
    
    def set_entity
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