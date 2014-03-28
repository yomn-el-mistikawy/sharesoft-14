class MapsController < ApplicationController

#gets all startups in the db
#Input : Startup Table
#Output : online Startups
#Author : Alia

def showStartups
	@startups= Startup.all
end

#gets all Investors in the db
#Input : Investors Table
#Output : all Investors
#Author : Alia

def showInvestors
	@investors = Investor.all
end

#gets all Services in the db
#Input : Services Table
#Output : all Services
#Author : Alia

def showServices
	@services = Service.all
end

#gets all merged startups in the db
#Input : Startup Table
#Output : merged Startups
#Author : Alia

def showMerged
	@merged = Startup.where(:joint_ventures != "")
end

#gets all launched startups in the db
#Input : Startup Table
#Output : launched Startups
#Author : Alia

def showLaunched
	@launched = Startup.where(:launched_Status => true)
end

#gets all not yet launched in the db
#Input : Startup Table
#Output : not yet launched Startups
#Author : Alia

def showNotLaunched
	@notlaunched= Startup.where(:launched_Status => false)
end

#gets all online startups in the db
#Input : Startup Table
#Output : online Startups
#Author : Alia

def showOnline
	@online = Startup.where(:online_Status => true)
end

#gets all offline startups in the db
#Input : Startup Table
#Output : onffline Startups
#Author : Alia

def showOffline
	@offline = Startup.where(:online_Status => false)
end

end


