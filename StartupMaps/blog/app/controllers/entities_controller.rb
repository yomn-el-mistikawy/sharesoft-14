class EntitiesController < ApplicationController

  before_action :set_entity, only: [:show, :edit, :update, :destroy]


  # Definition: Finds the status that should be updated.
  # Input: Status.
  # Output: Updated Status.
  # Author: Ola Enaba.
 
  def  edit_status
    @entity = Entity.find(session[:entity_id])
      
  end


  def set_entity
  end

  # Definition: Redirects to the new updated status.
  # Input: Status.
  # Output: Updated Status.
  # Author: Ola Enaba.test/models/entity_work_status_test.rb


  def  update_status
    
    @entity = Entity.find(session[:entity_id]) 
    @status = EntityStatus.create(:Status => params[:status], :entity_id => @entity.id).save
  end


  # Definition: Finds the entity to edit the email and password.
  # Input: Email and Password.
  # Output: Updated email and password.
  # Author: Ola Enaba.
 
  def edit_email_and_password
    @entity = Entity.find(params[:entity_id])
  end
  
  def update_email_and_password
  @entity = Entity.find(params[:entity_id])
    @new = Entity.new
    @new.id = @Entity.id
    @new.name = @Entity.name
    @new.username = @Entity.username
    @new.e_mail = params[:email]
    @new.password = params[:password]
    @new.verification_code = @Entity.verification_code
    @new.location = @Entity.location
    @new.headquarter = @Entity.headquarter
    @new.description = @Entity.description
    @new.password_reset = @Entity.password_reset
    @new.sent_at = @Entity.sent_at
    @new.auth_token = @Entity.auth_token
    @new.created_at = @Entity.created_at

    @entity.delete
   if @new.save

    redirect_to entity_update_email_and_password_path , notice: "Successfully edited"
  else
    render 'edit'
  end



  end

  def update
  end


  # OLA work status
  #def edit_work_status



  # end
 

  #private
  #def entity_params
  #  params.require(:entity).permit(:e_mail, :password)
  #end

 
  
  #Homepage of entities, which lists all created accounts
  # # Adel Zee Badawy
  # def index
  #   @entities = Entity.all
  # end

 #Leads to the show webpages which views created accounts
 # Adel Zee Badawy
  # def show
  # end

  # #Gives access to new accounts
  # # Adel Zee Badawy
  # def new
  #   @account = Entity.new
  # end



 #Creates accounts
 # Adel Zee Badawy
  # def create
  #   @entity = Entity.new(entity_params)

  #   respond_to do |format|
  #     if @entity.save
  #       format.html { redirect_to @entity, notice: 'Entity was successfully created.' }
  #       format.json { render action: 'show', status: :created, location: @entity }
  #     else
  #       format.html { render action: 'new' }
  #       format.json { render json: @entity.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  
  # def update
  #   respond_to do |format|
  #     if @entity.update(entity_params)
  #       format.html { redirect_to @entity, notice: 'Entity was successfully updated.' }
  #       format.json { head :no_content }
  #     else
  #       format.html { render action: 'edit' }
  #       format.json { render json: @entity.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

 #Deletes created accounts
 # Adel Zee Badawy
#   def destroy
#     @entity.destroy
#     respond_to do |format|
#       format.html { redirect_to entities_url }
#       format.json { head :no_content }
#     end
#   end
# #Private disallows the view to use the methods inside, but lets methods in the same controller to use the methods.
# # Adel Zee Badawy
#   private
#     # Use callbacks to share common setup or constraints between actions.
#     # Adel Zee Badawy
#     def set_entity
#       @entity = Entity.find(params[:id])
#     end

#     # Allows the method to read the inputs
#     # Adel Zee Badawy
#     #def entity_params
#       #params.require(:entities).permit(:name, :e_mail, :password)
#     #end

#     def self.request(sender_id, recevier_id)
#     unless sender_id == recevier_id or SendFriendRequest.exists?(sender_id, recevier_id)
#       transaction do
#         create(:sender_id  => sender_id, :recevier_id => recevier_id, :status => 'pending')
#         create(:recevier_id => recevier_id, :sender_id  => sender_id, :status => 'requested')
#       end
#     end
#   end

#    def self.accept(sender_id, recevier_id)
#     transaction do
#       accepted_at = Time.now
#       accept_one_side(sender_id, recevier_id, accepted_at)
#       accept_one_side(recevier_id, sender_id, accepted_at)
#     end
#   end

#   def self.accept_one_side(sender_id, recevier_id, accepted_at)
#     request = find_by_sender_id_and_recevier_id(sender_id, recevier_id)
#     request.status = 'accepted'
#     request.accepted_at = accepted_at
#     request.save!
#   end
 







