class EntitiesController < ApplicationController
  before_action :set_entity, only: [:show, :edit, :update, :destroy]


  def  index
  end


  def show
    @entity = Entity.find(1)
  end


  def new
    @entity = Entity.new
  end

  def set_entity
  end


  # Definition: This method creates an input in the table entity and in the table corresponding to the 
  # entity type. The inputs are taken in the form of text and dropdown lists, and insert into the
  # database the input provided.
  # Input: Name, Password, Email, Entity Type.
  # Output: Void.
  # Author: Adel Badawy.

  def  create
    @entity = Entity.new(entity_params)
    type = entity_params[:type]
    name = entity_params[:name]
    p name
    p type
    
    respond_to do |format|
      if @entity.save
        if type = '1'
          @x = Investor.create(:name => entity_params[:name], :location => entity_params[:location],
            :entity_id => @entity.id).save
        elsif type = '2'
          @x = Investor.create(:name => entity_params[:name], :location => entity_params[:location],
            :entity_id => @entity.id).save
        elsif type = '3'
          @x = Investor.create(:name => entity_params[:name], :location => entity_params[:location],
            :entity_id => @entity.id).save
        end            
        format.html {redirect_to root_path, notice: 'Entity was successfully created.'}
        format.json {render action: 'index', status: :created, location: @entity}
      else
        format.html {render action: 'new' }
        format.json {render json: @entity.errors, status: :unprocessable_entity}
      end
    end
  end


  private


    # Definition: This method passes the parameters for use by the model and the controller, including the
    # attributes password confirmaion and type.
    # Input: Name, Email, Password, Password Confirmation, Type.
    # Output: Void.
    # Author: Adel Zee Badawy.

    def entity_params
      params.require(:entity).permit(:name, :e_mail, :password, :password_confirmation, :type, :location)
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

