class ProjectsController < ApplicationController
		end
		    =begin
			this method sends merge request to others startups
			= end
	def sendrequest
		#this is the request reciever project
		@projectR= Project.find(1)
		#this is the request sender reciever
		@projectS= Project.find(2)
		
     	@startupsS_id= @ProjectS.startups_id
    	@startupsR_id= @ProjectR.startups_id
     	@sendRequest= Sendrequest.new(:startupsS_id=>@startups_id, :startupsR_id=>@startups_id, :projectR=>@ProjectR.id, 
	end
end
