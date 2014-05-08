class EntitiesController < ApplicationController
  
  # Definition: Query on the pending  with the response null.
  # Input:  reciever, response.
  # Output: list of all the pending  of response null.
  # Author: Ziad Abdelkader.

  def list_requests
    @senders = Send_merge_request.get_sender(params[:entity_id])
  end  

  def show
    @entity = Entity.find(params[:id])
  end


  # Definition: Updating the database with response 1.
  # Input:  reciever, sender.
  # Output: void.
  # Author: Ziad Abdelkader.

  def accept_merge_request
   @accept = Send_merge_request.accept(params[:entity_id], params[:requester], 1)
  end


  # Definition: Updating the database with response 0.
  # Input:  reciever, sender.
  # Output: void.
  # Author: Ziad Abdelkader. 

  def reject_merge_request   
   @reject = Send_merge_request.accept(params[:entity_id], params[:requester], 0)
  end
end

