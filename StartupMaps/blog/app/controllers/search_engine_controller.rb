class SearchEngineController < ApplicationController
  
  # Definition: This method calls the methods search_group, search_entity, search_investors,
  # search_service and search_startup from the models group, entity, investor, service and
  # startup to check the match of search with the name in the text.
  # Input: Text.
  # Output: Search result.
  # Author: Mozdan Ahmed.

  def list 
   $name=params[:text]
   @groups=Group.search_group($name)
   @entities=Entity.search_entity($name)
   @investors=Investor.search_investor($name)
   @services=Service.search_service($name)
   @startups=Startup.search_startup($name)
  	
  end


  # Definition: This method is viewed in the view to show the index to the search engine. 
  # Input: Void.
  # Output: Void.
  # Author: Mozdan Ahmed.

  def index
  end
end
