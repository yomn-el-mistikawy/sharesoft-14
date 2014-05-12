class GroupStartupsController < ApplicationController
	def index
		    @groups = Group.all

    end
    def join_group
      #@group_startup.create
  @startup_id=current_entity.id
  #GroupStartup.create(group_id: params[:group_id], user_id: @user_id)
  @group_startup=GroupStartup.new(group_id: params[:group_id], startup_id: @startup_id)


    end
    def leave_group
       @group_startup.destroy
    respond_to do |format|
      format.html { redirect_to group_startups_url }
      format.json { head :no_content }
    end

    end

    def create
    @startup_id=1
  #GroupStartup.create(group_id: params[:group_id], user_id: @user_id)

  @group_startup=GroupStartup.new(group_id: params[:group_id], startup_id: @startup_id)
  if @group_startup.save
      respond_to do |format|
      if @group_startup.save
        format.html { redirect_to @group_startup, notice: 'You Have Successfully Joined Group' }
       #format.json { render action: 'show', status: :created, location: @group }
    end
    end

   end
    end

    def check_group_startups
    if GroupStartup.where(:group_id => params[:group_id],:startup_id => @startup_id).present?
return false
else
return true
end
end

def show
end


end
