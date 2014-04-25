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
    @entity = Entity.new
  end

  def verification
  end

  # Definition: Compares inputted code with the code in the Database.
  # Input: String inputted by user and code from DB.
  # Output: Boolean.
  # Author: Omar El-Menawy

  def verification_code_comparison
    if Entity.where(@current_user.verification_code => params.require[:entity].permit(:verification_code))
      render action: 'show'
    else
      render action: 'new'
    end
  end


 #Creates accounts
 # Adel Zee Badawy

  # Definition: Added random code for verification for code before save and sent welcome_email after save.
  # Input: Entity.
  # Output: Email.
  # Author: Omar El-Menawy

  def create
    @entity = Entity.new(entity_params)

    respond_to do |format|
      @entity.verification_code = rand(999)
      if @entity.save
        UserMailer.welcome_email(@entity).deliver
        format.html {render action: 'verification', notice: 'Sign up was successfully created.'}
      else
        format.html {render action: 'new'}
        format.json {render json: @entity.errors, status: :unprocessable_entity}
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
      params.require(:entity).permit(:name, :username, :email, :password, :availability, :verification_code)
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

