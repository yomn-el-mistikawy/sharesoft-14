class EntitiesController < ApplicationController

  before_action :set_entity, only: [:show, :edit, :update, :destroy]


  Homepage of entities, which lists all created accounts
  # Adel Zee Badawy
  def index
    @entities = Entity.all
  end

 Leads to the show webpages which views created accounts
 Adel Zee Badawy
  def show
  end

  #Gives access to new accounts
  # Adel Zee Badawy
  def new
    @account = Entity.new
  end



 Creates accounts
 Adel Zee Badawy
  def create
    @entity = Entity.new(entity_params)

    respond_to do |format|
      if @entity.save
        format.html { redirect_to @entity, notice: 'Entity was successfully created.' }
        format.json { render action: 'show', status: :created, location: @entity }
      else
        format.html { render action: 'new' }
        format.json { render json: @entity.errors, status: :unprocessable_entity }
      end
    end
  end

  
  def update
    respond_to do |format|
      if @entity.update(entity_params)
        format.html { redirect_to @entity, notice: 'Entity was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @entity.errors, status: :unprocessable_entity }
      end
    end
  end

 Deletes created accounts
 Adel Zee Badawy
  def destroy
    @entity.destroy
    respond_to do |format|
      format.html { redirect_to entities_url }
      format.json { head :no_content }
    end
  end
#Private disallows the view to use the methods inside, but lets methods in the same controller to use the methods.
# Adel Zee Badawy
  private
    # Use callbacks to share common setup or constraints between actions.
    # Adel Zee Badawy
    def set_entity
      @entity = Entity.find(params[:id])
    end

    # Allows the method to read the inputs
    # Adel Zee Badawy
    #def entity_params
      #params.require(:entities).permit(:name, :e_mail, :password)
    #end

    def self.request(sender_id, recevier_id)
    unless sender_id == recevier_id or SendFriendRequest.exists?(sender_id, recevier_id)
      transaction do
        create(:sender_id  => sender_id, :recevier_id => recevier_id, :status => 'pending')
        create(:recevier_id => recevier_id, :sender_id  => sender_id, :status => 'requested')
      end
    end
  end

   def self.accept(sender_id, recevier_id)
    transaction do
      accepted_at = Time.now
      accept_one_side(sender_id, recevier_id, accepted_at)
      accept_one_side(recevier_id, sender_id, accepted_at)
    end
  end

  def self.accept_one_side(sender_id, recevier_id, accepted_at)
    request = find_by_sender_id_and_recevier_id(sender_id, recevier_id)
    request.status = 'accepted'
    request.accepted_at = accepted_at
    request.save!
  end


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






