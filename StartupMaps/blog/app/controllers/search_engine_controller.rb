class SearchEngineController < ApplicationController
  def list
  	@groups=Group.search_group(params[:text])
  	@entities=Entity.search_entity(params[:text])
  	@investors=Investor.search_investor(params[:text])
  	@services=Service.search_service(params[:text])
  	@startups=Startup.search_startup(params[:text])
  	
  end

  def index
    
  end
end
