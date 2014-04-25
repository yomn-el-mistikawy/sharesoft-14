class StartupsController < ApplicationController

  # Definition: Query on the pending  with the response null.
  # Input:  reciever, response.
  # Output: list of all the pending  of response null.
  # Author: Ziad Abdelkader.

  def list_requests
  	session[:entity_id ] = 2
      @requests = Send_merge_requests.where(:reciever=>  session[:entity_id] , :response => nil)


  end

  def show
  end


  # Definition: Updating the database with response 1.
  # Input:  reciever, sender.
  # Output: Void.
  # Author: Ziad Abdelkader.

  def accept
	
  @sender= Send_merge_requests.find(params[:Send_merge_requests]).update(:response => 1)


  end


  # Definition: Updating the database with response 0.
  # Input:  reciever, sender.
  # Output: Void.
  # Author: Ziad Abdelkader. 

  def reject
			
      
  @sender = Send_merge_requests.find(params[:Send_merge_requests]).update(:response => 0)

			
  end

end