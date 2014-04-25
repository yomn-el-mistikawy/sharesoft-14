class MapsController < ApplicationController
	# Definition: This method puts into the variable result the input of the user and
# compare it with all startups that has the same number of year. 
# Input: year.
# Output: all startups with the right number of working year.
# Author: Sandra Youssef.
	def take_numberOfYears
    @result = params[:year]
  end

  def list_startups
  	  
    @result = Startups.where(number_of_working_years: params[:year])
  	 
    
  end
end
