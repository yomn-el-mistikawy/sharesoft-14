class GroupStartupsController < ApplicationController
	def index
		    @groups = Group.all

    end

    def create
    @startup_id=1
  #GroupStartup.create(group_id: params[:group_id], user_id: @user_id)
  @group_startup=GroupStartup.new(group_id: params[:group_id], startup_id: @startup_id)
  if @group_startup.save
       #format.html { redirect_to @group_startup, notice: 'You have successfully joined group' }
       #redirect_to("groups")
       #format.json { render action: 'show', status: :created, location: @group }
   end
    end

    def check_group_startups
    if GroupStartup.where(:group_id => params[:group_id],:startup_id => @startup_id).present?
return true
else
	return false
end
    end
end
