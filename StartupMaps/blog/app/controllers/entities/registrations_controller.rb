class Entities::RegistrationsController < Devise::RegistrationsController
  before_action :authenticate_entity!

  # Definition: This method takes the entity information in a text field and saves it in a parameter.
  # Input: Void.
  # Output: Entity_params.
  # Author: Omar El Menawy.

  def new
    @entity = Entity.new
  end

  
  # Definition: This method takes the entity params from action new and creats an entity with the entries from the user.
  # It then sends an email to the user to confirm the sign up and redirects to the user's profile.
  # Input: Entity_params.
  # Output: Entity_id.
  # Author: Omar El Menawy.

  def create
    @entity = Entity.create(entity_params)
    if @entity.save
      redirect_to @entity
    else
      render action: 'new' 	
    end
  end


  # Definition: This method takes the entity params from action edit and updates the entity information. 
  # Input: Entity params, current_entity.
  # Output: Entity id. 
  # Author: Omar El Menawy.

  def update 
    @entity = Entity.find(current_entity.id)
    if @entity.update(entity_params)
      redirect_to @entity
    else
      render 'edit'
    end
  end 


  # Definition: This method takes is used to permit the usage of the parameters entered by the users.
  # Input: Entity.
  # Output: Entity_params.
  # Author: Omar El Menawy.

  private
  def entity_params
    params.require(:entity).permit(:name, :username, :email, :password, :type, :headquarter, :description, :location)
  end
end