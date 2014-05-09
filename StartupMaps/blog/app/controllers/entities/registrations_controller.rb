class Entities::RegistrationsController < Devise::RegistrationsController
before_action :authenticate_entity!

  def new
    @entity = Entity.new
  end

  def create
    @entity = Entity.create(entity_params)
    if @entity.save
     redirect_to @entity
	  else
		 render action: 'new' 	
    end
  end

  def entity_params
    params.require(:entity).permit(:name, :username, :email, :password, :type, :headquarter, :description, :location)
  end
end

