class StartupsController < ApplicationController
	def index
  @comp = Startups.all
end


def list
	#render text: params[:startup].inspect
	@res = Startups.where(:NumberOfYears =>params[:snumber_of_working_years])
end




def show
end
end
