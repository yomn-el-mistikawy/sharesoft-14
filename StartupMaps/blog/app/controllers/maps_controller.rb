class MapsController < ApplicationController
	
=begin
It shows all the startups attributes in this statment
=end
	def ShowStartUps
		@startups = startup.all
	end
=begin
It shows all the services attributes in this statment
=end
	def ShowServices
		@service = services.all
	end
=begin
It shows all the investors attributes in this statment
=end
	def ShowInvestors
		@investor = investor.all
	end
=begin
It shows all the entities attributes in this statment
=end
	def ShowEntities
		@entity = entity.all
	end
end
