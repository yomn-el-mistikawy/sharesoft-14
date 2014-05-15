class GroupInvitationController < ApplicationController
 # Definition: The page where the username of the invited person can be written.
# Input: void
# Output: void
# Author: Nardeen Milad 

	def invite
    
	end


# Definition: takes a username and returns all from database with the approximate names.
# Input: username of the invited person.
# Output: void
# Author: Nardeen Milad 

	def search
	
		@all = Entity.find(:all, :conditions => ["name like ? AND type = ?","%#{params[:id]}%","Startup"])
		# Users.find(:all,:condition => ('[name = ?]',params[id]))
	
	end

	def create
      @n = Group.new
      @n.name = params[:name]
      @n.description = params[:desc]
      @n.save
      
  	end




# Definition:this method checks if the startup user can be invited or not and if he can
# then invite him. there are some cases to check the validation of the request invited; 
# first check that startup if already invited, if yes then return false. second check 
# if that startup already a member in that group, if yes then return false. otherwise; 
# return true.  
# Input: id of the invited person
# Output: void
# Author: Nardeen Milad 

	def validate
		@invite = true
		
		@one = GroupsStartup.where(:startup_id => params[:id],:group_id => params[:groupid])
		@desc  = params[:groupid]
		
		if @one.count > 0
			@invite = false
			@desc = "user is already in group "
		end
			

		@two = GroupInvitation.where(:receiver_id => params[:id] , :group_id => params[:groupid])
		
		if  @two.count > 0 
				@desc = "invitation was sent"
				@invite = false
		end

		

		if( @invite == true)
			
			@inv = GroupInvitation.new
			@inv.receiver_id = params[:id]
			@inv.sender_id = params[:senderid]
			@inv.group_id = params[:groupid]
			@inv.save

			
		end
	end


# Definition: this method confirms under the condition of id. 
# Input: 
# Output: void
# Author: Nardeen Milad 

	def confirm
		@id = 2
		@all = GroupInvitation.find(:all, :conditions => ["receiver_id = ?", @id ])

	end


# Definition: when the startup accepts the invitation request of a certain group, that group will
# be added to the startup's group list(in the table of startup_has_group) and by taking the id of 
# the startup as an input, that startup id will be remover from the group invitation table. changes
# will redirect to the method inv in the inv_groups_controller. 
# Input: id of the invited person.
# Output: groupName will be added in StartupHasGroup.
# Author: Nardeen Milad 

	def accept
		@all = GroupInvitation.find (params[:id] )
		@new = StartupHasGroup.new
		@new.startup_id = @all.receiver_id
		@new.group_id = @all.group_id
		@new.save
		
		@all.delete
		redirect_to :action => 'inv' 		
	end


# Definition: this method deletes the startup username from the invitation table when the user 
# decline the request sent.
# Input: id of the startup user where is contains the startup's name.
# Output: void
# Author: Nardeen Milad

	def decline
		GroupInvitation.find( params[:id] ).delete
				redirect_to :action => 'inv' 		

	end

end