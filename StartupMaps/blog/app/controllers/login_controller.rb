class LoginController < ApplicationController


  # Definition: If cookies is present then you have logged in then i should salout you , select all entities.
  # Find all usernames and passwords if not saved, and check is password equals the one from the db.
  # If yes save them in the cookies with username and id then salout
  # Input: Void.
  # Output: The welcome message or wrong username.
  # Author: Tharey.

  def  in
  	@salout = ""
  	if ( cookies[:username] != nil)
  		@salout = "welcome " + cookies[:username]
  	else
  		@var = Entity.find(:all)
  		@salout = "Wrong username or password"
  		@var.each do |v|
  			if(v.username == params[:username])
  				if(v.password == params[:password])
  					cookies[:username] = v.username
  					cookies[:userid] = v.id
  					@salout = "you have looged in " + v.username
  					redirect_to :action => 'in'
  					return
  				end
  			end
  		end
  	end
  end


  # Definition: Deletes previosly created cookies.
  # Input: Void.
  # Output: Void.
  # Author: Tharey.

   def  logout
     cookies.delete :username
     cookies.delete  :userid
   end 
end