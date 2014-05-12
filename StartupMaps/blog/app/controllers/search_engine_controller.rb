class SearchEngineController < ApplicationController
  def list 
     $name=params[:text]
    @groups=Group.search_group($name)
  	@entities=Entity.search_entity($name)
  	@investors=Investor.search_investor($name)
  	@services=Service.search_service($name)
  	@startups=Startup.search_startup($name)
  	
  end

  def index
   
    end

end
