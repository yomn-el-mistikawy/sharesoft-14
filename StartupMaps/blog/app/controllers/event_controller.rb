class EventController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  
  # Defintion: This method takes the session id 
  # and group id, then checks if the logged in
  # entity is a group member. If it is a group member
  # then it calls get_group_members function to get a list
  # of group members and shows it in list_group_members view,
  # else a message appears stating that the 
  # entity isn't a group member. 
  # Input: entity_id, group_id
  # Output: list of group members
  # Author: Yomn El-Mistikawy

  def list_event_members 
  
        @event = Event.find(session[:entity_id])

      @event_members = Event.get_event_members(params[:event_id], session[:entity_id])
  end


    # GET /groups
  # GET /groups.json
  def index
    @events = Event.all
  end

  # GET /groups/1
  # GET /groups/1.json
  def show
  end

  # GET /groups/new
  def new
  @event = Event.new
    if params[:creator_id].present? 
    @event.creator_id = params[:creator_id]
    end
    if params[:name].present? 
    @event.name = params[:name] 
    end
    if params[:description].present? 
    @event.description = params[:description] 
    end
    if params[:start_time].present? 
    @event.start_time = params[:start_time] 
    end
    if params[:end_time].present? 
    @event.end_time = params[:end_time] 
    end
    @event.save 
  end

  # GET /groups/1/edit
  def edit
  end

  # POST /event
  # POST /event.json
  def create 

  
  end


  # PATCH/PUT /groups/1
  # PATCH/PUT /groups/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /groups/1
  # DELETE /groups/1.json
  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    respond_to do |format|
      format.html { redirect_to event_index_url }
      format.json { head :no_content }
    end
  end 

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(session[:entity_id])

    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:name,:start_time, :end_time, :description)
    end 
end
