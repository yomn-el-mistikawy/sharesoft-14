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

  def friends
    @title = "Friends"
    @user = User.find(params[:id])
    @users = @user.friends.paginate(:page => params[:page])
    render 'show_friends'
  end

  def pending_friends
    @title = "Pending friends"
    @user = User.find(params[:id])
    @users = @user.pending_friends.paginate(:page => params[:page])
    render 'show_friends'
  end

  def requested_friends
    @title = "Requested friends"
    @user = User.find(params[:id])
    @users = @user.requested_friends.paginate(:page => params[:page])
    render 'show_friends'
  end
end

