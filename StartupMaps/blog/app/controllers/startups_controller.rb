class StartupsController < ApplicationController
	
=begin
	this method takes all the name from the startup
	author:sanddra
	=end
	def index
  @comp = Startups.all
end

=begin
	this method takes as a parameter the number of year
	author :sandra
	
=end
def list
	#render text: params[:startup].inspect
	@res = Startups.where(:Startups =>params[:snumber_of_working_years])
end




def show
end
end
