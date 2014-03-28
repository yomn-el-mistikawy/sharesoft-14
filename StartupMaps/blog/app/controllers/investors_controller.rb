class InvestorController < ApplicationController
	def index 
	end
#Displays the investor
	def show
	end
#gets the search value from the user
	def search 
		@search_value = params[:id]
	end
#searches for the desired investor
	def searching
		@name=@search_value
		@investor= Investor.where(:name=>@name)
		redirect @name
	end
end