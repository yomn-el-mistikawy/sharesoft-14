class InvestorController < ApplicationController
	def index 
	end

	def show
	end
	
	def search 
		@search_value = params[:id]
	end

	def searching
		@name=@search_value
		@investor= Investor.where(:name=>@name)
		redirect @name
	end
end