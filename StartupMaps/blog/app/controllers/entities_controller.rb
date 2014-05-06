class EntitiesController < ApplicationController
before_action :set_entity, only: [:show, :edit, :update, :destroy]

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
end