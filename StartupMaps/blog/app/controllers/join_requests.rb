class JoinRequestsController < ApplicationController
	def new
	end

	def create
  @request = JoinRequest.new(JoinRequest_params)
 
  @request.save
  redirect_to @request
end 

end
