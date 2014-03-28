class GeographicalLocationGroupsController < ApplicationController

	def new
	end

 # this method creates a new group and saves it given the location as input from the user
 # input: string location
 # author: Maha Salah
def create
  @geo = GeographicalLocationGroup.new(params[:GeographicalLocationGroups])
  
  @geo.save 
  redirect_to @geo 
end

end
