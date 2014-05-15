class EventMembersController < ApplicationController
  before_action :set_event_member, only: [:show, :edit, :update, :destroy]

  # GET /group_members
  # GET /group_members.json
  def index
    @event_members = EventMember.all
  end

  # GET /group_members/1
  # GET /group_members/1.json
  def show
  end

  # GET /group_members/new
  def new
    @event_member = EventMember.new
  end

  # GET /group_members/1/edit
  def edit
  end

  # POST /group_members
  # POST /group_members.json
  def create
    @event_member = EventMember.new(event_member_params)

    respond_to do |format|
      if @event_member.save
        format.html { redirect_to @event_member, notice: 'Event member was successfully created.' }
        format.json { render action: 'show', status: :created, location: @event_member }
      else
        format.html { render action: 'new' }
        format.json { render json: @event_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /group_members/1
  # PATCH/PUT /group_members/1.json
  def update
    respond_to do |format|
      if @event_member.update(event_member_params)
        format.html { redirect_to @event_member, notice: 'Event member was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @event_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /group_members/1
  # DELETE /group_members/1.json
  def destroy
    @event_member.destroy
    respond_to do |format|
      format.html { redirect_to event_members_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_member
      @event_member = EventMember.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_member_params
      params.require(:event_member).permit(:enitity_id, :datejoined, :eventcreator)
    end
end
