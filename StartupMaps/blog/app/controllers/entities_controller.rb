class EntitiesController < ApplicationController
  before_action :set_entity, only: [:show, :edit, :update, :destroy]

  #Homepage of entities, which lists all created accounts
  # Adel Zee Badawy
  def index
    @entities = Entity.all
  end

 #Leads to the show webpages which views created accounts
 # Adel Zee Badawy
  def show
  end

  #Gives access to new accounts
  # Adel Zee Badawy
  def new
    @account = Entity.new
  end



 #Creates accounts
 # Adel Zee Badawy
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

 #Deletes created accounts
 # Adel Zee Badawy
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
    def entity_params
      params.require(:entity).permit(:name, :email, :password, :availability)
    end

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
end

